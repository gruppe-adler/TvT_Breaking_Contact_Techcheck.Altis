grad_techcheck_fnc_displayVehicleInfo = compile preprocessFileLineNumbers "fn_displayVehicleInfo.sqf";
[] execVM "vehicleInfo.sqf";

_deployAction = [
    "RusRadioDeploy",
    (localize "str_GRAD_radio_deploy"),
    "",
    {
        params ["_radiotruck"];
        [_radiotruck] remoteExec ["GRAD_tracking_fnc_radioTruckDeploy", 2];
    },
    {
        params ["_radiotruck"];
        _isRetracted = ! (_radiotruck getVariable ["GRAD_isDeployed", false]);
        _isStationary = (speed _radiotruck) == 0;
        _isNotAnimated = ! (_radiotruck getVariable ["GRAD_isAnimating", false]);

        side player == east && _isStationary && _isRetracted && _isNotAnimated;
    }
] call ace_interact_menu_fnc_createAction;
["rhs_gaz66_r142_vv", 0, ["ACE_MainActions"], _deployAction] call ace_interact_menu_fnc_addActionToClass;

_retractAction = [
    "RusRadioRetract",
    (localize "str_GRAD_radio_retract"),
    "",
    {
        params ["_radiotruck"];
        [_radiotruck] remoteExec ["GRAD_tracking_fnc_radioTruckRetract", 2];
    },
    {
        params ["_radiotruck"];
        _isDeployed = _radiotruck getVariable ["GRAD_isDeployed", false];
        _isStationary = (speed _radiotruck) == 0;
        _isNotAnimated = ! (_radiotruck getVariable ["GRAD_isAnimating", false]);

        side player == east && _isStationary && _isDeployed && _isNotAnimated;
    }
] call ace_interact_menu_fnc_createAction;
["rhs_gaz66_r142_vv", 0, ["ACE_MainActions"], _retractAction] call ace_interact_menu_fnc_addActionToClass;
