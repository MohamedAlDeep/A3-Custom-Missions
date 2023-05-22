// Export of 'TutorMission.VR' by Neo on v0.9

///////////////////////////////////////////////////////////////////////////////////////////
// Init
params [["_layerWhiteList",[],[[]]],["_layerBlacklist",[],[[]]],["_posCenter",[0,0,0],[[]]],["_dir",0,[0]],["_idBlacklist",[],[[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {true in _layerWhiteList}) && {!(true in _layerBlackList)};


///////////////////////////////////////////////////////////////////////////////////////////
// Markers
private _markers = [];
private _markerIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Groups
private _groups = [];
private _groupIDs = [];

private _item19 = grpNull;
if (_layerRoot) then {
	_item19 = createGroup west;
	_this = _item19;
	_groups pushback _this;
	_groupIDs pushback 19;
};

private _item53 = grpNull;
if (_layerRoot) then {
	_item53 = createGroup civilian;
	_this = _item53;
	_groups pushback _this;
	_groupIDs pushback 53;
};

private _item55 = grpNull;
if (_layerRoot) then {
	_item55 = createGroup civilian;
	_this = _item55;
	_groups pushback _this;
	_groupIDs pushback 55;
};

private _item58 = grpNull;
if (_layerRoot) then {
	_item58 = createGroup east;
	_this = _item58;
	_groups pushback _this;
	_groupIDs pushback 58;
};

private _item67 = grpNull;
if (_layerRoot) then {
	_item67 = createGroup west;
	_this = _item67;
	_groups pushback _this;
	_groupIDs pushback 67;
};

private _item72 = grpNull;
if (_layerRoot) then {
	_item72 = createGroup west;
	_this = _item72;
	_groups pushback _this;
	_groupIDs pushback 72;
};

private _item81 = grpNull;
if (_layerRoot) then {
	_item81 = createGroup west;
	_this = _item81;
	_groups pushback _this;
	_groupIDs pushback 81;
};

private _item90 = grpNull;
if (_layerRoot) then {
	_item90 = createGroup west;
	_this = _item90;
	_groups pushback _this;
	_groupIDs pushback 90;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item54 = objNull;
if (_layerRoot) then {
	_item54 = _item53 createUnit ["C_Man_casual_7_F",[5994.81,5708.01,0],[],0,"CAN_COLLIDE"];
	_item53 selectLeader _item54;
	_this = _item54;
	_objects pushback _this;
	_objectIDs pushback 54;
	_this setPosWorld [5994.81,5708.06,5.00144];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	selectPlayer _this;
	_this setname "Vyron Haikias";;
	_this setface "GreekHead_A3_03";;
	_this setspeaker "male05gre";;
	_this setpitch 1.01489;;
};

private _item56 = objNull;
if (_layerRoot) then {
	_item56 = _item55 createUnit ["C_Man_formal_2_F",[5991.81,5724.46,0],[],0,"CAN_COLLIDE"];
	_item55 selectLeader _item56;
	_this = _item56;
	_objects pushback _this;
	_objectIDs pushback 56;
	_this setPosWorld [5991.81,5724.51,5.00144];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setname "Dimitirou Maras";;
	_this setface "GreekHead_A3_02";;
	_this setspeaker "male04gre";;
	_this setpitch 1.01051;;
};

private _item59 = objNull;
if (_layerRoot) then {
	_item59 = _item58 createUnit ["O_recon_TL_F",[5999.34,5719.29,0],[],0,"CAN_COLLIDE"];
	_item58 selectLeader _item59;
	_this = _item59;
	_objects pushback _this;
	_objectIDs pushback 59;
	_this setPosWorld [5999.34,5719.34,5.00144];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setRank "SERGEANT";
	_this setname "Ehsan Zakhilwal";;
	_this setface "PersianHead_A3_02";;
	_this setspeaker "male03per";;
	_this setpitch 1.01024;;
};

private _item60 = objNull;
if (_layerRoot) then {
	_item60 = _item58 createUnit ["O_recon_M_F",[6004.34,5714.29,0],[],0,"CAN_COLLIDE"];
	_this = _item60;
	_objects pushback _this;
	_objectIDs pushback 60;
	_this setPosWorld [6004.34,5714.34,5.00144];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.45;
	_this setRank "CORPORAL";
	_this setname "Basharat Jalali";;
	_this setface "PersianHead_A3_02";;
	_this setspeaker "male03per";;
	_this setpitch 0.955151;;
};

private _item61 = objNull;
if (_layerRoot) then {
	_item61 = _item58 createUnit ["O_recon_medic_F",[5994.34,5714.29,0],[],0,"CAN_COLLIDE"];
	_this = _item61;
	_objects pushback _this;
	_objectIDs pushback 61;
	_this setPosWorld [5994.34,5714.34,5.00144];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.4;
	_this setname "Bashir Kohzad";;
	_this setface "PersianHead_A3_03";;
	_this setspeaker "male01per";;
	_this setpitch 0.966666;;
};

private _item62 = objNull;
if (_layerRoot) then {
	_item62 = _item58 createUnit ["O_recon_F",[6009.34,5709.29,0],[],0,"CAN_COLLIDE"];
	_this = _item62;
	_objects pushback _this;
	_objectIDs pushback 62;
	_this setPosWorld [6009.34,5709.34,5.00144];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.4;
	_this setname "Hasan Gailani";;
	_this setface "PersianHead_A3_03";;
	_this setspeaker "male02per";;
	_this setpitch 0.970518;;
};

private _item63 = objNull;
if (_layerRoot) then {
	_item63 = _item58 createUnit ["O_recon_LAT_F",[5989.34,5709.29,0],[],0,"CAN_COLLIDE"];
	_this = _item63;
	_objects pushback _this;
	_objectIDs pushback 63;
	_this setPosWorld [5989.34,5709.34,5.00144];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.4;
	_this setname "Ehsan Zahor";;
	_this setface "PersianHead_A3_01";;
	_this setspeaker "male03per";;
	_this setpitch 1.00036;;
};

private _item64 = objNull;
if (_layerRoot) then {
	_item64 = _item58 createUnit ["O_recon_JTAC_F",[6014.34,5704.29,0],[],0,"CAN_COLLIDE"];
	_this = _item64;
	_objects pushback _this;
	_objectIDs pushback 64;
	_this setPosWorld [6014.34,5704.34,5.00144];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.4;
	_this setname "Arif Ratebzad";;
	_this setface "PersianHead_A3_01";;
	_this setspeaker "male03per";;
	_this setpitch 1.03192;;
};

private _item65 = objNull;
if (_layerRoot) then {
	_item65 = _item58 createUnit ["O_recon_exp_F",[5984.34,5704.29,0],[],0,"CAN_COLLIDE"];
	_this = _item65;
	_objects pushback _this;
	_objectIDs pushback 65;
	_this setPosWorld [5984.34,5704.34,5.00144];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.4;
	_this setname "Qasim Tanwir";;
	_this setface "PersianHead_A3_01";;
	_this setspeaker "male02per";;
	_this setpitch 1.04942;;
};

private _item66 = objNull;
if (_layerRoot) then {
	_item66 = _item58 createUnit ["O_Pathfinder_F",[6019.34,5699.29,0],[],0,"CAN_COLLIDE"];
	_this = _item66;
	_objects pushback _this;
	_objectIDs pushback 66;
	_this setPosWorld [6019.34,5699.34,5.00144];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.45;
	_this setRank "CORPORAL";
	_this setname "Abdul-Wahhab Bahadur";;
	_this setface "PersianHead_A3_02";;
	_this setspeaker "male02per";;
	_this setpitch 1.0263;;
};

private _item68 = objNull;
if (_layerRoot) then {
	_item68 = _item67 createUnit ["B_Soldier_TL_F",[5993.42,5746.23,0],[],0,"CAN_COLLIDE"];
	_item67 selectLeader _item68;
	_this = _item68;
	_objects pushback _this;
	_objectIDs pushback 68;
	_this setPosWorld [5993.42,5746.28,5.00144];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setRank "SERGEANT";
	_this setname "Rhys Hill";;
	_this setface "AfricanHead_03";;
	_this setspeaker "male12eng";;
	_this setpitch 0.96897;;
};

private _item69 = objNull;
if (_layerRoot) then {
	_item69 = _item67 createUnit ["B_soldier_AR_F",[5998.42,5741.23,0],[],0,"CAN_COLLIDE"];
	_this = _item69;
	_objects pushback _this;
	_objectIDs pushback 69;
	_this setPosWorld [5998.42,5741.28,5.00144];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.45;
	_this setRank "CORPORAL";
	_this setname "Joseph Reed";;
	_this setface "WhiteHead_04";;
	_this setspeaker "male07eng";;
	_this setpitch 1.02325;;
};

private _item70 = objNull;
if (_layerRoot) then {
	_item70 = _item67 createUnit ["B_Soldier_GL_F",[5988.42,5741.23,0],[],0,"CAN_COLLIDE"];
	_this = _item70;
	_objects pushback _this;
	_objectIDs pushback 70;
	_this setPosWorld [5988.42,5741.28,5.00144];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.4;
	_this setname "David Walsh";;
	_this setface "Barklem";;
	_this setspeaker "male11eng";;
	_this setpitch 1.04732;;
};

private _item71 = objNull;
if (_layerRoot) then {
	_item71 = _item67 createUnit ["B_soldier_LAT_F",[6003.42,5736.23,0],[],0,"CAN_COLLIDE"];
	_this = _item71;
	_objects pushback _this;
	_objectIDs pushback 71;
	_this setPosWorld [6003.42,5736.28,5.00144];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.4;
	_this setname "Alexander Clark";;
	_this setface "WhiteHead_18";;
	_this setspeaker "male12eng";;
	_this setpitch 0.976383;;
};

private _item73 = objNull;
if (_layerRoot) then {
	_item73 = _item72 createUnit ["B_Soldier_SL_F",[5951.86,5754.56,0],[],0,"CAN_COLLIDE"];
	_item72 selectLeader _item73;
	_this = _item73;
	_objects pushback _this;
	_objectIDs pushback 73;
	_this setPosWorld [5951.86,5754.61,5.00144];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setRank "SERGEANT";
	_this setname "Jack Santorum";;
	_this setface "GreekHead_A3_07";;
	_this setspeaker "male09eng";;
	_this setpitch 0.981919;;
};

private _item74 = objNull;
if (_layerRoot) then {
	_item74 = _item72 createUnit ["B_soldier_AR_F",[5956.55,5752.87,0],[],0,"CAN_COLLIDE"];
	_this = _item74;
	_objects pushback _this;
	_objectIDs pushback 74;
	_this setPosWorld [5956.55,5752.92,5.00144];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.4;
	_this setname "Sean Wilson";;
	_this setface "Barklem";;
	_this setspeaker "male07eng";;
	_this setpitch 1.04884;;
};

private _item75 = objNull;
if (_layerRoot) then {
	_item75 = _item72 createUnit ["B_Soldier_GL_F",[5946.55,5752.87,0],[],0,"CAN_COLLIDE"];
	_this = _item75;
	_objects pushback _this;
	_objectIDs pushback 75;
	_this setPosWorld [5946.55,5752.92,5.00144];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.45;
	_this setRank "CORPORAL";
	_this setname "Donald Allen";;
	_this setface "WhiteHead_05";;
	_this setspeaker "male04eng";;
	_this setpitch 1.02842;;
};

private _item76 = objNull;
if (_layerRoot) then {
	_item76 = _item72 createUnit ["B_soldier_M_F",[5961.55,5747.87,0],[],0,"CAN_COLLIDE"];
	_this = _item76;
	_objects pushback _this;
	_objectIDs pushback 76;
	_this setPosWorld [5961.55,5747.92,5.00144];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setRank "SERGEANT";
	_this setname "Alexander Thompson";;
	_this setface "WhiteHead_03";;
	_this setspeaker "male09eng";;
	_this setpitch 0.960688;;
};

private _item77 = objNull;
if (_layerRoot) then {
	_item77 = _item72 createUnit ["B_soldier_AT_F",[5941.55,5747.87,0],[],0,"CAN_COLLIDE"];
	_this = _item77;
	_objects pushback _this;
	_objectIDs pushback 77;
	_this setPosWorld [5941.55,5747.92,5.00144];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.45;
	_this setRank "CORPORAL";
	_this setname "Benjamin Santorum";;
	_this setface "AfricanHead_02";;
	_this setspeaker "male08eng";;
	_this setpitch 1.04389;;
};

private _item78 = objNull;
if (_layerRoot) then {
	_item78 = _item72 createUnit ["B_soldier_AAT_F",[5966.55,5742.87,0],[],0,"CAN_COLLIDE"];
	_this = _item78;
	_objects pushback _this;
	_objectIDs pushback 78;
	_this setPosWorld [5966.55,5742.92,5.00144];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.4;
	_this setname "Ed MacDonald";;
	_this setface "WhiteHead_03";;
	_this setspeaker "male06eng";;
	_this setpitch 1.00804;;
};

private _item79 = objNull;
if (_layerRoot) then {
	_item79 = _item72 createUnit ["B_Soldier_A_F",[5936.55,5742.87,0],[],0,"CAN_COLLIDE"];
	_this = _item79;
	_objects pushback _this;
	_objectIDs pushback 79;
	_this setPosWorld [5936.55,5742.92,5.00144];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.4;
	_this setname "George Wilson";;
	_this setface "GreekHead_A3_05";;
	_this setspeaker "male08eng";;
	_this setpitch 1.00056;;
};

private _item80 = objNull;
if (_layerRoot) then {
	_item80 = _item72 createUnit ["B_medic_F",[5971.55,5737.87,0],[],0,"CAN_COLLIDE"];
	_this = _item80;
	_objects pushback _this;
	_objectIDs pushback 80;
	_this setPosWorld [5971.55,5737.92,5.00144];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.4;
	_this setname "John Reed";;
	_this setface "WhiteHead_07";;
	_this setspeaker "male07eng";;
	_this setpitch 1.02416;;
};

private _item82 = objNull;
if (_layerRoot) then {
	_item82 = _item81 createUnit ["B_Soldier_SL_F",[6045.31,5741.26,0],[],0,"CAN_COLLIDE"];
	_item81 selectLeader _item82;
	_this = _item82;
	_objects pushback _this;
	_objectIDs pushback 82;
	_this setPosWorld [6045.31,5741.31,5.00144];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setRank "SERGEANT";
	_this setname "Joshua Turner";;
	_this setface "AfricanHead_03";;
	_this setspeaker "male04eng";;
	_this setpitch 1.04515;;
};

private _item83 = objNull;
if (_layerRoot) then {
	_item83 = _item81 createUnit ["B_Soldier_F",[6050.31,5736.26,0],[],0,"CAN_COLLIDE"];
	_this = _item83;
	_objects pushback _this;
	_objectIDs pushback 83;
	_this setPosWorld [6050.31,5736.31,5.00144];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.4;
	_this setname "Matthew Price";;
	_this setface "WhiteHead_12";;
	_this setspeaker "male06eng";;
	_this setpitch 0.99796;;
};

private _item84 = objNull;
if (_layerRoot) then {
	_item84 = _item81 createUnit ["B_soldier_LAT_F",[6040.31,5736.26,0],[],0,"CAN_COLLIDE"];
	_this = _item84;
	_objects pushback _this;
	_objectIDs pushback 84;
	_this setPosWorld [6040.31,5736.31,5.00144];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.45;
	_this setRank "CORPORAL";
	_this setname "Jamie O'Brien";;
	_this setface "Sturrock";;
	_this setspeaker "male06eng";;
	_this setpitch 1.03779;;
};

private _item85 = objNull;
if (_layerRoot) then {
	_item85 = _item81 createUnit ["B_soldier_M_F",[6055.31,5731.26,0],[],0,"CAN_COLLIDE"];
	_this = _item85;
	_objects pushback _this;
	_objectIDs pushback 85;
	_this setPosWorld [6055.31,5731.31,5.00144];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.4;
	_this setname "Douglas Faulkner";;
	_this setface "AfricanHead_02";;
	_this setspeaker "male10eng";;
	_this setpitch 0.994371;;
};

private _item86 = objNull;
if (_layerRoot) then {
	_item86 = _item81 createUnit ["B_Soldier_TL_F",[6035.31,5731.26,0],[],0,"CAN_COLLIDE"];
	_this = _item86;
	_objects pushback _this;
	_objectIDs pushback 86;
	_this setPosWorld [6035.31,5731.31,5.00144];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setRank "SERGEANT";
	_this setname "Montgomery Johnson";;
	_this setface "WhiteHead_16";;
	_this setspeaker "male01eng";;
	_this setpitch 1.00025;;
};

private _item87 = objNull;
if (_layerRoot) then {
	_item87 = _item81 createUnit ["B_soldier_AR_F",[6060.31,5726.26,0],[],0,"CAN_COLLIDE"];
	_this = _item87;
	_objects pushback _this;
	_objectIDs pushback 87;
	_this setPosWorld [6060.31,5726.31,5.00144];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.45;
	_this setRank "CORPORAL";
	_this setname "Jack Price";;
	_this setface "GreekHead_A3_07";;
	_this setspeaker "male05eng";;
	_this setpitch 1.04642;;
};

private _item88 = objNull;
if (_layerRoot) then {
	_item88 = _item81 createUnit ["B_Soldier_A_F",[6030.31,5726.26,0],[],0,"CAN_COLLIDE"];
	_this = _item88;
	_objects pushback _this;
	_objectIDs pushback 88;
	_this setPosWorld [6030.31,5726.31,5.00144];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.4;
	_this setname "Joseph O'Connor";;
	_this setface "GreekHead_A3_08";;
	_this setspeaker "male04eng";;
	_this setpitch 1.01993;;
};

private _item89 = objNull;
if (_layerRoot) then {
	_item89 = _item81 createUnit ["B_medic_F",[6065.31,5721.26,0],[],0,"CAN_COLLIDE"];
	_this = _item89;
	_objects pushback _this;
	_objectIDs pushback 89;
	_this setPosWorld [6065.31,5721.31,5.00144];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.4;
	_this setname "Douglas Wilson";;
	_this setface "WhiteHead_17";;
	_this setspeaker "male07eng";;
	_this setpitch 1.0408;;
};

private _item91 = objNull;
if (_layerRoot) then {
	_item91 = _item90 createUnit ["B_recon_TL_F",[5998.53,5690.41,0],[],0,"CAN_COLLIDE"];
	_item90 selectLeader _item91;
	_this = _item91;
	_objects pushback _this;
	_objectIDs pushback 91;
	_this setPosWorld [5998.53,5690.46,5.00144];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setRank "SERGEANT";
	_this setname "Archie Burr";;
	_this setface "GreekHead_A3_07";;
	_this setspeaker "male04eng";;
	_this setpitch 1.0077;;
};

private _item92 = objNull;
if (_layerRoot) then {
	_item92 = _item90 createUnit ["B_recon_M_F",[6003.53,5685.41,0],[],0,"CAN_COLLIDE"];
	_this = _item92;
	_objects pushback _this;
	_objectIDs pushback 92;
	_this setPosWorld [6003.53,5685.46,5.00144];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.45;
	_this setRank "CORPORAL";
	_this setname "Dylan Phillips";;
	_this setface "GreekHead_A3_08";;
	_this setspeaker "male07eng";;
	_this setpitch 1.02711;;
};

private _item93 = objNull;
if (_layerRoot) then {
	_item93 = _item90 createUnit ["B_recon_medic_F",[5993.53,5685.41,0],[],0,"CAN_COLLIDE"];
	_this = _item93;
	_objects pushback _this;
	_objectIDs pushback 93;
	_this setPosWorld [5993.53,5685.46,5.00144];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.4;
	_this setname "Tavish Coburn";;
	_this setface "WhiteHead_06";;
	_this setspeaker "male11eng";;
	_this setpitch 1.02721;;
};

private _item94 = objNull;
if (_layerRoot) then {
	_item94 = _item90 createUnit ["B_recon_F",[6008.53,5680.41,0],[],0,"CAN_COLLIDE"];
	_this = _item94;
	_objects pushback _this;
	_objectIDs pushback 94;
	_this setPosWorld [6008.53,5680.46,5.00144];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.4;
	_this setname "Thomas Miller";;
	_this setface "WhiteHead_15";;
	_this setspeaker "male05eng";;
	_this setpitch 0.997954;;
};

private _item95 = objNull;
if (_layerRoot) then {
	_item95 = _item90 createUnit ["B_recon_LAT_F",[5988.53,5680.41,0],[],0,"CAN_COLLIDE"];
	_this = _item95;
	_objects pushback _this;
	_objectIDs pushback 95;
	_this setPosWorld [5988.53,5680.46,5.00144];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.4;
	_this setname "Archie Halliwell";;
	_this setface "WhiteHead_21";;
	_this setspeaker "male06eng";;
	_this setpitch 0.99246;;
};

private _item96 = objNull;
if (_layerRoot) then {
	_item96 = _item90 createUnit ["B_recon_JTAC_F",[6013.53,5675.41,0],[],0,"CAN_COLLIDE"];
	_this = _item96;
	_objects pushback _this;
	_objectIDs pushback 96;
	_this setPosWorld [6013.53,5675.46,5.00144];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.4;
	_this setname "James Leahy";;
	_this setface "WhiteHead_09";;
	_this setspeaker "male07eng";;
	_this setpitch 0.961374;;
};

private _item97 = objNull;
if (_layerRoot) then {
	_item97 = _item90 createUnit ["B_recon_exp_F",[5983.53,5675.41,0],[],0,"CAN_COLLIDE"];
	_this = _item97;
	_objects pushback _this;
	_objectIDs pushback 97;
	_this setPosWorld [5983.53,5675.46,5.00144];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.4;
	_this setname "Donnan Jackson";;
	_this setface "WhiteHead_07";;
	_this setspeaker "male12eng";;
	_this setpitch 1.04388;;
};

private _item98 = objNull;
if (_layerRoot) then {
	_item98 = _item90 createUnit ["B_Recon_Sharpshooter_F",[6018.53,5670.41,0],[],0,"CAN_COLLIDE"];
	_this = _item98;
	_objects pushback _this;
	_objectIDs pushback 98;
	_this setPosWorld [6018.53,5670.46,5.00144];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.45;
	_this setRank "CORPORAL";
	_this setname "James Campbell";;
	_this setface "AfricanHead_03";;
	_this setspeaker "male07eng";;
	_this setpitch 1.04457;;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)
_this = _item19;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	ALPHA1 = _this;
	_this setGroupID ["ALPHA 1"];;
};
_this = _item53;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	_this setGroupID ["Alpha 1-1"];;
};
_this = _item55;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	_this setGroupID ["Alpha 1-2"];;
};
_this = _item58;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	_this setGroupID ["Alpha 1-1"];;
};
_this = _item67;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	_this setGroupID ["Alpha 1-2"];;
};
_this = _item72;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	_this setGroupID ["Alpha 1-3"];;
};
_this = _item81;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	_this setGroupID ["Alpha 1-4"];;
};
_this = _item90;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	_this setGroupID ["Alpha 1-5"];;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Waypoints
private _waypoints = [];
private _waypointIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Logics
private _logics = [];
private _logicIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Layers


///////////////////////////////////////////////////////////////////////////////////////////
// Crews


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
