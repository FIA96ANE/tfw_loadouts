//defines the player's unit:
[player] call ADV_fnc_playerUnit;

//waitUntil-player is initialized
waitUntil {player == player && time > 1};

sleep 1;
//loadouts and RespawnMPEVH are placed on the units on spawn. [target, respawn with gear (bool)]
ADV_handle_loadoutsInit = [player] spawn ADV_fnc_loadoutsInit;

//gearsaving
ADV_objects_gearSaving = [];
if (!isNil "bwtrop_crate_1") then {ADV_objects_gearSaving pushBack bwtrop_crate_1};
if (!isNil "bwtrop_crate_2") then {ADV_objects_gearSaving pushBack bwtrop_crate_2};
if (!isNil "bwtrop_crate_3") then {ADV_objects_gearSaving pushBack bwtrop_crate_3};
if (!isNil "bwfleck_crate_1") then {ADV_objects_gearSaving pushBack bwfleck_crate_1};
if (!isNil "bwfleck_crate_2") then {ADV_objects_gearSaving pushBack bwfleck_crate_2};
if (!isNil "bwfleck_crate_3") then {ADV_objects_gearSaving pushBack bwfleck_crate_3};
if (!isNil "uk_crate_1") then {ADV_objects_gearSaving pushBack uk_crate_1};
if (!isNil "uk_crate_2") then {ADV_objects_gearSaving pushBack uk_crate_2};
if (!isNil "uk_crate_3") then {ADV_objects_gearSaving pushBack uk_crate_3};
if (!isNil "usocp_crate_1") then {ADV_objects_gearSaving pushBack usocp_crate_1};
if (!isNil "usocp_crate_2") then {ADV_objects_gearSaving pushBack usocp_crate_2};
if (!isNil "usocp_crate_3") then {ADV_objects_gearSaving pushBack usocp_crate_3};
if (!isNil "ussf_crate_1") then {ADV_objects_gearSaving pushBack ussf_crate_1};
if (!isNil "ussf_crate_2") then {ADV_objects_gearSaving pushBack ussf_crate_2};
if (!isNil "ussf_crate_3") then {ADV_objects_gearSaving pushBack ussf_crate_3};
if !(count ADV_objects_gearSaving == 0) then {ADV_objects_gearSaving spawn aeroson_fnc_gearsaving;};

//adds loadout-selection to objects
// if (!isNil "uk_gear_1") then {ADV_handle_chooseLoadoutAction = [uk_gear_1] spawn ADV_fnc_chooseLoadoutAction_uk;};
// if (!isNil "bwtrop_gear_1") then {ADV_handle_chooseLoadoutAction = [bwtrop_gear_1] spawn ADV_fnc_chooseLoadoutAction_bwtrop;};

/*
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
	
	["ACRE_PRC152", "example1", 1, "description", "PLTNET 1"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC152", "example1", 2, "description", "PLTNET 2"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC152", "example1", 3, "description", "PLTNET 3"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC152", "example1", 4, "description", "COY"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC152", "example1", 5, "description", "CAS"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC152", "example1", 6, "description", "FIRES"] call acre_api_fnc_setPresetChannelField;

	["ACRE_PRC117F", "example1", 1, "name", "PLTNET 1"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC117F", "example1", 2, "name", "PLTNET 2"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC117F", "example1", 3, "name", "PLTNET 3"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC117F", "example1", 4, "name", "COY"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC117F", "example1", 5, "name", "CAS"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC117F", "example1", 6, "name", "FIRES"] call acre_api_fnc_setPresetChannelField;

	["ACRE_PRC148", "example1"] call acre_api_fnc_setPreset;
	["ACRE_PRC152", "example1"] call acre_api_fnc_setPreset;
	["ACRE_PRC117F", "example1"] call acre_api_fnc_setPreset;
};
*/

if (true) exitWith {};