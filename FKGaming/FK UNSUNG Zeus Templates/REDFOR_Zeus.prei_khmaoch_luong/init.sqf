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
