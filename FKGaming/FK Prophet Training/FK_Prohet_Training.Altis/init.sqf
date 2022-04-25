[{CBA_missionTime > 0}, {
    enableSaving [false, false];
    enableEnvironment [false, true];
    enableSentences false;
}] call CBA_fnc_waitUntilAndExecute;

call CLib_fnc_loadModules;

if (getMarkerColor "respawn" != "") then {
    private _rspMkr = createMarkerLocal ["mrk_respawn_inf", getMarkerPos "respawn"];
    _rspMkr setMarkerTypeLocal "respawn_inf";
    _rspMkr setMarkerSizeLocal [0.75, 0.75];
    _rspMkr setMarkerColorLocal "Default";
    _rspMkr setMarkerTextLocal "";
    _rspMkr setMarkerAlphaLocal 0.9;

    "respawn" setMarkerAlpha 0;
};

//disable targets from moving automatically
nopop = true;

//start the main script
_0 = [100,iCenter_1,iCenter_2,iCenter_3,iCenter_4,iCenter_5,iCenter_6,iCenter_7,iCenter_8,iCenter_9,iCenter_10,iCenter_11,iCenter_12,iCenter_13,iCenter_14,iCenter_15,iCenter_16,iCenter_17,iCenter_18,iCenter_19,iCenter_20,iCenter_21] execVM "Scripts\reset.sqf";
//will affect all targets in (X)m area around iCenter