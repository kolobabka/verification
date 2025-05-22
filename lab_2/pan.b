	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM p5 */
;
		
	case 3: // STATE 1
		goto R999;

	case 4: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM p4 */
;
		
	case 5: // STATE 1
		goto R999;

	case 6: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM p3 */
;
		;
		;
		
	case 8: // STATE 3
		goto R999;
;
		;
		;
		
	case 10: // STATE 13
		goto R999;

	case 11: // STATE 20
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM p2 */
;
		;
		;
		;
		
	case 14: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM p1 */
;
		;
		;
		;
		
	case 17: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM p0 */
;
		;
		;
		;
		
	case 20: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 21: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 22: // STATE 2
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Controller */
;
		;
		
	case 24: // STATE 2
		;
		now.squirrel_timer = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 26: // STATE 5
		;
		now.squirrel_timer = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 28: // STATE 13
		;
		now.squirrel_present = trpt->bup.oval;
		;
		goto R999;

	case 29: // STATE 16
		;
		now.squirrel_present = trpt->bup.oval;
		;
		goto R999;

	case 30: // STATE 18
		;
		now.squirrel_present = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 32: // STATE 24
		;
		now.food_count = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 34: // STATE 30
		;
		now.refill_timer = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 36: // STATE 33
		;
		now.refill_timer = trpt->bup.oval;
		;
		goto R999;

	case 37: // STATE 34
		;
		now.food_count = trpt->bup.oval;
		;
		goto R999;

	case 38: // STATE 36
		;
		now.refill_timer = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 40: // STATE 42
		;
		now.food_available = trpt->bup.oval;
		;
		goto R999;

	case 41: // STATE 44
		;
		now.food_available = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 43: // STATE 48
		;
		signal_light = trpt->bup.oval;
		;
		goto R999;

	case 44: // STATE 50
		;
		signal_light = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 46: // STATE 54
		;
		feeder_full = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 48: // STATE 56
		;
		feeder_full = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 50: // STATE 62
		;
		now.feed_motor = trpt->bup.oval;
		;
		goto R999;

	case 51: // STATE 64
		;
		now.feed_motor = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 53: // STATE 68
		;
		now.controller_state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 55: // STATE 70
		;
		now.controller_state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 57: // STATE 72
		;
		now.controller_state = trpt->bup.oval;
		;
		goto R999;

	case 58: // STATE 80
		;
		p_restor(II);
		;
		;
		goto R999;
	}

