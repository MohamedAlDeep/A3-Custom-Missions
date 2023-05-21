[ 
	this, 
	"Attempt Defusal", 
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_secure_ca.paa", 
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_secure_ca.paa", 
	"_this distance _target < 3", 
	"_caller distance _target < 3", 
	{ 
		params ["_target", "_caller", "_actionId", "_arguments"]; 
		format["%1 has begun defusing, protect him!", _caller] remoteExec ["hint", -2];
		StartEnemyWaves = true;
		publicVariable 'StartEnemyWaves';
	}, 
	{}, 
	{ 
		params ["_target", "_caller", "_actionId", "_arguments"]; 
		[getPosASL _caller, 100, false, [true, true, true, true, true, true, true, true, true, true], 1] spawn freestylesNuclearBlast_fnc_initBlast; 
	}, 
	{ 
		params ["_target", "_caller", "_actionId", "_arguments"]; 
		format["%1 stopped defusing, get back on it!", _caller] remoteExec ["hint", -2]; 
	}, 
	[], 
	120, 
	0, 
	true, 
	false 
] remoteExec ["BIS_fnc_holdActionAdd", 0, this];

[
	this,
	"Attempt Defusal",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_secure_ca.paa", 
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_secure_ca.paa", 
	"_this distance _target < 3", 
	"_caller distance _target < 3", 
	{ 
		params ["_target", "_caller", "_actionId", "_arguments"]; 
		format["%1 has begun defusing, protect him!", _caller] remoteExec ["hint", -2];
		StartEnemyWaves = true;
		publicVariable 'StartEnemyWaves';
	}, 
	{}, 
	{ 
		params ["_target", "_caller", "_actionId", "_arguments"]; 
		[getPosASL _caller, 100, false, [true, true, true, true, true, true, true, true, true, true], 1] spawn freestylesNuclearBlast_fnc_initBlast; 
	}, 
	{ 
		params ["_target", "_caller", "_actionId", "_arguments"]; 
		format["%1 stopped defusing, get back on it!", _caller] remoteExec ["hint", -2]; 
	}, 
	[], 120, nil, true, false
] call BIS_fnc_holdActionAdd;