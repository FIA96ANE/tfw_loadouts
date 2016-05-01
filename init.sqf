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