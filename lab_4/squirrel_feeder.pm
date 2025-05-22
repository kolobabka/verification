mdp

const double p_appear = 0.1;
const double p_leave = 0.1;
const double p_fault = 0.05;

global phase : [0..2] init 0;

module phase_controller
  [] (phase=0) -> (phase'=1);
  [] (phase=1) -> (phase'=2);
  [] (phase=2) -> (phase'=0);
endmodule

module squirrel_env
  squirrel_present : [0..1] init 0;
  timer : [0..128] init 0;

  [env] (phase=0 & squirrel_present=0 & timer < 128) ->
    (1-p_appear): (timer'=timer+1) +
    p_appear: (squirrel_present'=1) & (timer'=0);

  [env] (phase=0 & squirrel_present=0 & timer=128) ->
    (squirrel_present'=1) & (timer'=0);

  [env] (phase=0 & squirrel_present=1) ->
    (1-p_leave): true +
    p_leave: (squirrel_present'=0);
endmodule

module sensor
  sensed_present : [0..1] init 0;

  [sense] (phase=1 & squirrel_present=1) ->
    p_fault: (sensed_present'=0) +
    (1-p_fault): (sensed_present'=1);

  [sense] (phase=1 & squirrel_present=0) ->
    p_fault: (sensed_present'=1) +
    (1-p_fault): (sensed_present'=0);
endmodule

module controller
  state : [0..2] init 0; // 0: idle, 1: dispense, 2: wait_empty
  feed_motor : [0..1] init 0;
  signal_light : [0..1] init 0;
  was_fed : [0..1] init 0;

  // Переход к подаче еды
  [ctrl] (phase=2 & state=0 & sensed_present=1) ->
    (state'=1) & (feed_motor'=1) & (was_fed'=0);

  // Остановка подачи, установка was_fed
  [ctrl] (phase=2 & state=1) ->
    (state'=2) & (feed_motor'=0) & (was_fed'=1);

  // Завершение цикла, переход в ожидание
  [ctrl] (phase=2 & state=2 & sensed_present=0) ->
    (state'=0) & (signal_light'=1) & (was_fed'=0);

  // Разрешён только если другие невозможны
  [ctrl] (phase=2 & !(
    (state=0 & sensed_present=1) |
    (state=1) |
    (state=2 & sensed_present=0)
  )) -> true;
endmodule
