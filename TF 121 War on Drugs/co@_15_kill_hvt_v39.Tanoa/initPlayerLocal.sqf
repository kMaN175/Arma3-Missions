// initialize briefing
call compileFinal preprocessFileLineNumbers "briefing.sqf";

// initialize tasks
"obj1" call BIS_fnc_missionTasks;
"obj2" call BIS_fnc_missionTasks;

// Kill HVT
[] spawn {
	uiSleep 5;
	waitUntil {!(alive officer)};
	["obj1", "Succeeded"] call BIS_fnc_taskSetState;
};

// Move to Exfil
[] spawn {
	uiSleep 5;
	waitUntil {{(_x distance (getMarkerPos "obj2") < 25)} count (playableUnits + switchableUnits) > 0};
	["obj2", "Succeeded"] call BIS_fnc_taskSetState;
};
