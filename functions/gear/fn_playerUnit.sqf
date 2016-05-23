/*
loadout script by Belbo
adds the loadouts to the specific playable units for the side West
Call from initPlayerLocal.sqf via:
[object,true] call ADV_fnc_applyLoadout;
	with
	_this select 0 = object - target the loadout is applied to.
	_this select 1 = boolean - whether or not the target in _zeus is supposed to be invincible.
*/

private [
	"_zeus",
	"_bwfleck_base",
	"_bwfleck_crew",
	"_bwfleck_eod",
	"_bwfleck_flgfst",
	"_bwfleck_gren",
	"_bwfleck_grpfhr",
	"_bwfleck_grpschrfg28",
	"_bwfleck_grpschrfg3",
	"_bwfleck_helitiger_pilot",
	"_bwfleck_jfo",
	"_bwfleck_mg4",
	"_bwfleck_mg5",
	"_bwfleck_munmg4",
	"_bwfleck_munmg5",
	"_bwfleck_pzfst",
	"_bwfleck_rgw90",
	"_bwfleck_sani",
	"_bwfleck_schtz",
	"_bwfleck_off",
	"_bwfleck_pio",
	"_bwfleck_zgfhr",
	"_bwtrop_crew",
	"_bwtrop_base","_bwtrop_grpfhr","_bwtrop_mg4","_bwtrop_mg5","_bwtrop_grpschrfg28","_bwtrop_grpschrfg3","_bwtrop_sani","_bwtrop_eod","_bwtrop_helitiger_pilot","_bwtrop_pzfst","_bwtrop_rgw90","_bwtrop_schtz","_bwtrop_off","_bwtrop_zgfhr",
	"_uk_base",
	"_ussf_eod","_ussf_gren","_ussf_grpfhr","_ussf_m110","_ussf_mg","_ussf_m136","_ussf_sani","_ussf_schtz","_ussf_spotter","_ussf_xm2010",
	"_ussf_m107",
	"_usocp_eod","_usocp_jav","_usocp_grpfhr","_usocp_gren","_usocp_m14","_usocp_m136","_usocp_m249","_usocp_m240","_usocp_sani","_usocp_schtz","_usocp_off","_usocp_zgfhr",
	//US Marine Corps
	"_usmarines_base",
	"_usmarines_corpsman",
	"_usmarines_crew",
	"_usmarines_eng",
	"_usmarines_eod",
	"_usmarines_gren",
	"_usmarines_helipilot",
	"_usmarines_jfo",
	"_usmarines_m27",
	"_usmarines_m136",
	"_usmarines_m240",
	"_usmarines_m249",
	"_usmarines_munm240",
	"_usmarines_munm249",
	"_usmarines_marksm",
	"_usmarines_off",
	"_usmarines_pl",
	"_usmarines_pilot",
	"_usmarines_schtz",
	"_usmarines_schtzjav",
	"_usmarines_schtzjavmun",
	"_usmarines_schtzsmaw",
	"_usmarines_schtzsmawmun",
	"_usmarines_sl",
	"_usmarines_tl",
	
	//US Marine Corps Desert
	"_usmarines_d_base",
	"_usmarines_d_corpsman",
	"_usmarines_d_crew",
	"_usmarines_d_eng",
	"_usmarines_d_eod",
	"_usmarines_d_gren",
	"_usmarines_d_helipilot",
	"_usmarines_d_jfo",
	"_usmarines_d_m27",
	"_usmarines_d_m136",
	"_usmarines_d_m240",
	"_usmarines_d_m249",
	"_usmarines_d_munm240",
	"_usmarines_d_munm249",
	"_usmarines_d_marksm",
	"_usmarines_d_off",
	"_usmarines_d_pl",
	"_usmarines_d_pilot",
	"_usmarines_d_schtz",
	"_usmarines_d_schtzjav",
	"_usmarines_d_schtzjavmun",
	"_usmarines_d_schtzsmaw",
	"_usmarines_d_schtzsmawmun",
	"_usmarines_d_sl",
	"_usmarines_d_tl"];

// insert names of new units here in their correspondent classes:
_bwfleck_base = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwfleck_base_",_x];_bwfleck_base pushback _newGuy};
_bwfleck_crew = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwfleck_crew_",_x];_bwfleck_crew pushback _newGuy};
_bwfleck_eod = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwfleck_eod_",_x];_bwfleck_eod pushback _newGuy};
_bwfleck_flgfst = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwfleck_flgfst_",_x];_bwfleck_flgfst pushback _newGuy};
_bwfleck_gren = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwfleck_gren_",_x];_bwfleck_gren pushback _newGuy};
_bwfleck_grpfhr = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwfleck_grpfhr_",_x];_bwfleck_grpfhr pushback _newGuy};
_bwfleck_grpschrfg28 = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwfleck_grpschrfg28_",_x];_bwfleck_grpschrfg28 pushback _newGuy};
_bwfleck_grpschrfg3 = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwfleck_grpschrfg3_",_x];_bwfleck_grpschrfg3 pushback _newGuy};
_bwfleck_helitiger_pilot = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwfleck_helitiger_pilot_",_x];_bwfleck_helitiger_pilot pushback _newGuy};
_bwfleck_jfo = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwfleck_jfo_",_x];_bwfleck_jfo pushback _newGuy};
_bwfleck_mg4 = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwfleck_mg4_",_x];_bwfleck_mg4 pushback _newGuy};
_bwfleck_mg5 = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwfleck_mg5_",_x];_bwfleck_mg5 pushback _newGuy};
_bwfleck_munmg4 = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwfleck_munmg4_",_x];_bwfleck_munmg4 pushback _newGuy};
_bwfleck_munmg5 = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwfleck_munmg5_",_x];_bwfleck_munmg5 pushback _newGuy};
_bwfleck_sani = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwfleck_sani_",_x];_bwfleck_sani pushback _newGuy};
_bwfleck_schtz = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwfleck_schtz_",_x];_bwfleck_schtz pushback _newGuy};
_bwfleck_pio = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwfleck_pio_",_x];_bwfleck_pio pushback _newGuy};
_bwfleck_pzfst = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwfleck_pzfst_",_x];_bwfleck_pzfst pushback _newGuy};
_bwfleck_rgw90 = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwfleck_rgw90_",_x];_bwfleck_rgw90 pushback _newGuy};
_bwfleck_off = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwfleck_off_",_x];_bwfleck_off pushback _newGuy};
_bwfleck_zgfhr = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwfleck_zgfhr_",_x];_bwfleck_zgfhr pushback _newGuy};


_bwtrop_base = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwtrop_base_",_x];_bwtrop_base pushback _newGuy};
_bwtrop_crew = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwtrop_crew_",_x];_bwtrop_crew pushback _newGuy};
_bwtrop_grpfhr = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwtrop_grpfhr_",_x];_bwtrop_grpfhr pushback _newGuy};
_bwtrop_mg4 = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwtrop_mg4_",_x];_bwtrop_mg4 pushback _newGuy};
_bwtrop_mg5 = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwtrop_mg5_",_x];_bwtrop_mg5 pushback _newGuy};
_bwtrop_grpschrfg28 = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwtrop_grpschrfg28_",_x];_bwtrop_grpschrfg28 pushback _newGuy};
_bwtrop_grpschrfg3 = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwtrop_grpschrfg3_",_x];_bwtrop_grpschrfg3 pushback _newGuy};
_bwtrop_sani = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwtrop_sani_",_x];_bwtrop_sani pushback _newGuy};
_bwtrop_eod = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwtrop_eod_",_x];_bwtrop_eod pushback _newGuy};
_bwtrop_helitiger_pilot = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwtrop_helitiger_pilot_",_x];_bwtrop_helitiger_pilot pushback _newGuy};
_bwtrop_pzfst = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwtrop_pzfst_",_x];_bwtrop_pzfst pushback _newGuy};
_bwtrop_rgw90 = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwtrop_rgw90_",_x];_bwtrop_rgw90 pushback _newGuy};
_bwtrop_schtz = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwtrop_schtz_",_x];_bwtrop_schtz pushback _newGuy};
_bwtrop_zgfhr = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwtrop_zgfhr_",_x];_bwtrop_zgfhr pushback _newGuy};
_bwtrop_off = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwtrop_off_",_x];_bwtrop_off pushback _newGuy};
_uk_base = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","uk_base_",_x];_uk_base pushback _newGuy};
_ussf_eod = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","ussf_eod_",_x];_ussf_eod pushback _newGuy};
_ussf_grpfhr = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","ussf_grpfhr_",_x];_ussf_grpfhr pushback _newGuy};
_ussf_m110 = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","ussf_m110_",_x];_ussf_m110 pushback _newGuy};
_ussf_mg = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","ussf_mg_",_x];_ussf_mg pushback _newGuy};
_ussf_m107 = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","ussf_m107_",_x];_ussf_m107 pushback _newGuy};
_ussf_m136 = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","ussf_m136_",_x];_ussf_m136 pushback _newGuy};
_ussf_sani = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","ussf_sani_",_x];_ussf_sani pushback _newGuy};
_ussf_schtz = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","ussf_schtz_",_x];_ussf_schtz pushback _newGuy};
_ussf_gren = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","ussf_gren_",_x];_ussf_gren pushback _newGuy};
_ussf_xm2010 = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","ussf_xm2010_",_x];_ussf_xm2010 pushback _newGuy};
_ussf_spotter = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","ussf_spotter_",_x];_ussf_spotter pushback _newGuy};
_usocp_eod = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","usocp_eod_",_x];_usocp_eod pushback _newGuy};
_usocp_grpfhr = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","usocp_grpfhr_",_x];_usocp_grpfhr pushback _newGuy};
_usocp_gren = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","usocp_gren_",_x];_usocp_gren pushback _newGuy};
_usocp_jav = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","usocp_jav_",_x];_usocp_jav pushback _newGuy};
_usocp_m14 = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","usocp_m14_",_x];_usocp_m14 pushback _newGuy};
_usocp_m136 = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","usocp_m136_",_x];_usocp_m136 pushback _newGuy};
_usocp_m240 = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","usocp_m240_",_x];_usocp_m240 pushback _newGuy};
_usocp_m249 = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","usocp_m249_",_x];_usocp_m249 pushback _newGuy};
_usocp_sani = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","usocp_sani_",_x];_usocp_sani pushback _newGuy};
_usocp_schtz = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","usocp_schtz_",_x];_usocp_schtz pushback _newGuy};
_usocp_off = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","usocp_off_",_x];_usocp_off pushback _newGuy};
_usocp_zgfhr = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","usocp_zgfhr_",_x];_usocp_zgfhr pushback _newGuy};

// ###### US MARINE COPPS ######
_usmarines_base= [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_base_",_x];_usmarines_base pushback _newGuy};
_usmarines_corpsman= [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_corpsman_",_x];_usmarines_corpsman pushback _newGuy};
_usmarines_crew= [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_crew_",_x];_usmarines_crew pushback _newGuy};
_usmarines_eng= [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_eng_",_x];_usmarines_eng pushback _newGuy};
_usmarines_eod= [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_eod_",_x];_usmarines_eod pushback _newGuy};
_usmarines_gren= [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_gren_",_x];_usmarines_gren pushback _newGuy};
_usmarines_helipilot= [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_helipilot_",_x];_usmarines_helipilot pushback _newGuy};
_usmarines_jfo= [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_jfo_",_x];_usmarines_jfo pushback _newGuy};
_usmarines_m27= [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_m27_",_x];_usmarines_m27 pushback _newGuy};
_usmarines_m136= [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_m136_",_x];_usmarines_m136 pushback _newGuy};
_usmarines_m240= [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_m240_",_x];_usmarines_m240 pushback _newGuy};
_usmarines_m249= [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_m249_",_x];_usmarines_m249 pushback _newGuy};
_usmarines_munm240= [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_munm240_",_x];_usmarines_munm240 pushback _newGuy};
_usmarines_munm249= [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_munm249_",_x];_usmarines_munm249 pushback _newGuy};
_usmarines_marksm= [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_marksm_",_x];_usmarines_marksm pushback _newGuy};
_usmarines_off= [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_off_",_x];_usmarines_off pushback _newGuy};
_usmarines_pl= [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_pl_",_x];_usmarines_pl pushback _newGuy};
_usmarines_pilot= [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_pilot_",_x];_usmarines_pilot pushback _newGuy};
_usmarines_schtz = [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_schtz_",_x];_usmarines_schtz pushback _newGuy};
_usmarines_schtzjav = [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_schtzjav_",_x];_usmarines_schtzjav pushback _newGuy};
_usmarines_schtzjavmun = [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_schtzjavmun_",_x];_usmarines_schtzjavmun pushback _newGuy};
_usmarines_schtzsmaw = [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_schtzsmaw_",_x];_usmarines_schtzsmaw pushback _newGuy};
_usmarines_schtzsmawmun = [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_schtzsmawmun_",_x];_usmarines_schtzsmawmun pushback _newGuy};
_usmarines_sl = [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_sl_",_x];_usmarines_sl pushback _newGuy};
_usmarines_tl = [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_tl_",_x];_usmarines_tl pushback _newGuy};

// ###### US MARINE CORPS DESERT######
_usmarines_d_base= [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_d_base_",_x];_usmarines_d_base pushback _newGuy};
_usmarines_d_corpsman= [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_d_corpsman_",_x];_usmarines_d_corpsman pushback _newGuy};
_usmarines_d_crew= [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_d_crew_",_x];_usmarines_d_crew pushback _newGuy};
_usmarines_d_eng= [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_d_eng_",_x];_usmarines_d_eng pushback _newGuy};
_usmarines_d_eod= [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_d_eod_",_x];_usmarines_d_eod pushback _newGuy};
_usmarines_d_gren= [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_d_gren_",_x];_usmarines_d_gren pushback _newGuy};
_usmarines_d_helipilot= [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_d_helipilot_",_x];_usmarines_d_helipilot pushback _newGuy};
_usmarines_d_jfo= [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_d_jfo_",_x];_usmarines_d_jfo pushback _newGuy};
_usmarines_d_m27= [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_d_m27_",_x];_usmarines_d_m27 pushback _newGuy};
_usmarines_d_m136= [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_d_m136_",_x];_usmarines_d_m136 pushback _newGuy};
_usmarines_d_m240= [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_d_m240_",_x];_usmarines_d_m240 pushback _newGuy};
_usmarines_d_m249= [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_d_m249_",_x];_usmarines_d_m249 pushback _newGuy};
_usmarines_d_munm240= [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_d_munm240_",_x];_usmarines_d_munm240 pushback _newGuy};
_usmarines_d_munm249= [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_d_munm249_",_x];_usmarines_d_munm249 pushback _newGuy};
_usmarines_d_marksm= [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_d_marksm_",_x];_usmarines_d_marksm pushback _newGuy};
_usmarines_d_off= [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_d_off_",_x];_usmarines_d_off pushback _newGuy};
_usmarines_d_pl= [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_d_pl_",_x];_usmarines_d_pl pushback _newGuy};
_usmarines_d_pilot= [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_d_pilot_",_x];_usmarines_d_pilot pushback _newGuy};
_usmarines_d_schtz = [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_d_schtz_",_x];_usmarines_d_schtz pushback _newGuy};
_usmarines_d_schtzjav = [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_d_schtzjav_",_x];_usmarines_d_schtzjav pushback _newGuy};
_usmarines_d_schtzjavmun = [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_d_schtzjavmun_",_x];_usmarines_d_schtzjavmun pushback _newGuy};
_usmarines_d_schtzsmaw = [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_d_schtzsmaw_",_x];_usmarines_d_schtzsmaw pushback _newGuy};
_usmarines_d_schtzsmawmun = [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_d_schtzsmawmun_",_x];_usmarines_d_schtzsmawmun pushback _newGuy};
_usmarines_d_sl = [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_d_sl_",_x];_usmarines_d_sl pushback _newGuy};
_usmarines_d_tl = [];for "_x" from 1 to 50 do {_newGuy = format ["%1%2","usmarines_d_tl_",_x];_usmarines_d_tl pushback _newGuy};

_zeus = ["z1","z2","z3","z4","z5"];

///// No editing necessary below this line /////
private ["_object","_target","_invinciZeus"];
_target = [_this, 0, player] call BIS_fnc_param;
_object = str _target;

//switch to select the applicable loadout function
_playerUnit = switch true do {
	case (_object in _bwfleck_base): {"ADV_fnc_bwfleck_base"};
	case (_object in _bwfleck_crew): {"ADV_fnc_bwfleck_crew"};
	case (_object in _bwfleck_eod): {"ADV_fnc_bwfleck_eod"};
	case (_object in _bwfleck_flgfst): {"ADV_fnc_bwfleck_flgfst"};
	case (_object in _bwfleck_gren): {"ADV_fnc_bwfleck_gren"};
	case (_object in _bwfleck_grpfhr): {"ADV_fnc_bwfleck_grpfhr"};
	case (_object in _bwfleck_grpschrfg28): {"ADV_fnc_bwfleck_grpschrfg28"};
	case (_object in _bwfleck_grpschrfg3): {"ADV_fnc_bwfleck_grpschrfg3"};
	case (_object in _bwfleck_helitiger_pilot): {"ADV_fnc_bwfleck_helitiger_pilot"};
	case (_object in _bwfleck_jfo): {"ADV_fnc_bwfleck_jfo"};
	case (_object in _bwfleck_mg4): {"ADV_fnc_bwfleck_mg4"};
	case (_object in _bwfleck_mg5): {"ADV_fnc_bwfleck_mg5"};
	case (_object in _bwfleck_munmg4): {"ADV_fnc_bwfleck_munmg4"};
	case (_object in _bwfleck_munmg5): {"ADV_fnc_bwfleck_munmg5"};
	case (_object in _bwfleck_sani): {"ADV_fnc_bwfleck_sani"};
	case (_object in _bwfleck_schtz): {"ADV_fnc_bwfleck_schtz"};
	case (_object in _bwfleck_pio): {"ADV_fnc_bwfleck_pio"};
	case (_object in _bwfleck_pzfst): {"ADV_fnc_bwfleck_pzfst"};
	case (_object in _bwfleck_rgw90): {"ADV_fnc_bwfleck_rgw90"};
	case (_object in _bwfleck_off): {"ADV_fnc_bwfleck_off"};
	case (_object in _bwfleck_zgfhr): {"ADV_fnc_bwfleck_zgfhr"};
	
	case (_object in _bwtrop_base): {"ADV_fnc_bwtrop_base"};
	case (_object in _bwtrop_crew): {"ADV_fnc_bwtrop_crew"};
	case (_object in _bwtrop_grpfhr): {"ADV_fnc_bwtrop_grpfhr"};
	case (_object in _bwtrop_mg4): {"ADV_fnc_bwtrop_mg4"};
	case (_object in _bwtrop_mg5): {"ADV_fnc_bwtrop_mg5"};
	case (_object in _bwtrop_grpschrfg28): {"ADV_fnc_bwtrop_grpschrfg28"};
	case (_object in _bwtrop_grpschrfg3): {"ADV_fnc_bwtrop_grpschrfg3"};
	case (_object in _bwtrop_sani): {"ADV_fnc_bwtrop_sani"};
	case (_object in _bwtrop_eod): {"ADV_fnc_bwtrop_eod"};
	case (_object in _bwtrop_helitiger_pilot): {"ADV_fnc_bwtrop_helitiger_pilot"};
	case (_object in _bwtrop_pzfst): {"ADV_fnc_bwtrop_pzfst"};
	case (_object in _bwtrop_rgw90): {"ADV_fnc_bwtrop_rgw90"};
	case (_object in _bwtrop_schtz): {"ADV_fnc_bwtrop_schtz"};
	case (_object in _bwtrop_off): {"ADV_fnc_bwtrop_off"};
	case (_object in _bwtrop_zgfhr): {"ADV_fnc_bwtrop_zgfhr"};
	case (_object in _uk_base): {"ADV_fnc_uk_base"};
	
	//US Special Forces
	case (_object in _ussf_eod): {"ADV_fnc_ussf_eod"};
	case (_object in _ussf_gren): {"ADV_fnc_ussf_gren"};
	case (_object in _ussf_grpfhr): {"ADV_fnc_ussf_grpfhr"};
	case (_object in _ussf_m110): {"ADV_fnc_ussf_m110"};
	case (_object in _ussf_mg): {"ADV_fnc_ussf_mg"};
	case (_object in _ussf_m107): {"ADV_fnc_ussf_m107"};
	case (_object in _ussf_m136): {"ADV_fnc_ussf_m136"};
	case (_object in _ussf_sani): {"ADV_fnc_ussf_sani"};
	case (_object in _ussf_schtz): {"ADV_fnc_ussf_schtz"};
	case (_object in _ussf_spotter): {"ADV_fnc_ussf_spotter"};
	case (_object in _ussf_xm2010): {"ADV_fnc_ussf_xm2010"};
	
	//US Army OCP
	case (_object in _usocp_eod): {"ADV_fnc_usocp_eod"};
	case (_object in _usocp_grpfhr): {"ADV_fnc_usocp_grpfhr"};
	case (_object in _usocp_jav): {"ADV_fnc_usocp_jav"};
	case (_object in _usocp_gren): {"ADV_fnc_usocp_gren"};
	case (_object in _usocp_m14): {"ADV_fnc_usocp_m14"};
	case (_object in _usocp_m136): {"ADV_fnc_usocp_m136"};
	case (_object in _usocp_m240): {"ADV_fnc_usocp_m240"};
	case (_object in _usocp_m249): {"ADV_fnc_usocp_m249"};
	case (_object in _usocp_sani): {"ADV_fnc_usocp_sani"};
	case (_object in _usocp_schtz): {"ADV_fnc_usocp_schtz"};
	case (_object in _usocp_off): {"ADV_fnc_usocp_off"};
	case (_object in _usocp_zgfhr): {"ADV_fnc_usocp_zgfhr"};
	
	//US MARINE CORPS
	case (_object in _usmarines_base): {"ADV_fnc_usmarines_base"};
	case (_object in _usmarines_corpsman): {"ADV_fnc_usmarines_corpsman"};
	case (_object in _usmarines_crew): {"ADV_fnc_usmarines_crew"};
	case (_object in _usmarines_eng): {"ADV_fnc_usmarines_eng"};
	case (_object in _usmarines_eod): {"ADV_fnc_usmarines_eod"};
	case (_object in _usmarines_gren): {"ADV_fnc_usmarines_gren"};
	case (_object in _usmarines_helipilot): {"ADV_fnc_usmarines_helipilot"};
	case (_object in _usmarines_jfo): {"ADV_fnc_usmarines_jfo"};
	case (_object in _usmarines_m27): {"ADV_fnc_usmarines_m27"};
	case (_object in _usmarines_m136): {"ADV_fnc_usmarines_m136"};
	case (_object in _usmarines_m240): {"ADV_fnc_usmarines_m240"};
	case (_object in _usmarines_m249): {"ADV_fnc_usmarines_m249"};
	case (_object in _usmarines_munm240): {"ADV_fnc_usmarines_munm240"};
	case (_object in _usmarines_munm249): {"ADV_fnc_usmarines_munm249"};
	case (_object in _usmarines_marksm): {"ADV_fnc_usmarines_marksm"};
	case (_object in _usmarines_off): {"ADV_fnc_usmarines_off"};
	case (_object in _usmarines_pl): {"ADV_fnc_usmarines_pl"};
	case (_object in _usmarines_pilot): {"ADV_fnc_usmarines_pilot"};
	case (_object in _usmarines_schtz): {"ADV_fnc_usmarines_schtz"};
	case (_object in _usmarines_schtzjav): {"ADV_fnc_usmarines_schtzjav"};
	case (_object in _usmarines_schtzjavmun): {"ADV_fnc_usmarines_schtzjavmun"};
	case (_object in _usmarines_schtzsmaw): {"ADV_fnc_usmarines_schtzsmaw"};
	case (_object in _usmarines_schtzsmawmun): {"ADV_fnc_usmarines_schtzsmawmun"};
	case (_object in _usmarines_sl): {"ADV_fnc_usmarines_sl"};
	case (_object in _usmarines_tl): {"ADV_fnc_usmarines_tl"};
	
	//US MARINE CORPS DESERT
	case (_object in _usmarines_d_base): {"ADV_fnc_usmarines_d_base"};
	case (_object in _usmarines_d_corpsman): {"ADV_fnc_usmarines_d_corpsman"};
	case (_object in _usmarines_d_crew): {"ADV_fnc_usmarines_d_crew"};
	case (_object in _usmarines_d_eng): {"ADV_fnc_usmarines_d_eng"};
	case (_object in _usmarines_d_eod): {"ADV_fnc_usmarines_d_eod"};
	case (_object in _usmarines_d_gren): {"ADV_fnc_usmarines_d_gren"};
	case (_object in _usmarines_d_helipilot): {"ADV_fnc_usmarines_d_helipilot"};
	case (_object in _usmarines_d_jfo): {"ADV_fnc_usmarines_d_jfo"};
	case (_object in _usmarines_d_m27): {"ADV_fnc_usmarines_d_m27"};
	case (_object in _usmarines_d_m136): {"ADV_fnc_usmarines_d_m136"};
	case (_object in _usmarines_d_m240): {"ADV_fnc_usmarines_d_m240"};
	case (_object in _usmarines_d_m249): {"ADV_fnc_usmarines_d_m249"};
	case (_object in _usmarines_d_munm240): {"ADV_fnc_usmarines_d_munm240"};
	case (_object in _usmarines_d_munm249): {"ADV_fnc_usmarines_d_munm249"};
	case (_object in _usmarines_d_marksm): {"ADV_fnc_usmarines_d_marksm"};
	case (_object in _usmarines_d_off): {"ADV_fnc_usmarines_d_off"};
	case (_object in _usmarines_d_pl): {"ADV_fnc_usmarines_d_pl"};
	case (_object in _usmarines_d_pilot): {"ADV_fnc_usmarines_d_pilot"};
	case (_object in _usmarines_d_schtz): {"ADV_fnc_usmarines_d_schtz"};
	case (_object in _usmarines_d_schtzjav): {"ADV_fnc_usmarines_d_schtzjav"};
	case (_object in _usmarines_d_schtzjavmun): {"ADV_fnc_usmarines_d_schtzjavmun"};
	case (_object in _usmarines_d_schtzsmaw): {"ADV_fnc_usmarines_d_schtzsmaw"};
	case (_object in _usmarines_d_schtzsmawmun): {"ADV_fnc_usmarines_d_schtzsmawmun"};
	case (_object in _usmarines_d_sl): {"ADV_fnc_usmarines_d_sl"};
	case (_object in _usmarines_d_tl): {"ADV_fnc_usmarines_d_tl"};
	default {"ADV_fnc_nil"};
};

_target setVariable ["ADV_var_playerUnit",_playerUnit];

if (true) exitWith {};