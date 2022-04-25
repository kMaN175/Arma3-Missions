/**
*  editMe
*
*  Defines all global config for the mission
*
*  Domain: Client, Server
**/

/* Attacker Waves */

// List_Bandits, List_ParaBandits, List_OPFOR, List_INDEP, List_NATO, List_Viper, List_WehrmachtRifle, List_Wehrmacht, List_USArmy
HOSTILE_LEVEL_1 = List_WehrmachtRifle;  // Wave 0 >
HOSTILE_LEVEL_2 = List_Wehrmacht;    // Wave 5 >
HOSTILE_LEVEL_3 = List_Wehrmacht;    // Wave 10 >
HOSTILE_ARMED_CARS = List_Armour;//expects vehicles
HOSTILE_ARMOUR = List_ArmedCars; //expects vehicles

HOSTILE_MULTIPLIER = ("HOSTILE_MULTIPLIER" call BIS_fnc_getParamValue);  // How many hostiles per wave (waveCount x HOSTILE_MULTIPLIER)
HOSTILE_TEAM_MULTIPLIER = ("HOSTILE_TEAM_MULTIPLIER" call BIS_fnc_getParamValue) / 100;   // How many extra units are added per player
PISTOL_HOSTILES = ("PISTOL_HOSTILES" call BIS_fnc_getParamValue);  //What wave enemies stop only using pistols

/* LOCATION LIST OPTIONS */
// List_AllCities - for any random City
// List_SpecificPoint - will start the mission on the "Specific Bulwark Pos" marker (move with mission editor). Location must meet BULWARK_LANDRATIO and LOOT_HOUSE_DENSITY, BULWARK_MINSIZE, etc requirements
// List_LocationMarkers - for a location selected randomly from the Bulwark Zones in editor (Currently broken)
// *IMPORTANT* If you get an error using List_SpecificPoint it means that there isn't a building that qualifies. Turning down the "Minimum spawn room size" parameter might help.
BULWARK_LOCATIONS = List_AllCities;

BULWARK_RADIUS = ("BULWARK_RADIUS" call BIS_fnc_getParamValue);
BULWARK_MINSIZE = ("BULWARK_MINSIZE" call BIS_fnc_getParamValue);   // Spawn room must be bigger than x square metres
BULWARK_LANDRATIO = ("BULWARK_LANDRATIO" call BIS_fnc_getParamValue);
LOOT_HOUSE_DENSITY = ("LOOT_HOUSE_DENSITY" call BIS_fnc_getParamValue);

PLAYER_STARTWEAPON = if ("PLAYER_STARTWEAPON" call BIS_fnc_getParamValue == 1) then {true} else {false};
PLAYER_STARTMAP    = if ("PLAYER_STARTMAP" call BIS_fnc_getParamValue == 1) then {true} else {false};
PLAYER_STARTRADIO  = if ("PLAYER_STARTRADIO" call BIS_fnc_getParamValue == 1) then {true} else {false};
PLAYER_STARTCOMPASS = if ("PLAYER_STARTCOMPASS" call BIS_fnc_getParamValue == 1) then {true} else {false};
PLAYER_STARTNVG    = if ("PLAYER_STARTNVG" call BIS_fnc_getParamValue == 1) then {true} else {false};

/* Respawn */
RESPAWN_TIME = ("RESPAWN_TIME" call BIS_fnc_getParamValue);
RESPAWN_TICKETS = ("RESPAWN_TICKETS" call BIS_fnc_getParamValue);

/* Loot Blacklist */
LOOT_BLACKLIST = [
    "O_Static_Designator_02_weapon_F", // If players find and place CSAT UAVs they count as hostile units and round will not progress
    "O_UAV_06_backpack_F",
    "O_UAV_06_medical_backpack_F",
    "O_UAV_01_backpack_F",
    "B_IR_Grenade",
    "O_IR_Grenade",
    "I_IR_Grenade",
	"LIB_M2_Tripod",
	"LIB_Laffete_Tripod",
	"LIB_BM37_Tripod",
	"LIB_BM37_Barrel",
	"LIB_GrWr34_Tripod",
	"LIB_GrWr34_Tripod_g",
	"LIB_GrWr34_Barrel",
	"LIB_GrWr34_Barrel_g",
	"LIB_M2_60_Tripod",
	"LIB_M2_60_Barrel",
	"B_LIB_RadioBag",
	"RadioBag",
	"B_LIB_RadioBag_Empty",
	"B_LIB_FunkBag",
	"FunkBag",
	"B_LIB_FunkBag_Empty",
	"LIB_Tripod_Bag",
	"LIB_M2_Tripod_Bag",
	"LIB_BM37_Bag",
	"LIB_GrWr34_Bag",
	"LIB_M2_60_Bag",
	"LIB_MG42_Tripod_Disasm",
	"LIB_MG42_Tripod_High",
	"LIB_Maxim_Bag",
	"B_LIB_GER_Radio",
	"B_LIB_SOV_RA_Radio",
	"B_LIB_US_Radio",
	"B_LIB_GER_Radio_ACRE2",
	"B_LIB_SOV_RA_Radio_ACRE2",
	"B_LIB_US_Radio_ACRE2",
	"B_LIB_GER_Radio_Empty",
	"B_LIB_GER_LW_Paradrop",
	"B_LIB_SOV_RA_Paradrop",
	"B_LIB_SOV_RA_Radio_Empty",
	"B_LIB_US_Type5",
	"B_LIB_US_Radio_Empty",
	"LIB_BM37_Tripod_Deployed",
	"LIB_GrWr34_Tripod_Deployed",
	"LIB_GrWr34_Tripod_Deployed_g",
	"LIB_M2_60_Tripod_Deployed",
	"LIB_Faustpatrone",
	"LIB_PIAT_Rifle",
	"B_LIB_US_TypeA3"
];

/* Whitelist modes */
/* 0 = Off */
/* 1 = Only Whitelist Items will spawn as loot */
/* 2 = Whitelist items get added to existing loot (increases the chance of loot spawning */
LOOT_WHITELIST_MODE = 0;

/* Loot Whitelists */
/* Fill with classname arrays: ["example_item_1", "example_item_2"] */
/* To use Whitelisting there MUST be at least one applicaple item in each LOOT_WHITELIST array*/
LOOT_WHITELIST_WEAPON = [];
LOOT_WHITELIST_APPAREL = [];
LOOT_WHITELIST_ITEM = [];
LOOT_WHITELIST_EXPLOSIVE = [];
LOOT_WHITELIST_STORAGE = [];

/* Loot Spawn */
LOOT_WEAPON_POOL    = List_AllWeapons - LOOT_BLACKLIST;    // Classnames of Loot items as an array
LOOT_APPAREL_POOL   = List_AllClothes + List_Vests - LOOT_BLACKLIST;
LOOT_ITEM_POOL      = List_Optics + List_Items - LOOT_BLACKLIST;
LOOT_EXPLOSIVE_POOL = List_Mines + List_Grenades + List_Charges - LOOT_BLACKLIST;
LOOT_STORAGE_POOL   = List_Backpacks - LOOT_BLACKLIST;

/* Random Loot */
LOOT_HOUSE_DISTRIBUTION = ("LOOT_HOUSE_DISTRIBUTION" call BIS_fnc_getParamValue);  // Every *th house will spwan loot.
LOOT_ROOM_DISTRIBUTION = ("LOOT_ROOM_DISTRIBUTION" call BIS_fnc_getParamValue);   // Every *th position, within that house will spawn loot.
LOOT_DISTRIBUTION_OFFSET = 0; // Offset the position by this number.
LOOT_SUPPLYDROP = ("LOOT_SUPPLYDROP" call BIS_fnc_getParamValue) / 100;        // Radius of supply drop
PARATROOP_COUNT = ("PARATROOP_COUNT" call BIS_fnc_getParamValue);
PARATROOP_CLASS = List_USArmy;
DEFECTOR_CLASS = List_USArmy;
PTRD_CLASS = List_PTRD;
GRENADIER_CLASS = List_Grenadier;
MG_CLASS = List_MG;

/* Points */
SCORE_KILL = ("SCORE_KILL" call BIS_fnc_getParamValue);                 // Base Points for a kill
SCORE_HIT = ("SCORE_HIT" call BIS_fnc_getParamValue);                   // Every Bullet hit that doesn't result in a kill
SCORE_DAMAGE_BASE = ("SCORE_DAMAGE_BASE" call BIS_fnc_getParamValue);   // Extra points awarded for damage. 100% = SCORE_DAMAGE_BASE. 50% = SCORE_DAMAGE_BASE/2
SCORE_RANDOMBOX = 950;  // Cost to spin the box

/*Point multipliers of SCORE_KILL for different waves */
HOSTILE_LEVEL_1_POINT_SCORE = 0.75;
HOSTILE_LEVEL_2_POINT_SCORE = 1;
HOSTILE_LEVEL_3_POINT_SCORE = 1.50;
HOSTILE_CAR_POINT_SCORE = 2;
HOSTILE_ARMOUR_POINT_SCORE = 4;

/* Comment out or delete the below support items to prevent the player from buying them */

BULWARK_SUPPORTITEMS = [
    [800,  "Recon UAV",             "reconUAV"],
    [1680, "Emergency Teleport",   "telePlode"],
    [1950, "Paratroopers",          "paraDrop"],
    [3850, "Missile CAS",          "airStrike"],
    [4220, "Mine Cluster Shell",   "mineField"],
    [4690, "Rage Stimpack",         "ragePack"],
    [5930, "Mind Control Gas",    "mindConGas"]
//   [6666, "ARMAKART TM",           "armaKart"],
//	[7500, "Predator Drone",    "droneControl"]
];

/* Objects the Player can buy */

/* Radius prevents hostiles walking through objects */

/*  Price - Display Name - Class Name - Rotation When Bought - Object Radius (meters) - explosive - invincible	*/
BULWARK_BUILDITEMS = [
    [25,   	"Long Plank (8m)",      		"Land_Plank_01_8m_F",             			   	0,		4,		0,	0],
    [50,  	"Junk Barricade",       		"Land_Barricade_01_4m_F",         			   	0, 		1.5,	0,	0],
	[50, 	"Hedgehog",						"Land_I44_HedgeHog",							0,		2,		0,	0],
	[50, 	"ConcreteKerb",					"Land_ConcreteKerb_02_2m_F",					0,		1,		0,	0],
    [75,   	"Small Ramp (1m)",      		"Land_Obstacle_Ramp_F",          				180,	1.5,	0,	0],
    [85,   	"Flat Triangle (1m)",   		"Land_DomeDebris_01_hex_green_F",  				180,	1.5,	0,	0],
    [100,  	"Short Sandbag Wall",   		"Land_SandbagBarricade_01_half_F",   			0,		1.5,	0,	0],
	[100,  	"Gate",  						"Land_TinWall_01_m_gate_v1_F",					0,		1.5,	0,	0],
    [100,  	"Barbed Wire /w Tank Trap", 	"Wire",   										0,		2,		0,	0],
    [150,  	"Sandbag Barricade (hole)", 	"Land_SandbagBarricade_01_hole_F",   			0,		1.5,	0,	0],
	[150,  	"Sandbag Barricade (Tall)",		"Land_SandbagBarricade_01_F",					0,		1.5,	0,	0],
    [180,  	"Concrete Shelter",     		"Land_CncShelter_F",                 			0,   	1,		0,	0],
    [200,  	"Concrete Walkway",     		"Land_GH_Platform_F",                			0, 		3.5,	0,	0],
    [250,  	"Tall Concrete Wall",   		"Land_Mil_WallBig_4m_F",             			0,		2,		0,	0],
	[250,  	"Shoot House (Prone)",			"Land_Shoot_House_Tunnel_Prone_F",				0,		2,		0,	1],
	[250,  	"Shoot House (Crouch)",			"Land_Shoot_House_Tunnel_Crouch_F",				0,		2,		0,	1],
	[250,  	"Shoot House (Stand)",			"Land_Shoot_House_Tunnel_Stand_F",				0,		2,		0,	1],
	[250,  	"Wood Light Pole",				"Land_PowLines_WoodL",							0,		2,		0,	1],
	[250, 	"Small Bunker",         		"Land_BagBunker_Small_F",          				180,	3,		0,	0],
    [300, 	"Long Concrete Wall",   		"Land_CncBarrierMedium4_F",          			0,  	3,		0,	0],
    [400, 	"Large Ramp",           		"Land_VR_Slope_01_F",                			0,  	4,		0,	0],
	[500, 	"Fuel Barrel",					"Land_MetalBarrel_F",		    				0,  	1,		1,	0],	//explosive
    [500, 	"Bunker Block",         		"Land_Bunker_01_blocks_3_F",         			0,  	2,		0,	0],
    [750, 	"Ladder",               		"Land_PierLadder_F",                 			0,  	1,		0,	0],
	[750, 	"Static MG42",         			"LIB_MG42_Lafette_Deployed",         			0,  	1,		0,	1],	//invincible
	[750, 	"Static M1919A4 low",   		"LIB_M1919_M2",  				    			0,  	1,		0,	1],	//invincible
	[750, 	"Obstacle - Bridge",   			"Land_prebehlavka",  				   			0,  	1,		0,	1],	//invincible
    [800, 	"Ammo box",    					"LIB_BasicAmmunitionBox_US",                	0,  	1,		0,	0],
    [950, 	"Stairs",               		"Land_GH_Stairs_F",                  			0,  	4,		0,	1],	//invincible
    [1000, 	"Metal Watchtower",     		"Land_Hlaska",		                			0,		3.5,	0,	0],
    [1000, 	"Concrete Platform",    		"BlockConcrete_F",                   			0,		5,		0,	0],
	[1000, 	"Bag Bunker",					"Land_Fort_Bagfence_Bunker",		  			0,		4,		0,	0],
    [4500, 	"Pillbox",              		"Land_PillboxBunker_01_hex_F",      			90,		5,		0,	0],
    [9500, 	"Modular Bunker",       		"Land_Bunker_01_Small_F",          				180,	5,		0,	0],
	[10000,	"FlaK 30",						"LIB_FlaK_30",									0,		1,		0,	1], //invincible
	[20000,	"Flakvierling 38",				"LIB_Flakvierling_38",							0,  	1,		0,	1], //invincible
	[30000,	"M2 60mm Mortar",				"LIB_M2_60",									0,		1,		0,	1], //invincible
	[40000,	"7.5 cm PaK 40",				"LIB_PAK40",									0,		1,		0,	1]  //invincible
];

/* Time of Day*/
DAY_TIME_FROM = ("DAY_TIME_FROM" call BIS_fnc_getParamValue);
DAY_TIME_TO = ("DAY_TIME_TO" call BIS_fnc_getParamValue);

// Check for sneaky inverted configuration. FROM should always be before TO.
if (DAY_TIME_FROM > DAY_TIME_TO) then {
    DAY_TIME_FROM = DAY_TIME_TO - 2;
};

/* Starter MediKits */
BULWARK_MEDIKITS = ("BULWARK_MEDIKIT" call BIS_fnc_getParamValue);
