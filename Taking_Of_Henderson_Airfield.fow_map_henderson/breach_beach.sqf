params["_target"];

sleep 10;
trench_destroy_1 hideObjectGlobal false;
trench_destroy_2 hideObjectGlobal false;
trench_destroy_3 hideObjectGlobal true;
wire_destroy_1 hideObjectGlobal true;
wire_destroy_2 hideObjectGlobal true;
wire_destroy_3 hideObjectGlobal true;

createVehicle ["Bo_GBU12_LGB", getPosATL _target, [], 0, "CAN_COLLIDE"];

// this addAction
// [
// 	"Set Charge",	// title
// 	{
// 		params ["_target", "_caller", "_actionId", "_arguments"]; // script
// 		[_target] execVM "breach_beach.sqf";
// 	},
// 	nil,		// arguments
// 	1.5,		// priority
// 	true,		// showWindow
// 	true,		// hideOnUse
// 	"",			// shortcut
// 	"true",		// condition
// 	50,			// radius
// 	false,		// unconscious
// 	"",			// selection
// 	""			// memoryPoint
// ];