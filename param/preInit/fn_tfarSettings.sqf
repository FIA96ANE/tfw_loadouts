/*
ADV_fnc_tfarSettings by Belbo
contains all the variables that are important for tfar
*/

//TFAR:
//für zusätzliche variablen/functions: https://github.com/michail-nikolaev/task-force-arma-3-radio/wiki/API:-Variables
compile preprocessFileLineNumbers "\task_force_radio\functions\common.sqf";

tf_radio_channel_name = "Coop Server ╔═══ TFAR ═══╗";
tf_radio_channel_password = "123";
tf_no_auto_long_range_radio = true;
tf_give_personal_radio_to_regular_soldier = false;
TF_give_microdagr_to_soldier = false;
tf_same_sw_frequencies_for_side = true;
tf_same_lr_frequencies_for_side = true;
tf_terrain_interception_coefficient = 1;

//radios

BW_personal_tf_faction_radio = "tf_sem52sl";
BLU_F_personal_tf_faction_radio = "tf_anprc152";
BLU_F_rifleman_tf_faction_radio = "tf_rf7800str";
BLU_G_F_personal_tf_faction_radio = "tf_anprc148jem";
BLU_G_F_rifleman_tf_faction_radio = "tf_anprc154";
OPF_F_personal_tf_faction_radio = "tf_fadak";
OPF_F_rifleman_tf_faction_radio = "tf_pnr1000a";

//frequencies
//blufor
tf_freq_west    = [0,7,["131.5","132","132.5","133","133.5","134","134.5","135","135.5","136","136.5","137","137.5"],0,"_bluefor",-1,0];
tf_freq_west_lr = [0,7,["42","42.5","43","43.5","44","44.5","45","45.5","46","46.5","47","47.5","48"],0,"_bluefor",-1,0];
tf_freq_name    = [["131.5","Alfa"],["132","Bravo"],["132.5","Charlie"],["133","Delta"],["133.5","Echo"],["134","Foxtrot"],["134.5","Golf"],["135","Hotel"],["135.5","India"],["136","Juliett"],["136.5","Kilo"],["137","Lima"],["137.5","Mike"]];

//opfor
tf_freq_east    = [0,7,["221.5","222","222.5","223","223.5","224","224.5","225","225.5","226","226.5","227","227.5"],0,"_opfor",-1,0];
tf_freq_east_lr = [0,7,["31","31.5","32","32.5","33","33.5","34","34.5","35","35.5","36","36.5","37"],0,"_opfor",-1,0];
tf_freq_name    = tf_freq_name+[["221.5","Alfa"],["222","Bravo"],["222.5","Charlie"],["223","Delta"],["223.5","Echo"],["224","Foxtrot"],["224.5","Golf"],["225","Hotel"],["225.5","India"],["226","Juliett"],["226.5","Kilo"],["227","Lima"],["227.5","Mike"]];

//Indfor
tf_freq_guer    = [0,7,["341.5","342","342.5","343","343.5","344","344.5","345","345.5","346","346.5","347","347.5"],0,"_indfor",-1,0];
tf_freq_guer_lr = [0,7,["52","52.5","53","53.5","54","54.5","55","55.5","56","56.5","57","57.5","58"],0,"_indfor",-1,0];
tf_freq_name    = tf_freq_name+[["341.5","Alfa"],["342","Bravo"],["342.5","Charlie"],["343","Delta"],["343.5","Echo"],["344","Foxtrot"],["344.5","Golf"],["345","Hotel"],["345.5","India"],["346","Juliett"],["346.5","Kilo"],["347","Lima"],["347.5","Mike"]];

//setting all the stuff public
if (isServer) then {
	publicVariable "tf_no_auto_long_range_radio";
	publicVariable "tf_give_personal_radio_to_regular_soldier";
	publicVariable "TF_give_microdagr_to_soldier";
	publicVariable "tf_same_sw_frequencies_for_side";
	publicVariable "tf_same_lr_frequencies_for_side";
	publicVariable "tf_terrain_interception_coefficient";
	publicVariable "BW_personal_tf_faction_radio";
	publicVariable "BLU_F_personal_tf_faction_radio";
	publicVariable "BLU_F_rifleman_tf_faction_radio";
	publicVariable "BLU_G_F_personal_tf_faction_radio";
	publicVariable "BLU_G_F_rifleman_tf_faction_radio";
	publicVariable "OPF_F_personal_tf_faction_radio";
	publicVariable "OPF_F_rifleman_tf_faction_radio";
	publicVariable "tf_freq_west";
	publicVariable "tf_freq_west_lr";
	publicVariable "tf_freq_east";
	publicVariable "tf_freq_east_lr";
	publicVariable "tf_freq_guer";
	publicVariable "tf_freq_guer_lr";
	publicVariable "tf_freq_name";
};

if (true) exitWith {};