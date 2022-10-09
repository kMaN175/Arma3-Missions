case "obj1": {
	if (_taskState == "") then {
		[
			west,			// task owner
			_taskID,	// task name
			[
				"PID Maj Demi's location and eliminate him. <img image='images\officer.jpg' width='256' height='256'/>",
				"Kill the HVT",
				"MARKER"
			],
			(getMarkerPos "obj1"),  //position of the objective
			true,			// true to set as current
			4,				// task priority
			true,			// notification
			"kill",		// icon
			false			// sharing
		] call BIS_fnc_taskCreate;
	}
	else {
		if (_this == "Current") then {_taskID call BIS_fnc_taskSetCurrent} else {[_taskID, _this] call BIS_fnc_taskSetState}
	}
};

case "obj2": {
	if (_taskState == "") then {
		[
			west,
			_taskID,
			[
				"Move to exfil once you have killed the HVT. <img image='images\boat.jpg' width='367' height='256'/>",
				"Move to Exfil",
				"MARKER"
			],
			(getMarkerPos "obj2"),	 //position of the objective
			false,
			3,
			true,
			"navigate",  // you can also use "move" if you want. looks pretty standard.
			false
		] call BIS_fnc_taskCreate;
	}
	else {
		if (_this == "Current") then {_taskID call BIS_fnc_taskSetCurrent} else {[_taskID, _this] call BIS_fnc_taskSetState}
	}
};
