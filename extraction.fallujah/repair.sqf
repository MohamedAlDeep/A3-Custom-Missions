//repair.sqf
_repairFnc = {
	
	_this setDamage [0, false];
	_this setFuel 1;
	_this setVehicleAmmo 1;
	
};
apache call _repairFnc;