null = [] execvm "placement.sqf";

["title.jpg", false, [10,10], 1, [1,3], 1] spawn BIS_fnc_textTiles;

playSound "HS1";

sleep 3;

playSound "Welcome";