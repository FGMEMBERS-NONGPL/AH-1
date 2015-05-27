# Gun Firing Sequence

fire_gun = func
 {
 if getprop("sim/model/livery/military", true)
  {
  setprop("sim/model/AH-1/weapons/gun/fire", 1);
 }
stop_gun = func
 {
 setprop("sim/model/AH-1/weapons/gun/fire", 0);
 }
