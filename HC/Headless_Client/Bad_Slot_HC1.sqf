/* 
Bad_slot_HC1.sqf 
*/ 
waitUntil {sleep 1;!isNull player}; 
if !( playerside == civilian ) then {
call compile preprocessFileLineNumbers "HC\Headless_client\Bad_slot_HC2.sqf";
};
