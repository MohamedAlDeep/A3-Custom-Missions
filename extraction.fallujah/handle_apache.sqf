/* 
_func will be an int of 0, 1 or 2, zero being script initialization, one being to spawn the apache, two being to rearm/refuel/repair
_vehicle will be the vehicle to re-arm/repair/refuel
_object will be the object to add the spawn apache action too
*/
params["_func", "_vehicle", "_object", "_player"];
private ["_markerPos", "_markerDir", "_trigger", "_objsToDelete", "_apache"];

TRA_spawnApache = {
	/* Getting Marker position and direction for apache respawn if needed */
	_markerPos = getMarkerPos "respawn_apache";
	_markerDir = markerDir "respawn_apache";

	/* Getting Trigger and deleting any wrecks within it that may cause death on spawn */
	_trigger = apache_rtb;
	_objsToDelete = vehicles inAreaArray _trigger;

	{
		deleteVehicle _x;
	} forEach _objsToDelete;

	/* 1 second sleep to wait for obj deletion so that the apache has space to spawn */
	sleep 1;

	/* Spawn Apache */
	_apache = "RHS_AH64D_wd" createVehicle [-378.835,9003.1,0];
	_apache setVehiclePosition [_markerPos, [], 0, "FORM"];
	_apache setVectorDir [0, _markerDir, 0];

	_apache addAction [
		"Maintenance",
		{
			params["_target", "_caller"];
			[2, _target, nil, _caller] execVM "handle_apache.sqf";
		},
		nil,
		1.5,
		true,
		false,
		"params['_target']; (_target distance2D (getMarkerPos 'respawn_apache') < 10 && isTouchingGround _target)"
	];
};

TRA_apacheMaintenance = {
	params ["_vehicle", "_player"];

	["Repairing..."] remoteExec ["hint", _player];
	sleep 4;
	_vehicle setFuel 1;
	_vehicle setVehicleAmmo 1;
	_vehicle setDamage 0;
};

TRA_initSpawn = {
	params ["_object"];

	_object addAction [
		"Spawn AH64D",
		{
			params["_target", "_caller"];
			[1] execVM "handle_apache.sqf";
		}
	];
};

if (_func isEqualTo 0) then {
	[_object] call TRA_initSpawn;
};
if (_func isEqualTo 1) then {
	[] spawn TRA_spawnApache;
};
if (_func isEqualTo 2) then {
	[_vehicle, _player] spawn TRA_apacheMaintenance;
};