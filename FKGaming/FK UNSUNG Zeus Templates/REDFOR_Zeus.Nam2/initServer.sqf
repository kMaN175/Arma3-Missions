[{
    private _admin = (allPlayers select {(admin (owner _x)) > 0});
    CurrentAdmin = if (_admin isEqualTo []) then { objNull } else { _admin select 0 };
    publicVariable "CurrentAdmin";
} , 5] call CBA_fnc_addPerFrameHandler;

[{
    ServerMin = diag_fpsMin;
    if (FKF_Zeus_FrameStatusIsRunning) then {
        publicVariable "ServerMin";
    };
} , 2] call CBA_fnc_addPerFrameHandler;
