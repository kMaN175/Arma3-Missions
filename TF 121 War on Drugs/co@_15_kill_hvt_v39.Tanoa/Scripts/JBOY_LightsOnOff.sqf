// *****************************************************
// ** JBOY_LightsOnOff.sqf 
// ** by JohnnyBoy
// ** Use with AI night sentry patrols.  Units will occasionally turn on gun light.  Helps player spot patrols.
// ** Put this in patrol leader's init:
// dummy = [group this, 30, 20] execVM "Scripts\JBOY_LightsOnOff.sqf"; 
// ***********************************************************************************
_grp = _this select 0;
_OffTime = _this select 1;
_OnTime = _this select 2;

if (!isServer)  exitwith {};
WHILE {({alive _x} count (units _grp) > 0)} DO 
{
    sleep (_OffTime + random(10));
    if (!(behaviour leader _grp == "COMBAT")) then
    {
        (leader _grp) enablegunlights "forceOn";
        sleep (_OnTime + random (10));
        (leader _grp)  enablegunlights "forceOff";
    } else {
        (leader _grp)  enablegunlights "AUTO";
    };
};