enableSaving [false, false];
enableSentences false;
enableEnvironment [false, true];
{_x setmarkeralpha 0} forEach (allmapmarkers select {(getmarkertype _x) find "respawn" > -1});
call CLib_fnc_loadModules;
