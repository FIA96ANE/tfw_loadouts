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

if (true) exitWith {};