// *****************************************************
// ** JBOY_PatrolChatter.sqf 
// ** by JohnnyBoy
// ** Use with AI patrols.  Group leader will ocassionally give an audible command to a subordinate.  Helps player sense enemy patrols
// ** at night or in dense forests.  
// ** Put this in patrol leader's init:
// dummy = [group this, 50] execVM "Scripts\JBOY_PatrolChatter.sqf"; 
// ***********************************************************************************
if (!isServer)  exitwith {};
_grp = _this select 0;
_interval = _this select 1;
WHILE {({alive _x} count (units _grp) > 1) } DO 
{
    if (!(behaviour leader _grp == "COMBAT")) then
    {
        // patrol leader periodically issues audible command.  Helps enemy players
        // hear an ai patrol moving at night or heavy fog.
        // You could also add in CASE statement hear to ocasionally say something:  cough, sneeze, complain, whatever
       (units _grp select 1) commandMove getpos (units _grp select 1);
    };
   sleep _interval + random(10);
};