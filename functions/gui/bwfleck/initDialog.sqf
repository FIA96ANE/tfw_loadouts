//////////////////////////////////////////////////////////////////
// 
//LOADOUT bwfleck
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
"Besatzung",
"EOD",
"Grenadier",
"GrpFhr",
"Gruppenscharfschütze G3",
"Gruppenscharfschütze G28",
"Joint Fire Observer",
"MG3-Schütze",
"MG4-Schütze",
"MG5-Schütze",
"MG3-Hilfsschütze",
"MG4-Hilfsschütze",
"MG5-Hilfsschütze",
"Offizier",
"Pilot Helikopter",
"Pionier",
"Schütze",
"Schütze PzFst",
"Schütze RGW90",
"Schütze Fliegerfaust",
"Sanitäter",
"Zugführer"
];

_pfad = "functions\loadouts\bwfleck\";

lbSetData [7377, 0, format["%1fn_bwfleck_crew.sqf",_pfad]];
lbSetData [7377, 1, format["%1fn_bwfleck_eod.sqf",_pfad]];
lbSetData [7377, 2, format["%1fn_bwfleck_gren.sqf",_pfad]];
lbSetData [7377, 3, format["%1fn_bwfleck_grpfhr.sqf",_pfad]];
lbSetData [7377, 4, format["%1fn_bwfleck_grpschrfg3.sqf",_pfad]];
lbSetData [7377, 5, format["%1fn_bwfleck_grpschrfg28.sqf",_pfad]];
lbSetData [7377, 6, format["%1fn_bwfleck_jfo.sqf",_pfad]];
lbSetData [7377, 7, format["%1fn_bwfleck_mg3.sqf",_pfad]];
lbSetData [7377, 8, format["%1fn_bwfleck_mg4.sqf",_pfad]];
lbSetData [7377, 9, format["%1fn_bwfleck_mg5.sqf",_pfad]];
lbSetData [7377, 10, format["%1fn_bwfleck_munmg3.sqf",_pfad]];
lbSetData [7377, 11, format["%1fn_bwfleck_munmg4.sqf",_pfad]];
lbSetData [7377, 12, format["%1fn_bwfleck_munmg5.sqf",_pfad]];
lbSetData [7377, 13, format["%1fn_bwfleck_off.sqf",_pfad]];
lbSetData [7377, 14, format["%1fn_bwfleck_helitiger_pilot.sqf",_pfad]];
lbSetData [7377, 15, format["%1fn_bwfleck_pio.sqf",_pfad]];
lbSetData [7377, 16, format["%1fn_bwfleck_schtz.sqf",_pfad]];
lbSetData [7377, 17, format["%1fn_bwfleck_pzfst.sqf",_pfad]];
lbSetData [7377, 18, format["%1fn_bwfleck_rgw90.sqf",_pfad]];
lbSetData [7377, 19, format["%1fn_bwfleck_flgfst.sqf",_pfad]];
lbSetData [7377, 20, format["%1fn_bwfleck_sani.sqf",_pfad]];
lbSetData [7377, 21, format["%1fn_bwfleck_zgfhr.sqf",_pfad]];
