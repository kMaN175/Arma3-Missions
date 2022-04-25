/*/
File: fn_deltaVD.sqf
Author:

	Quiksilver
	
Last Modified:

	9/04/2018 A3 1.82 by Quiksilver
	
Description:

	Change View Distance
_______________________________________________/*/

scriptName 'QS - Client - Delta VD';
params ['_viewDistanceData','_objectViewDistanceData','_shadowDistanceData',''];
_viewDistanceData params [['_currentVD',-1],['_targetVD',-1],['_incrementVD',10]];
_objectViewDistanceData params [['_currentOD',-1],['_targetOD',-1],['_incrementOD',10]];
_shadowDistanceData params [['_currentSH',-1],['_targetSH',-1],['_incrementSH',1]];
private _helper = 0;
private _increment = 1;
private _difference = 0;
_rampShadow = (!(_currentSH isEqualTo _targetSH));
_rampObject = (!(_currentOD isEqualTo _targetOD));
_rampView = (!(_currentVD isEqualTo _targetVD));
_difference_shadow = _targetSH - _currentSH;
_increment_shadow = _difference_shadow / 100;
private _helper_shadow = _currentSH;
_difference_object = _targetOD - _currentOD;
_increment_object = _difference_object / 100;
private _helper_object = _currentOD;
_difference_view = _targetVD - _currentVD;
_increment_view = _difference_view / 100;
private _helper_view = _currentVD;
uiSleep 0.1;
for '_x' from 0 to 99 step 1 do {
	if (_rampShadow) then {
		_helper_shadow = _currentSH + (_increment_shadow * (_x + 1));
		setShadowDistance _helper_shadow;
	};
	if (_rampObject) then {
		_helper_object = _currentOD + (_increment_object * (_x + 1));
		setObjectViewDistance _helper_object;
	};
	if (_rampView) then {
		_helper_view = _currentVD + (_increment_view * (_x + 1));
		setViewDistance _helper_view;
	};
	uiSleep 0.025;
};
if (_rampShadow) then {
	setShadowDistance _targetSH;
};
if (_rampObject) then {
	setObjectViewDistance _targetOD;
};
if (_rampView) then {
	setViewDistance _targetVD;
};