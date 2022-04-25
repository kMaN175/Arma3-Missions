enableSaving [false, false];
enableSentences false;
enableEnvironment [false, true];
{_x setmarkeralpha 0} forEach (allmapmarkers select {(getmarkertype _x) find "respawn" > -1});
call CLib_fnc_loadModules;
if !(isServer) then {
	null = [] execVM "diary.sqf";					//Diary
};

//disable targets from moving automatically
nopop = true;

//start the main script
_0 = [100,iCenter,iCenter_1,iCenter_2,iCenter_3,iCenter_4,iCenter_5,iCenter_6,iCenter_7,iCenter_8,iCenter_9,iCenter_10,iCenter_11,iCenter_12,iCenter_13,iCenter_14,iCenter_15,iCenter_16] execVM "Scripts\reset.sqf";
//will affect all targets in (X)m area around iCenter
