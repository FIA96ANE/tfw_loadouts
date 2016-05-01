/* ================ init.sqf =============== */
/* ================ ================ =============== */
// JIP Check (This code should be placed first line of init.sqf file)
if (!isServer && isNull player) then {isJIP=true;} else {isJIP=false;};

// Wait until player is initialized
if (!isDedicated) then {waitUntil {!isNull player && isPlayer player};};

setViewDistance 3500; //Max. Sichtweite setzen

//params for MP Lobby
call ADV_fnc_parVariables;
call ADV_fnc_Variables;