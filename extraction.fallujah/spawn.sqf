// Spawn.sqf

if(triggerActivated trigger2) then{
	hint "There is a vehicle in service";
};
if(triggerActivated trigger2 isEqualTo false) then{
	hint "Vehicle spawned";
	_vehicle = "RHS_AH64D_wd" createVehicle getMarkerPos "spawn_marker" ;
	_vehicle setVehicleVarName "apache";
};