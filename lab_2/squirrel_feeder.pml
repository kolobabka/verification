#define MAX_FOOD 3
#define MAX_SQUIRREL_ABSENCE 128

bit squirrel_present = 0;
byte food_count = MAX_FOOD;
bit food_available = 1;
bit feeder_full = 0;

bit signal_light = 0;
byte refill_timer = 0;
byte squirrel_timer = 0;

mtype = { on, off };
mtype feed_motor = off;

mtype = { idle, dispense, wait_empty };
mtype controller_state = idle;

proctype Controller() {
    do
    :: 
        if
        :: squirrel_present -> squirrel_timer = 0;
        :: else ->
            if
            :: squirrel_timer < MAX_SQUIRREL_ABSENCE -> squirrel_timer++;
            :: else -> skip;
            fi;
        fi;

        if
        :: squirrel_timer >= MAX_SQUIRREL_ABSENCE -> squirrel_present = 1;
        :: else ->
            if
            :: true -> squirrel_present = 0;
            :: true -> squirrel_present = 1;
            fi;
        fi;

        if
        :: feed_motor == on && food_count > 0 -> food_count--;
        :: else -> skip; 
        fi;

        if
        :: food_available -> refill_timer = 0;
        :: refill_timer < 5 -> refill_timer++;
        :: else ->
            refill_timer = 0;
            food_count = MAX_FOOD;
        fi;

        if
        :: food_count > 0 -> food_available = 1;
        :: else -> 
	    food_available = 0;
        fi;

        if
        :: food_count == 0 && !food_available -> signal_light = 1;
        :: else -> skip;
        fi;

        if
        :: controller_state == dispense -> feeder_full = 1;
        :: squirrel_present == 0 -> feeder_full = 0;
        :: else -> skip;
        fi;

        if
        :: controller_state == dispense -> feed_motor = on;
        :: else -> feed_motor = off;
        fi;

        if
        :: controller_state == idle && squirrel_present && food_available -> controller_state = dispense;
        :: controller_state == dispense -> controller_state = wait_empty;
        :: controller_state == wait_empty -> controller_state = idle;
        :: else -> skip;
        fi;
    od;
}

ltl p0 { []<>(squirrel_present) }
ltl p1 { [](squirrel_present -> <> (controller_state == dispense)) }
ltl p2 { []( !food_available -> <> food_available ) }
ltl p3 { [] ( (squirrel_present && food_count == 0) -> 
              (! (controller_state == dispense) U (food_count == MAX_FOOD)) ) }

init {
    run Controller();
}

