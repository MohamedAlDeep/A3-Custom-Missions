params ["_player", "_didJIP"];
[west, _player, name _player] remoteExec ['BIS_fnc_addRespawnPosition', 0, true];