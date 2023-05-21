// this addEventHandler ["HandleDamage", {
// 	params ["_unit", "_selection", "_damage", "_source", "_projectile", "_hitIndex", "_instigator", "_hitPoint", "_directHit"];
// 	systemChat (str _selection);
// 	if (_selection isEqualTo "engine") then {
// 		_damage = 0;
// 	};

// 	_damage
// }];

[] spawn {
  while {true} do {
    {
      _x setVariable ["lambs_danger_disableGroupAI",true];
	  _x setDamage 0;
	  _x call ace_medical_treatment_fnc_fullHealLocal;
     } forEach (allUnits select {side _x == WEST && !(isPlayer _x)});
    uiSleep 1;
  };
};