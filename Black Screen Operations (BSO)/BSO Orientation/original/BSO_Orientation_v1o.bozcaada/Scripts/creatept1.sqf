{if ((typeOf _x == 'B_G_Survivor_F') && (!isPlayer _x)) then {deleteVehicle _x}} forEach allUnits;

[MedicalData1,3] call BIS_fnc_dataTerminalAnimate;  //activates the animation for opening the terminal.
sleep 5;

_group1=createGroup west;

'B_G_Survivor_F' createUnit [getmarkerPos 'Patient1', _group1,'pat1=this; dostop pat1'];

[pat1, selectRandom[0.3,0.5,0.7,0.9], "leg_r", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[pat1, selectRandom[0.3,0.5,0.7,0.9], "leg_l", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[pat1, selectRandom[0.3,0.5,0.7,0.9], "body", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[pat1, selectRandom[0.3,0.5,0.7,0.9], "head", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[pat1, selectRandom[0.3,0.5,0.7,0.9], "hand_r", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[pat1, selectRandom[0.3,0.5,0.7,0.9], "hand_l", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;

[pat1] call ace_medical_fnc_handleDamage_advancedSetDamage;

[MedicalData1,0] call BIS_fnc_dataTerminalAnimate;  //activates the animation for closing the terminal.

hint 'Your patient is ready';


//the first selctrandom chooses a random damage from a small one to a large one, the second selectrandom chooses the type of damage.