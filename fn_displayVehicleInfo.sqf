params ["_text"];

if (isNil "_text") exitWith {
    "vehicleInfo" cutRsc ["grad_techcheck_empty","PLAIN"];
};


"vehicleInfo" cutRsc  ["grad_techcheck_vehicleinfo","PLAIN"];
private _display = uiNamespace getVariable ["grad_techcheck_vehicleinfo",displayNull];
if (isNull _display) exitWith {};

_ctrl = _display displayCtrl 2000;
_ctrl ctrlSetStructuredText _text;
