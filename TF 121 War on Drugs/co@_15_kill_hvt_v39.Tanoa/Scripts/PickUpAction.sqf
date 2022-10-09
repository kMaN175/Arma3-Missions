//	[This,true] execVM "Scripts\PickUpAction.sqf";
//	
//	1. Object, Player or object name.
//	2. Remove action upon use. Remove the action from the scroll list after having used it. True = remove it, False = do not remove it.
//	If added through init line, use: null = [This] execVM "Scripts\PickUpAction.sqf";
//	
//	This adds an action to object or player that allows them to request pickup from NEKY_PickUp
//	
//	Made by NeKo-ArroW

Params ["_Obj","_Remove"];
Private ["_Condition"];

if (isPlayer _Obj) then {_Condition = "_Target isEqualTo Player && Alive _Target && !(_Target getVariable ['NEKY_PickUp_Used',false])"} else {_Condition = "_Target distance _This < 5 && !(_Target getVariable ['NEKY_PickUp_Used',false])"};

_Obj AddAction ["Request Pickup",
{
    Params ["_Target","_Caller","_ID","_Params"];
	_Remove = _Params select 0;
    OpenMap True;
   
//  [side, "heli type classname" (default mid size heli of said side), ["spawn","_pos","_pos","despawn"], (Vulnerable, true or false)] execVM "Scripts\NEKY_PickUp\NEKY_PickUpTrigger.sqf";
    [WEST, "RHS_UH60M_d", ["spawnMarker","_pos","_pos","despawnMarker"], true] execVM "Scripts\NEKY_PickUp\NEKY_PickUpTrigger.sqf";
	
	if (_Remove) then
	{
		if (isPlayer _Target) then
		{
			_Target removeAction _ID;
			_Target setVariable ["NEKY_PickUp_Used",True];
			_Target removeEventHandler ["Respawn",((_Target getVariable "NEKY_PickUp_HasEH") select 2)];
		} else {
			_Target setVariable ["NEKY_PickUp_Used",True,True];
		};
	};
}, [_Remove], 1, false, true, "", _Condition];

// Add a new action when you respawn.
if (isPlayer _Obj && !((_Obj getVariable ["NEKY_PickUp_HasEH",[false,true,0]]) select 0)) then
{
	_EH = _Obj addEventhandler ["Respawn",
	{
		[Player,((Player getVariable "NEKY_PickUp_HasEH") select 1)] execVM "Scripts\PickUpAction.sqf";
	}];
	_Obj setVariable ["NEKY_PickUp_HasEH",[true,_Remove,_EH]];
};