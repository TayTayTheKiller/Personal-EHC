Personal-EHC
====================

My own test version of the EHC

Note this is being tested without any battleye filters. I will update what needs to be added to them at some point.

Installation

You will need to know how to set up an ArmA2OA headless client. If you don't know how then this isn't for you in it's current state.

1 First copy the folder HC to your mission file.

2 Open your init.sqf and find the line `call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\variables.sqf";`

3 Just above that add this section of code
```
hc_debug = true; //RPT logging and hint messages
if (!isServer && !hasInterface) then { // headless client settings
	dayz_maxLocalZombies = 80; // Default = 40
	dayz_maxGlobalZombiesInit = 80;
	dayz_maxGloabZombiesIncrease = 20;
	dayz_maxZeds = 1000;
}; // normal player clients will get a different set of variables with same name
```

4 Find the line `call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\compiles.sqf";` and replace it with

```
if (isServer || hasInterface) then {
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\compiles.sqf";				//Compile regular functions
} else {
call compile preprocessFileLineNumbers "hc\Headless_Client\compilesHC.sqf";
};
```

5 Just above the line `progressLoadingScreen 1.0;` add this peace of code

```
diag_log ("starting customization");
call compile preprocessFileLineNumbers "hc\initHC.sqf"; // fixes and HC stuff
diag_log ("ending customization");
```

6 Find the line `if (!isDedicated) then {` and replace with `if (!isDedicated && hasInterface) then {`

7 open you mission.sqm find the class Groups and add an extra item to it using this code

		class Item2 //don't forget to change the total number of items in class Groups
		{
			side="CIV";
			class Vehicles
			{
				items=1;
				class Item0
				{
					position[]={7839,381,8414};
					id=0;
					side="CIV";
					vehicle="Survivor1_DZ";
					player="PLAYER COMMANDER";
					skill=0.60000002;
					text="HeadlessClient";
					init="this allowDamage false";
					description="HeadlessClient";
					name="HeadlessClient";
					forceHeadlessClient=1;
				};
			};
		};
		
8 If you want a simple Debug monitor that will track and show you the total amount of zombies ingame along with your fps add `[] execVM "HC\Debug\debugM.sqf";` to the `if (!isDedicated && hasInterface) then {` section.

9 To add zombie markers to the map/gps add `[] execVM "HC\Debug\zMarkers.sqf";` to the `if (!isDedicated && hasInterface) then {` section. Please note this may cause issues with antihacks such as infiSTARS.

This is still a really early build and will need extensive testing especially with high player counts

Bugs and issues will definitely be here.

Credits

Goober http://epochmod.com/forum/index.php?/user/9058-goober/ Initial source

David http://epochmod.com/forum/index.php?/user/15375-david/

