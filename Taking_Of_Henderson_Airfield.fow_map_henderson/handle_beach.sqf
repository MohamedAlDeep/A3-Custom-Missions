getMissionLayerEntities "Landing_Group" params ["_objects", "_markers"];
_objects apply {
	_x disableAI "PATH";
	_x setSkill ["aimingSpeed", 0.25];
	_x setSkill ["aimingAccuracy", 0.25];
	_x setSkill ["aimingShake", 0.25];
	_x setVehicleLock "LOCKED";
};
