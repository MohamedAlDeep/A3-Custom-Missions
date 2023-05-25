private ["_markerPos", "_alarmPath", "_alarmObjs"];

/* Center Location of the prison to search */
_markerPos = getMarkerPos "prison_center";

/* Path to the alarm file */
_alarmPath = "sounds\alarm.ogg";

/* Objects to play the alarm sound from */
_alarmObjs = nearestObjects[_markerPos, ["Land_Loudspeakers_F"], 200, true];

{
	// Current result is saved in variable _x
	playSound3D[getMissionPath _alarmPath, _x, false, [0,0,0], 1, 1, 200];
} forEach _alarmObjs;

