/*
Needed Mods:
- Unsung

Optional Mods:
- None
*/

// Enemy infantry classes
opfor_officer = "uns_men_VC_mainforce_off";											//Officer
opfor_squad_leader = "uns_men_VC_mainforce_nco";									//Squad Leader
opfor_team_leader = "uns_men_VC_mainforce_COM";									//Team Leader
opfor_sentry = "uns_men_VC_mainforce_HMG";										//Rifleman (Lite)
opfor_rifleman = "uns_men_VC_mainforce_RF1";											//Rifleman
opfor_rpg = "uns_men_VC_mainforce_AT2";											//Rifleman (LAT)
opfor_grenadier = "uns_men_VC_mainforce_SAP";										//Grenadier
opfor_machinegunner = "uns_men_VC_mainforce_MGS";									//Autorifleman
opfor_heavygunner = "uns_men_VC_mainforce_MGS";									//Heavy Gunner
opfor_marksman = "uns_men_VC_mainforce_Rmrk";										//Marksman
opfor_sharpshooter = "uns_men_VC_mainforce_RF5";								//Sharpshooter
opfor_sniper = "uns_men_VC_mainforce_RF5";											//Sniper
opfor_at = "uns_men_VC_mainforce_AT2";											//AT Specialist
opfor_aa = "uns_men_VC_mainforce_MGS";											//AA Specialist
opfor_medic = "uns_men_VC_mainforce_MED";												//Combat Life 
opfor_engineer = "uns_men_VC_mainforce_RTO";										//Engineer
opfor_paratrooper = "uns_men_VC_mainforce_Rmg";									//Paratrooper

// Enemy vehicles used by secondary objectives.
opfor_transport_truck = "uns_nvatruck_mg";
					//NVA Ural MG
opfor_transport_helo = "uns_Mi8T_VPAF";									//Mi-8t 
opfor_transport_truck = "uns_nvatruck_mg";									//Tempest Transport (Covered)
opfor_ammobox_transport = "uns_nvatruck_open";								//Tempest Transport (Open) -> Has to be able to transport resource crates
opfor_fuel_truck = "uns_nvatruck_camo";									//Tempest Fuel
opfor_ammo_truck = "uns_nvatruck_camo";									//Tempest Ammo
opfor_fuel_container = "uns_dshk_supplycrate";								//Taru Fuel Pod
opfor_ammo_container = "uns_Type36supplycrate";								//Taru Ammo Pod
opfor_flag = "uns_FlagCarrierVC";										//Vietcong Flag

/* Adding a value to these arrays below will add them to a one out of however many in the array, random pick chance.
Therefore, adding the same value twice or three times means they are more likely to be chosen more often. */

/* Militia infantry. Lightweight soldier classnames the game will pick from randomly as sector defenders.
Think of them like garrison or military police forces, which are more meant to control the local population instead of fighting enemy armies. */
militia_squad = [
	"uns_men_NVA_recon_65_RF2",														//Rifleman (Lite)
	"uns_men_NVA_recon_65_AS3",														//Rifleman (Lite)
	"uns_men_NVA_recon_65_AS6",														//Rifleman
	"uns_men_NVA_recon_65_MGS",														//Rifleman
	"uns_men_NVA_recon_65_RF3",													//Rifleman (AT)
	"uns_men_NVA_recon_65_AS2",													//Autorifleman
	"uns_men_NVA_recon_65_SAP",													//Marksman
	"uns_men_NVA_recon_65_AT2",												//Medic
	"uns_men_NVA_recon_65_AS2"													//Engineer
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders.
militia_vehicles = [
	"uns_zil157",
				//Zil-153 Truck
	"uns_nvatruck_open",
				//NVA Ural Open
	"uns_nvatruck_mg",
				//NVA Ural MG
	"uns_nvatruck_camo",
				//NVA Ural Camo
	"uns_nvatruck",
				//NVA Ural
	"uns_Type55_patrol"													//Qilin (armed)
];

// All enemy vehicles that can spawn as sector defenders and patrols at high enemy combat readiness (aggression levels).
opfor_vehicles = [
	"uns_BTR152_DSHK",
				//BTR 152 APC
	"uns_Type55",
				//Type 55 APC (Transport)
	"uns_Type55_RR57",
				//Type 55 APC (57mm Type36)
	"uns_Type55_RR73",
				//Type 55 APC (73mm SPG9)
	"uns_Type55_MG",
				//Type 55 APC (DShk)
	"uns_Type55_M40",
				//Type 55 APC (M40)
	"uns_Type55_patrol",
				//Type 55 APC (Patrol)
	"uns_Type55_LMG",
				//Type 55 APC (PK)
	"uns_Type55_twinMG",
				//Type 55 APC (Twin DSkhk)
	"uns_nvatruck",
				//NVA Ural
	"uns_nvatruck_camo",
				//NVA Ural (Camo)
	"uns_nvatruck_mg",
				//NVA Ural (MG)
	"uns_nvatruck_open",
				//NVA Ural (Open)
	"uns_zil157",
				//Zil-157 Truck
	"uns_t34_76_vc",
				//T-34 Medium Tank
	"uns_ot34_85_nva",
				//OT-34 Medium Tank
	"uns_Type63_mg",
				//Type63 APC
	"pook_ZSU_NVA"
				//ZSU-23-4 Shilka
	];


// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
opfor_vehicles_low_intensity = [
	"uns_nvatruck",
				//NVA Ural
	"uns_nvatruck_camo",
				//NVA Ural (Camo)
	"uns_nvatruck_mg",
				//NVA Ural (MG)
	"uns_nvatruck_open",
				//NVA Ural (Open)
	"uns_Type55",
				//Type 55 APC (Transport)
	"uns_Type55_MG",
				//Type 55 APC (DShk)
	"uns_Type55_patrol"
				//Type 55 APC (Patrol)
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles = [
	"uns_BTR152_DSHK",
				//BTR 152 APC
	"uns_Type55",
				//Type 55 APC (Transport)
	"uns_Type55_RR57",
				//Type 55 APC (57mm Type36)
	"uns_Type55_RR73",
				//Type 55 APC (73mm SPG9)
	"uns_Type55_MG",
				//Type 55 APC (DShk)
	"uns_Type55_M40",
				//Type 55 APC (M40)
	"uns_Type55_patrol",
				//Type 55 APC (Patrol)
	"uns_Type55_LMG",
				//Type 55 APC (PK)
	"uns_Type55_twinMG",
				//Type 55 APC (Twin DSkhk)
	"uns_nvatruck",
				//NVA Ural
	"uns_nvatruck_camo",
				//NVA Ural (Camo)
	"uns_nvatruck_mg",
				//NVA Ural (MG)
	"uns_nvatruck_open",
				//NVA Ural (Open)
	"uns_zil157",
				//Zil-157 Truck
	"uns_t34_76_vc",
				//T-34 Medium Tank
	"uns_ot34_85_nva",
				//OT-34 Medium Tank
	"uns_Type63_mg",
				//Type63 APC
	"uns_BTR152_ZPU",
				//BTR152 (ZPU4 14.5mm)
	"uns_nvatruck_s60",
				//NVA Ural (S60)
	"uns_nvatruck_type65",
				//NVA Ural (Type65)
	"uns_nvatruck_zpu",
				//NVA Ural (ZPU)
	"uns_nvatruck_zu23",
				//NVA Ural (Zu-23)
	"uns_Type55_ZU",
				//Type 55 APC (Zu-23) 
	"pook_ZSU_NVA"
				//ZSU-23-4 Shilka
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles_low_intensity = [
	"uns_nvatruck",
				//NVA Ural
	"uns_nvatruck_camo",
				//NVA Ural (Camo)
	"uns_nvatruck_mg",
				//NVA Ural (MG)
	"uns_nvatruck_open",
				//NVA Ural (Open)
	"uns_Type55",
				//Type 55 APC (Transport)
	"uns_Type55_MG",
				//Type 55 APC (DShk)
	"uns_Type55_patrol"
				//Type 55 APC (Patrol)
];

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviours may occur.	*/
opfor_troup_transports = [
	"uns_Mi8T_VPAF",
				//Mi-8T Hip-C
	"uns_BTR152_DSHK",
				//BTR 152 APC
	"uns_nvatruck",
				//NVA Ural
	"uns_nvatruck_camo",
				//NVA Ural (Camo)
	"uns_nvatruck_mg",
				//NVA Ural (MG)
	"uns_nvatruck_open",
				//NVA Ural (Open)
	"uns_zil157"
				//Zil-157 Truck
];

// Enemy rotary-wings that will need to spawn in flight.
opfor_choppers = [
	"uns_ch34_sog_M60",										//Mi-290 Taru (Bench)
	"uns_ch34_sog_M60",									//Po-30 Orca (Armed)
	"uns_ch34_sog"									//Mi-48 Kajman
];

// Enemy fixed-wings that will need to spawn in the air.
opfor_air = [
	"uns_UH1C_M6_M200_1AC",									//To-199 Neophron (CAS)
	"uns_UH1C_M21_M200_1AC"										//To-201 Shikra
];
