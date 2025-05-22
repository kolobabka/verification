--------------------------- MODULE squirrel_feeder ---------------------------

EXTENDS Naturals, TLC

VARIABLES
  squirrel_present,      \* boolean
  feed_motor,            \* "on" or "off"
  signal_light,          \* boolean
  controller_state,      \* "idle", "dispense", "wait_empty"
  squirrel_timer,        \* 0..128
  was_fed                \* boolean

\* --- Initial states ---

Init ==
  /\ squirrel_present = FALSE
  /\ feed_motor = "off"
  /\ signal_light = FALSE
  /\ controller_state = "idle"
  /\ squirrel_timer = 0
  /\ was_fed = FALSE

\* --- Next-state relation ---

Next ==
  LET
    next_squirrel_timer ==
      IF squirrel_present \/ (squirrel_timer = 128) THEN 0
      ELSE IF squirrel_timer = 128 THEN 128
      ELSE squirrel_timer + 1

    next_squirrel_present ==
      IF was_fed THEN {FALSE}
      ELSE IF next_squirrel_timer = 128 THEN {TRUE}
      ELSE {TRUE, FALSE}

    next_controller_state ==
      IF controller_state = "idle" /\ squirrel_present' THEN "dispense"
      ELSE IF controller_state = "dispense" THEN "wait_empty"
      ELSE IF controller_state = "wait_empty" /\ ~squirrel_present' THEN "idle"
      ELSE controller_state

    next_was_fed ==
      IF controller_state' = "dispense" THEN TRUE
      ELSE FALSE

    next_feed_motor ==
      IF next_controller_state = "dispense" THEN "on"
      ELSE "off"

    next_signal_light ==
      IF was_fed THEN TRUE
      ELSE FALSE
  IN
    /\ squirrel_timer' = next_squirrel_timer
    /\ squirrel_present' \in next_squirrel_present
    /\ feed_motor' = next_feed_motor
    /\ signal_light' = next_signal_light
    /\ controller_state' = next_controller_state
    /\ was_fed' = next_was_fed

\* --- Type invariants ---

TypeInvariant ==
  /\ squirrel_present \in BOOLEAN
  /\ feed_motor \in {"on", "off"}
  /\ signal_light \in BOOLEAN
  /\ controller_state \in {"idle", "dispense", "wait_empty"}
  /\ squirrel_timer \in 0..128

\* --- Specification ---

Spec == Init /\ [][Next]_<<squirrel_timer, squirrel_present, feed_motor, signal_light, controller_state, was_fed>>

LivenessConstraint == [](<>squirrel_present)

LTL_full == LivenessConstraint => [](squirrel_present => <>(controller_state = "dispense" \/ controller_state = "wait_empty"))

==============================================================================
