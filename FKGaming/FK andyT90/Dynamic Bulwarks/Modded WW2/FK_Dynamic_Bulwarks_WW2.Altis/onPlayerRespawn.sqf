waitUntil {!isNil "bulwarkBox"};
["Terminate"] call BIS_fnc_EGSpectator;
player setVariable ["buildItemHeld", false];

//Make player immune to fall damage / immune to all damage while incapacitated / immune with a medikit
player addEventHandler ["HandleDamage", {
  _beingRevived = player getVariable "RevByMedikit";
  TEAM_DAMAGE = missionNamespace getVariable "TEAM_DAMAGE";
  _incDamage = _this select 2;
  _playerItems = items player;
  _players = allPlayers;
  if ((_this select 4) == "" || lifeState player == "INCAPACITATED" || _beingRevived || ((_this select 3) in _players && !TEAM_DAMAGE && !((_this select 3) isEqualTo player))) then {
      0
  } else {
    if (_incDamage >= 0.9) then {
      _playerItems = items player;
      if ("Medikit" in _playerItems) then {
        player removeItem "Medikit";
        player setVariable ["RevByMedikit", true, true];
        player playActionNow "agonyStart";
        player playAction "agonyStop";
        player setDamage 0;
        [player] remoteExec ["bulwark_fnc_revivePlayer", 2];
        0;
      };
    } else {
      _this call bis_fnc_reviveEhHandleDamage;
    };
  };
}];

//delete empty continers
[player, ['Take', {
  params ['_unit', '_container', '_item'];
  [_container] remoteExecCall ["loot_fnc_deleteIfEmpty", 2];
}]] remoteExec ['addEventHandler', 0, true];

_player = _this select 0;
removeHeadgear _player;
removeGoggles _player;
removeVest _player;
removeBackpack _player;
removeAllWeapons _player;
removeAllAssignedItems _player;
_player setPosASL ([bulwarkBox] call bulwark_fnc_findPlaceAround);

if(PLAYER_STARTWEAPON) then {
    _player addMagazine "LIB_6Rnd_455";
    _player addMagazine "LIB_6Rnd_455";
    _player addWeapon "LIB_Webley_mk6";
};

if(PLAYER_STARTMAP) then {
    _player addItem "ItemMap";
    _player assignItem "ItemMap";
    _player linkItem "ItemMap";
};

if(PLAYER_STARTRADIO) then {   
    _player addItem "ItemRadio";
    _player assignItem "ItemRadio";
    _player linkItem "ItemMapRadio";
};

if(PLAYER_STARTCOMPASS) then {
    _player addItem "ItemCompass";
    _player assignItem "ItemCompass";
    _player linkItem "ItemCompass";
};

if(PLAYER_STARTNVG) then {
    _player addItem "Integrated_NVG_F";
    _player assignItem "Integrated_NVG_F";
    _player linkItem "Integrated_NVG_F";
};

waituntil {alive _player};

[] remoteExec ["killPoints_fnc_updateHud", 0];
