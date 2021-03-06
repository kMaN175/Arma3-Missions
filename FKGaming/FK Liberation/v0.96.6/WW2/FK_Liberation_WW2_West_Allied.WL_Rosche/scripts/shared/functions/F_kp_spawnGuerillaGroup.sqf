/*
F_kp_spawnGuerillaGroups.sqf
Author: Wyqer
Website: www.killahpotatoes.de
Date: 2017-10-08

Description:
Spawns a group of guerilla units with random gear depending on guerilla strength

Parameters:
_this select 0 - POSITION - Position where to spawn the group

Return:
GROUP
*/

params ["_pos", ["_amount", 0]];

private _grp = createGroup [GRLIB_side_resistance, true];
private _tier = [] call F_getResistanceTier;
private _cr_multi = [] call F_cr_getMulti;
if (_amount == 0) then {_amount = (6 + (round (random _cr_multi)) + (round (random _tier)));};
private _weapons = missionNamespace getVariable ("KP_liberation_guerilla_weapons_" + str _tier);
private _uniforms = missionNamespace getVariable ("KP_liberation_guerilla_uniforms_" + str _tier);
private _vests = missionNamespace getVariable ("KP_liberation_guerilla_vests_" + str _tier);
private _headgear = missionNamespace getVariable ("KP_liberation_guerilla_headgear_" + str _tier);
private _units = [];

while {(count (units _grp) < _amount)} do {
	private _unit = _grp createUnit [(selectRandom KP_liberation_guerilla_units), _pos, [], 5, "NONE"];
	_unit addMPEventHandler ["MPKilled", {_this spawn kill_manager}];
	private _weapon = selectRandom _weapons;

	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;

	_unit forceAddUniform (selectRandom _uniforms);
	_unit addItemToUniform "FirstAidKit";
	_unit addItemToUniform "LIB_F1";
	_unit addVest (selectRandom _vests);
	for "_i" from 1 to (_weapon select 2) do {_unit addItemToVest (_weapon select 1);};
	_unit addHeadgear (selectRandom _headgear);
	if (_tier > 1) then {
		_unit addGoggles (selectRandom KP_liberation_guerilla_facegear);
	};

	_unit addWeapon (_weapon select 0);
	_unit addPrimaryWeaponItem (_weapon select 3);
	_unit addPrimaryWeaponItem (_weapon select 4);

	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";

	if ((_tier > 1) && ((random 100) <= KP_liberation_resistance_at_chance)) then {
		_unit addBackpack "B_LIB_SOV_RA_Rucksack_Vide";
		//_unit addItemToBackpack "LIB_Rpg6";
		_unit addWeapon "fow_w_m1a1_bazooka";
		_unit addItemToBackpack "fow_1Rnd_m6a1";
		_unit addItemToBackpack "fow_1Rnd_m6a1";
	};
	_units pushBack _unit;
};

// make sure units are of the correct side
private _group = createGroup [GRLIB_side_resistance, true];
_units joinSilent _group;

_group
