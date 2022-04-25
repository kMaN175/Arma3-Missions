/*-------
Makes targets pop up at the user's command. Targets go down after being hit,
and return back with user action. Because swivel targets have a different
script assigned to them that works differently from all other targets, 
they are handled separately in the script. If you don't plan
to use swivel targets at all, feel free to delete the corresponding part
of the code.
-------*/

params [["_dist",100,[1]],["_center",player,[objNull]]];					//in params
_targets = nearestObjects [position _center, ["TargetBase"], _dist];	//take all nearby practice targets
if (count _targets < 1) exitWith {
	systemChat "No compatible targets were found.";						//exit if no targets have been found
};
{_x animate ["Terc",0];} forEach _targets;								//get all targets to upright pos
{_x addEventHandler ["HIT", {											//add EH
(_this select 0) animate ["Terc",1];									//if hit, get to the ground
(_this select 0) RemoveEventHandler ["HIT",0];							//remove EH
}
]} forEach _targets;
//systemChat "Ready.";



