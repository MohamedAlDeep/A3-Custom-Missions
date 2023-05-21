params["_target"];

hint "Charge Set, Fall Back!";
sleep 10;
tree_b_1 hideObjectGlobal true;
tree_b_2 hideObjectGlobal true;
tree_b_3 hideObjectGlobal true;
tree_a_1 hideObjectGlobal false;
tree_a_2 hideObjectGlobal false;
tree_a_3 hideObjectGlobal false;
tree_a_4 hideObjectGlobal false;

createVehicle ["Bo_GBU12_LGB", getPosATL _target, [], 0, "CAN_COLLIDE"];

// this addAction
// [
// 	"Set Charge",	// title
// 	{
// 		params ["_target", "_caller", "_actionId", "_arguments"]; // script
// 		[_target] execVM "breach_roadblock.sqf";
// 	},
// 	nil,		
// 	1.5,		
// 	true,		
// 	true,		
// 	"",			
// 	"true",		
// 	50,			
// 	false,		
// 	"",			
// 	""			
// ];