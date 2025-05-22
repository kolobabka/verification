#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM p5 */
	case 3: // STATE 1 - _spin_nvr.tmp:60 - [(!(!(food_available)))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][1] = 1;
		if (!( !( !(((int)now.food_available)))))
			continue;
		/* merge: assert(!(!(!(food_available))))(0, 2, 6) */
		reached[7][2] = 1;
		spin_assert( !( !( !(((int)now.food_available)))), " !( !( !(food_available)))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[7][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 4: // STATE 10 - _spin_nvr.tmp:65 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM p4 */
	case 5: // STATE 1 - _spin_nvr.tmp:51 - [(!(!(timeout)))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][1] = 1;
		if (!( !( !(((trpt->tau)&1)))))
			continue;
		/* merge: assert(!(!(!(timeout))))(0, 2, 6) */
		reached[6][2] = 1;
		spin_assert( !( !( !(((trpt->tau)&1)))), " !( !( !(((trpt->tau)&1))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[6][7] = 1;
		;
		_m = 1; goto P999; /* 2 */
	case 6: // STATE 10 - _spin_nvr.tmp:56 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM p3 */
	case 7: // STATE 1 - _spin_nvr.tmp:36 - [((!(!((squirrel_present&&(food_count==0))))&&!((food_count==3))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][1] = 1;
		if (!(( !( !((((int)now.squirrel_present)&&(((int)now.food_count)==0))))&& !((((int)now.food_count)==3)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 3 - _spin_nvr.tmp:37 - [(((!(!((controller_state==dispense)))&&!(!((squirrel_present&&(food_count==0)))))&&!((food_count==3))))] (8:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][3] = 1;
		if (!((( !( !((now.controller_state==4)))&& !( !((((int)now.squirrel_present)&&(((int)now.food_count)==0)))))&& !((((int)now.food_count)==3)))))
			continue;
		/* merge: assert(!(((!(!((controller_state==dispense)))&&!(!((squirrel_present&&(food_count==0)))))&&!((food_count==3)))))(0, 4, 8) */
		reached[5][4] = 1;
		spin_assert( !((( !( !((now.controller_state==4)))&& !( !((((int)now.squirrel_present)&&(((int)now.food_count)==0)))))&& !((((int)now.food_count)==3)))), " !((( !( !((controller_state==4)))&& !( !((squirrel_present&&(food_count==0)))))&& !((food_count==3))))", II, tt, t);
		/* merge: .(goto)(0, 9, 8) */
		reached[5][9] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 9: // STATE 11 - _spin_nvr.tmp:42 - [(!((food_count==3)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported11 = 0;
			if (verbose && !reported11)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported11 = 0;
			if (verbose && !reported11)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][11] = 1;
		if (!( !((((int)now.food_count)==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 13 - _spin_nvr.tmp:43 - [((!(!((controller_state==dispense)))&&!((food_count==3))))] (16:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][13] = 1;
		if (!(( !( !((now.controller_state==4)))&& !((((int)now.food_count)==3)))))
			continue;
		/* merge: assert(!((!(!((controller_state==dispense)))&&!((food_count==3)))))(0, 14, 16) */
		reached[5][14] = 1;
		spin_assert( !(( !( !((now.controller_state==4)))&& !((((int)now.food_count)==3)))), " !(( !( !((controller_state==4)))&& !((food_count==3))))", II, tt, t);
		/* merge: .(goto)(0, 17, 16) */
		reached[5][17] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 11: // STATE 20 - _spin_nvr.tmp:47 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][20] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM p2 */
	case 12: // STATE 1 - _spin_nvr.tmp:25 - [((!(!(!(food_available)))&&!(food_available)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][1] = 1;
		if (!(( !( !( !(((int)now.food_available))))&& !(((int)now.food_available)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 8 - _spin_nvr.tmp:30 - [(!(food_available))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][8] = 1;
		if (!( !(((int)now.food_available))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 13 - _spin_nvr.tmp:32 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM p1 */
	case 15: // STATE 1 - _spin_nvr.tmp:14 - [((!(!(squirrel_present))&&!((controller_state==dispense))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][1] = 1;
		if (!(( !( !(((int)now.squirrel_present)))&& !((now.controller_state==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 8 - _spin_nvr.tmp:19 - [(!((controller_state==dispense)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][8] = 1;
		if (!( !((now.controller_state==4))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 13 - _spin_nvr.tmp:21 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM p0 */
	case 18: // STATE 1 - _spin_nvr.tmp:3 - [(!(squirrel_present))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][1] = 1;
		if (!( !(((int)now.squirrel_present))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 8 - _spin_nvr.tmp:8 - [(!(squirrel_present))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][8] = 1;
		if (!( !(((int)now.squirrel_present))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 13 - _spin_nvr.tmp:10 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 21: // STATE 1 - fix.pml:104 - [(run Controller())] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 2 - fix.pml:105 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Controller */
	case 23: // STATE 1 - fix.pml:24 - [(squirrel_present)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!(((int)now.squirrel_present)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 2 - fix.pml:24 - [squirrel_timer = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.oval = ((int)now.squirrel_timer);
		now.squirrel_timer = 0;
#ifdef VAR_RANGES
		logval("squirrel_timer", ((int)now.squirrel_timer));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 4 - fix.pml:27 - [((squirrel_timer<128))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		if (!((((int)now.squirrel_timer)<128)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 5 - fix.pml:27 - [squirrel_timer = (squirrel_timer+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		(trpt+1)->bup.oval = ((int)now.squirrel_timer);
		now.squirrel_timer = (((int)now.squirrel_timer)+1);
#ifdef VAR_RANGES
		logval("squirrel_timer", ((int)now.squirrel_timer));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 12 - fix.pml:34 - [((squirrel_timer>=128))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		if (!((((int)now.squirrel_timer)>=128)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 13 - fix.pml:34 - [squirrel_present = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		(trpt+1)->bup.oval = ((int)now.squirrel_present);
		now.squirrel_present = 1;
#ifdef VAR_RANGES
		logval("squirrel_present", ((int)now.squirrel_present));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 16 - fix.pml:37 - [squirrel_present = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][16] = 1;
		(trpt+1)->bup.oval = ((int)now.squirrel_present);
		now.squirrel_present = 0;
#ifdef VAR_RANGES
		logval("squirrel_present", ((int)now.squirrel_present));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 18 - fix.pml:38 - [squirrel_present = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		(trpt+1)->bup.oval = ((int)now.squirrel_present);
		now.squirrel_present = 1;
#ifdef VAR_RANGES
		logval("squirrel_present", ((int)now.squirrel_present));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 23 - fix.pml:44 - [(((feed_motor==on)&&(food_count>0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][23] = 1;
		if (!(((now.feed_motor==2)&&(((int)now.food_count)>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 24 - fix.pml:44 - [food_count = (food_count-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][24] = 1;
		(trpt+1)->bup.oval = ((int)now.food_count);
		now.food_count = (((int)now.food_count)-1);
#ifdef VAR_RANGES
		logval("food_count", ((int)now.food_count));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 29 - fix.pml:50 - [(food_available)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][29] = 1;
		if (!(((int)now.food_available)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 30 - fix.pml:50 - [refill_timer = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][30] = 1;
		(trpt+1)->bup.oval = ((int)now.refill_timer);
		now.refill_timer = 0;
#ifdef VAR_RANGES
		logval("refill_timer", ((int)now.refill_timer));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 32 - fix.pml:53 - [((refill_timer>=5))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][32] = 1;
		if (!((((int)now.refill_timer)>=5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 33 - fix.pml:54 - [refill_timer = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][33] = 1;
		(trpt+1)->bup.oval = ((int)now.refill_timer);
		now.refill_timer = 0;
#ifdef VAR_RANGES
		logval("refill_timer", ((int)now.refill_timer));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 34 - fix.pml:55 - [food_count = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][34] = 1;
		(trpt+1)->bup.oval = ((int)now.food_count);
		now.food_count = 3;
#ifdef VAR_RANGES
		logval("food_count", ((int)now.food_count));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 36 - fix.pml:56 - [refill_timer = (refill_timer+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][36] = 1;
		(trpt+1)->bup.oval = ((int)now.refill_timer);
		now.refill_timer = (((int)now.refill_timer)+1);
#ifdef VAR_RANGES
		logval("refill_timer", ((int)now.refill_timer));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 41 - fix.pml:62 - [((food_count>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][41] = 1;
		if (!((((int)now.food_count)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 42 - fix.pml:62 - [food_available = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][42] = 1;
		(trpt+1)->bup.oval = ((int)now.food_available);
		now.food_available = 1;
#ifdef VAR_RANGES
		logval("food_available", ((int)now.food_available));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 44 - fix.pml:63 - [food_available = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][44] = 1;
		(trpt+1)->bup.oval = ((int)now.food_available);
		now.food_available = 0;
#ifdef VAR_RANGES
		logval("food_available", ((int)now.food_available));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 47 - fix.pml:68 - [(((food_count==0)&&!(food_available)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][47] = 1;
		if (!(((((int)now.food_count)==0)&& !(((int)now.food_available)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 48 - fix.pml:68 - [signal_light = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][48] = 1;
		(trpt+1)->bup.oval = ((int)signal_light);
		signal_light = 1;
#ifdef VAR_RANGES
		logval("signal_light", ((int)signal_light));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 50 - fix.pml:69 - [signal_light = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][50] = 1;
		(trpt+1)->bup.oval = ((int)signal_light);
		signal_light = 0;
#ifdef VAR_RANGES
		logval("signal_light", ((int)signal_light));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 53 - fix.pml:74 - [((controller_state==dispense))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][53] = 1;
		if (!((now.controller_state==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 54 - fix.pml:74 - [feeder_full = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][54] = 1;
		(trpt+1)->bup.oval = ((int)feeder_full);
		feeder_full = 1;
#ifdef VAR_RANGES
		logval("feeder_full", ((int)feeder_full));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 55 - fix.pml:75 - [((squirrel_present==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][55] = 1;
		if (!((((int)now.squirrel_present)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 56 - fix.pml:75 - [feeder_full = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][56] = 1;
		(trpt+1)->bup.oval = ((int)feeder_full);
		feeder_full = 0;
#ifdef VAR_RANGES
		logval("feeder_full", ((int)feeder_full));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 61 - fix.pml:81 - [((controller_state==dispense))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][61] = 1;
		if (!((now.controller_state==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 62 - fix.pml:81 - [feed_motor = on] (0:0:1 - 1)
		IfNotBlocked
		reached[0][62] = 1;
		(trpt+1)->bup.oval = now.feed_motor;
		now.feed_motor = 2;
#ifdef VAR_RANGES
		logval("feed_motor", now.feed_motor);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 64 - fix.pml:82 - [feed_motor = off] (0:0:1 - 1)
		IfNotBlocked
		reached[0][64] = 1;
		(trpt+1)->bup.oval = now.feed_motor;
		now.feed_motor = 1;
#ifdef VAR_RANGES
		logval("feed_motor", now.feed_motor);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 67 - fix.pml:87 - [((((controller_state==idle)&&squirrel_present)&&food_available))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][67] = 1;
		if (!((((now.controller_state==5)&&((int)now.squirrel_present))&&((int)now.food_available))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 68 - fix.pml:87 - [controller_state = dispense] (0:0:1 - 1)
		IfNotBlocked
		reached[0][68] = 1;
		(trpt+1)->bup.oval = now.controller_state;
		now.controller_state = 4;
#ifdef VAR_RANGES
		logval("controller_state", now.controller_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 69 - fix.pml:88 - [((controller_state==dispense))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][69] = 1;
		if (!((now.controller_state==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 70 - fix.pml:88 - [controller_state = wait_empty] (0:0:1 - 1)
		IfNotBlocked
		reached[0][70] = 1;
		(trpt+1)->bup.oval = now.controller_state;
		now.controller_state = 3;
#ifdef VAR_RANGES
		logval("controller_state", now.controller_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 71 - fix.pml:89 - [((controller_state==wait_empty))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][71] = 1;
		if (!((now.controller_state==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 72 - fix.pml:89 - [controller_state = idle] (0:0:1 - 1)
		IfNotBlocked
		reached[0][72] = 1;
		(trpt+1)->bup.oval = now.controller_state;
		now.controller_state = 5;
#ifdef VAR_RANGES
		logval("controller_state", now.controller_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 80 - fix.pml:93 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][80] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

