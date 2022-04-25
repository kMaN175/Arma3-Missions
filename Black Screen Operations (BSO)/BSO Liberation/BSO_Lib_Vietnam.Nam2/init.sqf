enableSaving [ false, false ];
enableEnvironment [false, true];

if (isDedicated) then {debug_source = "Server";} else {debug_source = name player;};

[] call compileFinal preprocessFileLineNumbers "scripts\shared\liberation_functions.sqf";
[] call compileFinal preprocessFileLineNumbers "scripts\shared\init_sectors.sqf";
[] call compileFinal preprocessFileLineNumbers "scripts\shared\fetch_params.sqf";
[] call compileFinal preprocessFileLineNumbers "kp_liberation_config.sqf";
[] call compileFinal preprocessFileLineNumbers "presets\init_presets.sqf";

[] execVM "GREUH\scripts\GREUH_activate.sqf";

[] call compileFinal preprocessFileLineNumbers "scripts\shared\init_shared.sqf";

if (isServer) then {
	[] call compileFinal preprocessFileLineNumbers "scripts\server\init_server.sqf";
};

if (!isDedicated && !hasInterface && isMultiplayer) then {
	execVM "scripts\server\offloading\hc_manager.sqf";
};

if (!isDedicated && hasInterface) then {
	waitUntil {alive player};
	if (debug_source != name player) then {debug_source = name player};
	[] call compileFinal preprocessFileLineNumbers "scripts\client\init_client.sqf";
} else {
	setViewDistance 1600;
};
[] spawn
{
  while {true} do
{private ['player','chute'];
	if ( (getPosATL player select 2 > 175) && (vehicle player IsEqualto player) && (alive player)) then
           {
           waitUntil {(position player select 2) <= 175};
           addCamShake [8, 2, 20];
           chute = createVehicle ['Steerable_Parachute_F', position Player, [], 0, 'FLY'];
           chute setPos position player;
           player moveIndriver chute;
           chute allowDamage false;
           };
       sleep 2;
   };
};
// Execute fnc_reviveInit again (by default it executes in postInit)
if ((KP_liberation_bis_revive_mode == 1) && !KP_liberation_ace_med) then {
	[] call bis_fnc_reviveInit;
};

enableSentences false;
{_x setmarkeralpha 0} forEach (allmapmarkers select {(getmarkertype _x) find "respawn" > -1});
call CLib_fnc_loadModules;
if !(isServer) then {
	null = [] execVM "diary.sqf";					//Diary
};