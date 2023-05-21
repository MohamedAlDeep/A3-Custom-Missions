


//________________  Author : [GR]GEORGE F ___________ 27.04.18 _____________

/*
________________ GF Cleanup Script ________________

https://forums.bohemia.net/forums/topic/216359-gf-cleanup-script/

Please keep the Credits or add them to your Diary

https://community.bistudio.com/wiki/SQF_syntax
Don't try to open this with the simple notepad.
For everything that is with comment  //  in front  or between /* 
means that it is disabled , so there is no need to delete the extra lines. 

You can open this ex:
with notepad++
https://notepad-plus-plus.org/

and also use the extra pluggins
(this way will be better , it will give also some certain collours to be able to detect ex. problems )
http://www.armaholic.com/page.php?id=8680

or use any other program for editing .

For the Compilation List of my GF Scripts , you can search in:
https://forums.bohemia.net/forums/topic/215850-compilation-list-of-my-gf-scripts/
*/


if (!isServer) exitWith {};

diag_log "//________________ GF Cleanup Script _____________";


//________________ GF Cleanup Script _____________


//________________ Settings _____________
//________________ Set true to delete or false  _____________

_1_Blood_Stains					= true; 
_2_particlesource  				= true; 
_3_Dead 					 	= true;            
_4_Mines 						= true;           
_5_Ruins 						= true;           
_6_Craters 						= true; 		  
_7_Dropped_Items 				= true;
_8_Static_Weapon				= false;
_9_Empty_Groups 				= true;             
_10_Empty_Vehicles				= false;
_11_Vehicle_Wrecks				= true;
_11_emptyDetector_MP_triggers 	= false;



while {true} do {
		
		sleep 300;	//set the time , in how many second to delete again
		diag_log "[GFC] Cleanup Started";
		
	
		if (_1_Blood_Stains) then {
			// This is for my new upcoming script Blood Stains , you can add here any item that you want to be deleted	
			diag_log "[GFC] Cleaning Bloodstains";

			{deleteVehicle _x} count ((allMissionObjects "BloodSplatter_01_Large_New_F")+
			(allMissionObjects "BloodSplatter_01_Medium_New_F")+
			(allMissionObjects "BloodSplatter_01_Small_New_F")+
			(allMissionObjects "BloodSpray_01_New_F")+
			(allMissionObjects "BloodPool_01_Large_New_F")+
			(allMissionObjects "BloodPool_01_Medium_New_F")+
			(allMissionObjects "BloodTrail_01_New_F")+
			(allMissionObjects "UserTexture1m_F")+
			(allMissionObjects "UserTexture_1x2_F"));
			sleep 1;
		};
	 
		
		if (_2_particlesource) then {
			diag_log "[GFC] Cleaning Particle Sources";
			{deleteVehicle _x;} forEach(allMissionObjects "#particlesource"); 
			sleep 1;
		};
	 
		
		if (_3_Dead) then { 
			diag_log "[GFC] Cleaning allDead";
			{_x deleteVehicleCrew _x;} count allDead;
			sleep 1;
		};
	 
	 
		if (_4_Mines) then { 
			diag_log "[GFC] Cleaning Mines";
			{ deleteVehicle _x } forEach allMines;
			sleep 1;
		};
	
	
		if (_5_Ruins) then { 
			diag_log "[GFC] Cleaning Ruins";
			{ deleteVehicle _x } forEach (allMissionObjects "ruins");
			sleep 1;
		};
	
	
		if (_6_Craters) then {
			diag_log "[GFC] Cleaning Craters";
			{deleteVehicle _x } forEach ((allMissionObjects "Crater")+
			(allMissionObjects "CraterLong")+
			(allMissionObjects "CraterLong_small"));
			sleep 1;
		};
	
	
		if (_7_Dropped_Items) then { 
			diag_log "[GFC] Cleaning Dropped Items";
			{deleteVehicle _x } forEach (allMissionObjects "WeaponHolder");
			//"groundWeaponHolder" 	"WeaponHolderSimulated"
			sleep 1;
		};
	
	
		if (_8_Static_Weapon) then { 
			diag_log "[GFC] Cleaning Static Weapons";
			{ deleteVehicle _x } forEach (allMissionObjects "staticWeapon");
			sleep 1;
		};
	
	
		if (_9_Empty_Groups) then { 
			diag_log "[GFC] Cleaning Empty Groups";
			{if ((count units _x) isEqualTo 0) then {deleteGroup _x}} count allGroups;
			sleep 1;
		};

		if (_10_Empty_Vehicles) then { 
			diag_log "[GFC] Cleaning Empty Vehicles";		
			_vehicles = nearestObjects [player, ["Car","Tank","Air","Ship"], 9999];
			{
				if (count crew vehicle _x == 0) then {deleteVehicle _x};
			} forEach _vehicles;
			sleep 1;
		};
	
		if (_11_Vehicle_Wrecks) then { 
			diag_log "[GFC] Cleaning Vehicle Wrecks";
			_vehicles = nearestObjects [player, ["Car","Tank","Air","Ship"], 9999];
			{
				if ((_x isKindOf "Car" || _x isKindOf "Tank" || _x isKindOf "Air" || _x isKindOf "Ship") && !alive _x ) then {
					deleteVehicleCrew _x;
					deleteVehicle _x;
				};
			} forEach _vehicles;
			sleep 1;
		};
	 
		diag_log "[GFC] Cleanup Complete";
};