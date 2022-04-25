disableSerialization;
private _display = _this select 0;

[_display] spawn {
    disableSerialization;
    params ["_display"];

    private _staff = FKF_Common_AllAdmins;
    private _CURRENT_ADMIN = _display displayCtrl 6910;
    private _STAFF_ONLINE = _display displayCtrl 6911;
    private _PLAYER_COUNT = _display displayCtrl 6912;
    private _PLAYER_LIST = _display displayCtrl 6918;

    waitUntil {uiNamespace getVariable ["PlayerLoopDone", true]};
    uiNamespace setVariable ["PlayerLoopDone", false];

    while {!isNull _display} do {
        lbClear _PLAYER_LIST;
        lbClear _STAFF_ONLINE;
        _PLAYER_COUNT ctrlSetText (str ({
            _PLAYER_LIST lbAdd (name _x);
            if ((getPlayerUID _x) in _staff) then { _STAFF_ONLINE lbAdd (name _x) };
            true
        } count allPlayers));
        if (isNil "CurrentAdmin" || {isNull CurrentAdmin}) then {
            _CURRENT_ADMIN ctrlSetText "None";
        } else {
            _CURRENT_ADMIN ctrlSetText (name CurrentAdmin);
        };
        uisleep 5;
    };

    uiNamespace setVariable ["PlayerLoopDone", true];
};

[_display] spawn {
    disableSerialization;
    params ["_display"];

    private _SERVER_FPS = _display displayCtrl 6914;
    private _AI_COUNT = _display displayCtrl 6915;
    private _OBJECT_COUNT = _display displayCtrl 6916;
    private _SERVER_MIN = _display displayCtrl 6917;

    waitUntil {uiNamespace getVariable ["StatLoopDone", true]};
    uiNamespace setVariable ["StatLoopDone", false];
    player setVariable ["FKF_Zeus_FrameStatusIsRunning", true, true];
    waitUntil {!isNil "FKF_Zeus_serverFPS" && !isNil "ServerMin"};

    while {!isNull _display} do {
        _SERVER_FPS ctrlSetText str FKF_Zeus_serverFPS;
        _SERVER_MIN ctrlSetText str ServerMin;
        _OBJECT_COUNT ctrlSetText str (count allMissionObjects "All");
        _AI_COUNT ctrlSetText str ({!isPlayer _x} count allUnits);
        uisleep 2;
    };

    player setVariable ["FKF_Zeus_FrameStatusIsRunning", false, true];
    uiNamespace setVariable ["StatLoopDone", true];
};

[_display] spawn {
    disableSerialization;
    params ["_display"];

    private _MISSION_TIME = _display displayCtrl 6913;

    waitUntil {uiNamespace getVariable ["TimeLoopDone", true]};
    uiNamespace setVariable ["TimeLoopDone", false];

    while {!isNull _display} do {
        _MISSION_TIME ctrlSetText ([CBA_missionTime] call FKF_Common_fnc_secondsToString);
        uisleep 0.5;
    };

    uiNamespace setVariable ["TimeLoopDone", true];
};
