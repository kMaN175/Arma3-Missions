/*
File: fn_setCollectible.sqf
Author:

	Quiksilver
	
Last Modified:

	23/04/2019 A3 1.90 by Quiksilver
	
Description:

	-
_____________________________________________________*/

private ['_unit','_r'];
_unit = _this # 0;
_r = random 1;
if (_r > 0.333) then {
	//_unit setVariable ['QS_collectible_ears',TRUE,TRUE];
	//_unit setVariable ['QS_ears_remaining',2,TRUE];
};
if ((_r > 0.45) && (_r < 0.55)) then {
	_unit setVariable ['QS_collectible_tooth',TRUE,TRUE];
};
_unit setVariable ['QS_surrenderable',TRUE,TRUE];
TRUE;