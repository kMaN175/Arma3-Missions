//Initializes player custom loadouts
null = execVM "PlayerLoadout.sqf"; 

//Initializes roadside IEDs script
execVM"ied.sqf";	

//Init UPSMON script
call compile preprocessFileLineNumbers "scripts\Init_UPSMON.sqf";

//Sils Simple Random Weather scriptDone
 null = [] execVM "setRandomWeather.sqf";
 
 //XEnigmas Simple Civilians script
 call compile preprocessFileLineNumbers "Engima\Civilians\Init.sqf";
 
 //XEnigmas Simple Civilan Traffic script
call compile preprocessFileLineNumbers "Engima\Traffic\Init.sqf";
