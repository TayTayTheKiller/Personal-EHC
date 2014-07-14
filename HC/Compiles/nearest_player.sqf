// get closest player within given radius

private ["_pos", "_rad", "_nearest", "_nearestdist", "_dist"];
_allPlayers = playableUnits;
_pos = _this select 0;
_rad = _this select 1;
_nearest=objNull;
_nearestdist=_rad;
{
	_dist=(vehicle _x) distance _pos;
	if (isPlayer _x and _dist<_nearestdist) then {
		_nearest=_x;
		_nearestdist=_dist;
	};
} forEach _allPlayers;
_nearest;
