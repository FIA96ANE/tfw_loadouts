//////////////////////////////////////////////////////////////////
// 
//LOADOUT usmarines
//MADE BY Raspu
// 
//////////////////////////////////////////////////////////////////

disableSerialization;

//dialog
_display = _this select 0;
_listBox = _display displayCtrl 7377;
_comboBox = _display displayCtrl 7977;

// LBs leeren
lbClear _listBox;
lbClear _comboBox;

//Mögliche Tarnmuster -> Combobox

// {
	// _comboBox lbAdd _x;
// } foreach [
// "Flecktarn", // 0
// "Tropentarn" // 1
// "Tropentarn Tarnung", // 2
// "Flecktarn Tarnung" // 3
// ];

// Auswahl standardmäßig auf flecktarn neu setzen
// _comboBox lbSetCurSel 1;

// tropentarn, flecktarn, tropennew, flecknew
// _comboBox lbSetData [0, "[true,false]"];
// _comboBox lbSetData [1, "[false,true]"];
// _comboBox lbSetData [2, "[false,false,true,false]"];
// _comboBox lbSetData [3, "[false,false,false,true]"];

// Mögliche loadouts -> Listbox
{
	lbAdd [7377, _x]
} foreach [
"Basis",
"Corpsman",
"Crew",
"Engineer",
"EOD",
"Grenadier",
"Helikopter Pilot",
"JFO",
"M27 Schütze",
"M136 Schütze",
"M240 Schütze",
"M249 Schütze",
"M240 Schütze Mun", //5
"M249 Schütze Mun",
"Marksman (M14 EBR)",
"Officer",
"Platoon Leader",
"Pilot",
"Schütze",
"Schütze (Javelin)",
"Schütze (Javelin Mun)",
"Schütze (SMAW)",
"Schütze (SMAW Mun)",
"Squad Leader",
"Team Leader"
];

_pfad = "functions\loadouts\usmarines\";

lbSetData [7377, 0, format["%1fn_usmarines_base.sqf",_pfad]];
lbSetData [7377, 1, format["%1fn_usmarines_corpsman.sqf",_pfad]];
lbSetData [7377, 2, format["%1fn_usmarines_crew.sqf",_pfad]];
lbSetData [7377, 3, format["%1fn_usmarines_eng.sqf",_pfad]];
lbSetData [7377, 4, format["%1fn_usmarines_eod.sqf",_pfad]];
lbSetData [7377, 5, format["%1fn_usmarines_gren.sqf",_pfad]];
lbSetData [7377, 6, format["%1fn_usmarines_helipilot.sqf",_pfad]];
lbSetData [7377, 7, format["%1fn_usmarines_jfo.sqf",_pfad]];
lbSetData [7377, 8, format["%1fn_usmarines_m27.sqf",_pfad]];
lbSetData [7377, 9, format["%1fn_usmarines_m136.sqf",_pfad]];
lbSetData [7377, 10, format["%1fn_usmarines_m240.sqf",_pfad]];
lbSetData [7377, 11, format["%1fn_usmarines_m249.sqf",_pfad]];
lbSetData [7377, 12, format["%1fn_usmarines_munm240.sqf",_pfad]];
lbSetData [7377, 13, format["%1fn_usmarines_munm249.sqf",_pfad]];
lbSetData [7377, 14, format["%1fn_usmarines_marksm.sqf",_pfad]];
lbSetData [7377, 15, format["%1fn_usmarines_off.sqf",_pfad]];
lbSetData [7377, 16, format["%1fn_usmarines_pl.sqf",_pfad]];
lbSetData [7377, 17, format["%1fn_usmarines_pilot.sqf",_pfad]];
lbSetData [7377, 18, format["%1fn_usmarines_schtz.sqf",_pfad]];
lbSetData [7377, 19, format["%1fn_usmarines_schtzjav.sqf",_pfad]];
lbSetData [7377, 20, format["%1fn_usmarines_schtzjavmun.sqf",_pfad]];
lbSetData [7377, 21, format["%1fn_usmarines_schtzsmaw.sqf",_pfad]];
lbSetData [7377, 22, format["%1fn_usmarines_schtzsmawmun.sqf",_pfad]];
lbSetData [7377, 23, format["%1fn_usmarines_sl.sqf",_pfad]];
lbSetData [7377, 24, format["%1fn_usmarines_tl.sqf",_pfad]];
