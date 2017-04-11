params ["_vehicle"];

_manpad = "rhs_Igla_AA_pod_msv" createVehicle [0,0,0];

_manpad attachto[_vehicle,[0.4,-1.5,0.58]];

// remove default get out action, as it spawns you floating above the truck
_manpad setVehicleLock "LOCKED";

_vehicle setVariable ["attachedObject",_manpad, true];
_manpad setVariable ["attachedToObject", _vehicle, true];

[_vehicle] remoteExec ["GRAD_addGetInActionAA",0,true];
[_manpad] remoteExec ["GRAD_addGetOutActionAA",0,true];

[_manpad, false, [0, 0, 0], 0] call ace_dragging_fnc_setCarryable;
[_manpad, false, [0, 0, 0], 0] call ace_dragging_fnc_setDraggable;

_vehicle addEventHandler ["killed", {
	_manpad = (_this select 0) getVariable ["attachedObject", objNull];
	if (!isNull _manpad) then {
		_manpad setDamage 1;
	};
}];


_vehicle addAction ["Get In AA", {
[_this select 0, _this select 1] spawn {
	(_this select 1) switchMove "ACE_Climb";
	  sleep 1.2;
	(_this select 1) moveInTurret [(_this select 0) getVariable ['attachedObject',objNull], [0]];
};

}, nil, 1, false, true, "",
"!isNull (_target getVariable ['attachedObject',objNull]) &&
alive (_target getVariable ['attachedObject',objNull]) &&
!(vehicle _this == _target) &&
{count crew (_target getVariable ['attachedObject',objNull]) < 1}",
5, false];

_manpad addAction ["Get Out", {
	moveOut (_this select 1);
	_dir = getDir (_this select 0);
	(_this select 1) setDir _dir - 180;
	(_this select 1) switchMove "AcrgPknlMstpSnonWnonDnon_AmovPercMstpSnonWnonDnon_getOutMedium";
	(_this select 1) setPos (((_this select 0) getVariable ['attachedToObject',objNull]) modelToWorld [0.5,-3.5,-1]);
}, nil, 1, false, true, "vehicle _this == _target",
"",
1, false];
