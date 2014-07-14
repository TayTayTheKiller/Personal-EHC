call compile preprocessFileLineNumbers "HC\Headless_Client\HCsignals.sqf";
HCdo_spawnRCV = compile preprocessFileLineNumbers "HC\Headless_Client\HCdo_spawnRCV.sqf";
call compile preprocessFileLineNumbers "HC\Headless_Client\handle_HCdo_spawnRCV.sqf";
nearest_player = compile preprocessFileLineNumbers "HC\Compiles\nearest_player.sqf";
zombie_loiterHC = compile preprocessFileLineNumbers "HC\Compiles\zombie_loiterHC.sqf";
zombie_generateHC = compile preprocessFileLineNumbers "HC\Compiles\zombie_generateHC.sqf";
building_spawnZombiesHC = compile preprocessFileLineNumbers "HC\Compiles\building_spawnZombiesHC.sqf";
wild_spawnZombiesHC = compile preprocessFileLineNumbers "HC\Compiles\wild_spawnZombiesHC.sqf";
player_spawnCheck = compile preprocessFileLineNumbers "HC\Compiles\player_spawnCheck.sqf";
player_zombieAttack = compile preprocessFileLineNumbers "HC\Compiles\player_zombieAttack.sqf";
//test
zombie_findTargetAgent = 	compile preprocessFileLineNumbers "HC\Test\zombie_findTargetAgent.sqf";
