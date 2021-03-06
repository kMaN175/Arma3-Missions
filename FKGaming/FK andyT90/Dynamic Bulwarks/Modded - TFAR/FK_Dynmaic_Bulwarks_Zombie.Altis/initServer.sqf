["<t size = '.5'>Loading lists.<br/>Please wait...</t>", 0, 0, 10, 0] remoteExec ["BIS_fnc_dynamicText", 0];
_hLocation = [] execVM "locationLists.sqf";
_hLoot     = [] execVM "loot\lists.sqf";
_hHostiles = [] execVM "hostiles\lists.sqf";
waitUntil {
    scriptDone _hLocation &&
    scriptDone _hLoot &&
    scriptDone _hHostiles
};
_hConfig   = [] execVM "editMe.sqf";
waitUntil { scriptDone _hConfig };

["<t size = '.5'>Creating Base...</t>", 0, 0, 30, 0] remoteExec ["BIS_fnc_dynamicText", 0];
_basepoint = [] execVM "bulwark\createBase.sqf";
waitUntil { scriptDone _basepoint };

["<t size = '.5'>Ready</t>", 0, 0, 0.5, 0] remoteExec ["BIS_fnc_dynamicText", 0];

publicVariable "bulwarkBox";
publicVariable "PARATROOP_CLASS";
publicVariable "BULWARK_SUPPORTITEMS";
publicVariable "BULWARK_BUILDITEMS";
publicVariable "PLAYER_STARTWEAPON";
publicVariable "PLAYER_STARTMAP";
publicVariable "PLAYER_STARTCOMPASS";
publicVariable "PLAYER_STARTNVG";
publicVariable "DOWN_TIME";
publicVariable "RESPAWN_TICKETS";
publicVariable "RESPAWN_TIME";
PLAYER_OBJECT_LIST = [];
publicVariable "PLAYER_OBJECT_LIST";
publicVariable "MIND_CONTROLLED_AI";
publicVariable "SCORE_RANDOMBOX";

//determine if Support Menu is available
_supportParam = ("SUPPORT_MENU" call BIS_fnc_getParamValue);
if (_supportParam == 0) then {
  SUPPORTMENU = false;
}else{
  SUPPORTMENU = true;
};
publicVariable 'SUPPORTMENU';

_dayTimeHours = DAY_TIME_TO - DAY_TIME_FROM;
_randTime = floor random _dayTimeHours;
_timeToSet = DAY_TIME_FROM + _randTime;
setDate [2018, 7, 1, _timeToSet, 0];

[] execVM "revivePlayers.sqf";
[bulwarkRoomPos] execVM "missionLoop.sqf";

[] execVM "area\areaEnforcement.sqf";
//[] execVM "hostiles\clearStuck.sqf";
[] execVM "hostiles\solidObjects.sqf";
[] execVM "hostiles\moveHosToPlayer.sqf";
