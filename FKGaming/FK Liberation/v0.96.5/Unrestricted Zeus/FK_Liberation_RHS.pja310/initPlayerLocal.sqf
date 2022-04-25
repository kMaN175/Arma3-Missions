[{!isNull player}, {
    [] execVM "diary.sqf";
    private _allowed = FKF_Common_AllAdmins;
    if ((getPlayerUID player) in _allowed) then {
        private _action = ["Admin Menu", "Admin Menu", "", {createDialog "RscAdminMenu"}, {true}] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;
    };
}] call CBA_fnc_waitUntilAndExecute;
