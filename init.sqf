/* ================ init.sqf =============== */
// JIP Check (This code should be placed first line of init.sqf file)
if (!isServer && isNull player) then {isJIP=true;} else {isJIP=false;};
enableSaving [false, false];

setViewDistance 3500; //Max. Sichtweite setzen

//params for MP Lobby
call ADV_fnc_parVariables;
call ADV_fnc_Variables;

if ( hasInterface ) then {
	titleText [format ["Einen Moment Geduld bitte, %1.\n\n\n Es geht gleich weiter.", profileName], "BLACK FADED"];
};

//sets ownership of the units to either zeus or the HC:
ADV_par_headlessClient = ["param_headlessClient",1] call BIS_fnc_getParamValue;
[] spawn {
	waitUntil {time > 1};
	if (ADV_par_headlessClient == 1) then {
		ADV_handle_zeusObjects = [true] spawn ADV_fnc_zeusObjects;
	};
};

//ACRE NET Settings
if (isClass (configFile >> "CfgPatches" >> "acre_main")) then {
	if(isDedicated) exitWith {};

	private["_unit", "_localUnitType"];
	_unit = _this select 0;
	_localUnitType = _this select 1;

	if(_unit != player) exitWith { false };

	["ACRE_PRC148", "default", "example1"] call acre_api_fnc_copyPreset;
	["ACRE_PRC152", "default", "example1"] call acre_api_fnc_copyPreset;
	["ACRE_PRC117F", "default", "example1"] call acre_api_fnc_copyPreset;

	["ACRE_PRC148", "example1", 1, "description", "PLTNET 1"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC148", "example1", 2, "description", "PLTNET 2"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC148", "example1", 3, "description", "PLTNET 3"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC148", "example1", 4, "description", "COY"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC148", "example1", 5, "description", "CAS"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC148", "example1", 6, "description", "FIRES"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC148", "example1", 7, "description", "SUPPORT"] call acre_api_fnc_setPresetChannelField;
	
	["ACRE_PRC152", "example1", 1, "description", "PLTNET 1"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC152", "example1", 2, "description", "PLTNET 2"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC152", "example1", 3, "description", "PLTNET 3"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC152", "example1", 4, "description", "COY"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC152", "example1", 5, "description", "CAS"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC152", "example1", 6, "description", "FIRES"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC152", "example1", 7, "description", "SUPPORT"] call acre_api_fnc_setPresetChannelField;

	["ACRE_PRC117F", "example1", 1, "name", "PLTNET 1"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC117F", "example1", 2, "name", "PLTNET 2"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC117F", "example1", 3, "name", "PLTNET 3"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC117F", "example1", 4, "name", "COY"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC117F", "example1", 5, "name", "CAS"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC117F", "example1", 6, "name", "FIRES"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC117F", "example1", 7, "name", "SUPPORT"] call acre_api_fnc_setPresetChannelField;
	
	["ACRE_PRC148", "example1"] call acre_api_fnc_setPreset;
	["ACRE_PRC152", "example1"] call acre_api_fnc_setPreset;
	["ACRE_PRC117F", "example1"] call acre_api_fnc_setPreset;
};