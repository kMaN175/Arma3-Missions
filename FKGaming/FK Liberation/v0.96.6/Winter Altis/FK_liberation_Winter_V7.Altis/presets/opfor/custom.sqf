/*
    Needed Mods:
    - CUP Weapons
    - CUP Vehicles
    - CUP Units

    Optional Mods:
    - None
*/

// Enemy infantry classes
opfor_officer = "O_CUPONK_Officer";                                     // Officer
opfor_squad_leader = "O_CUPONK_Squad_Leader";                           // Squad Leader
opfor_team_leader = "O_CUPONK_Squad_Leader";                            // Team Leader
opfor_sentry = "O_CUPONK_Rifleman";                                     // Rifleman (Lite)
opfor_rifleman = "O_CUPONK_Rifleman_Backpack";                          // Rifleman
opfor_rpg = "O_CUPONK_Asst_AT_Rifleman_RPG";                            // Rifleman (LAT)
opfor_grenadier = "O_CUPONK_Grenadier";                                	// Grenadier
opfor_machinegunner = "O_CUPONK_Automatic_Rifleman";                    // Autorifleman
opfor_heavygunner = "O_CUPONK_Machinegunner";                           // Heavy Gunner
opfor_marksman = "O_CUPONK_Sniper";                                     // Marksman
opfor_sharpshooter = "O_CUPONK_Sniper_Night";                       	// Sharpshooter
opfor_sniper = "O_CUPONK_Sniper_Night";                                 // Sniper
opfor_at = "O_CUPONK_AT_Specialist";                                    // AT Specialist
opfor_aa = "O_CUPONK_AA_Specialist";                                    // AA Specialist
opfor_medic = "O_CUPONK_Medic";                                         // Medic
opfor_engineer = "O_CUPONK_Engineer";                                   // Engineer
opfor_paratrooper = "O_CUPONK_Special_Soldier";                 		// Paratrooper

// Enemy vehicles used by secondary objectives.
opfor_mrap = "O_CUPONK_UAZ";                                  			// Land Rover 110 (Transport)
opfor_mrap_armed = "O_CUPONK_UAZ_AGS_30";                               // Land Rover 110 (M2)
opfor_transport_helo = "O_CUPONK_MI_8MT";                               // UH-1H
opfor_transport_truck = "O_CUPONK_Ural";                               	// Ural
opfor_ammobox_transport = "O_CUPONK_Ural_Open";                        	// Ural (Open) -> Has to be able to transport resource crates!
opfor_fuel_truck = "O_CUPONK_Ural_Refuel";                            	// Ural (Refuel)
opfor_ammo_truck = "O_CUPONK_Ural_Ammo";                            	// Ural (Ammo)
opfor_fuel_container = "Land_Pod_Heli_Transport_04_fuel_F";             // Taru Fuel Pod
opfor_ammo_container = "Land_Pod_Heli_Transport_04_ammo_F";             // Taru Ammo Pod
opfor_flag = "FlagCarrierOPFOR_EP1";                                 	// Flag

/* Adding a value to these arrays below will add them to a one out of however many in the array, random pick chance.
Therefore, adding the same value twice or three times means they are more likely to be chosen more often. */

/* Militia infantry. Lightweight soldier classnames the game will pick from randomly as sector defenders.
Think of them like garrison or military police forces, which are more meant to control the local population instead of fighting enemy armies. */
militia_squad = [
    "O_CUPONK_Rifleman",                                       			// Militiaman
    "O_CUPONK_Rifleman_AKS",                                            // Militiaman (AK-74)
    "O_CUPONK_Grenadier",                                          		// Militiaman (AK-74 GL)
    "O_CUPONK_Squad_Leader",                                          	// Team Leader
    "O_CUPONK_Rifleman_RPG",                                          	// Militiaman (RPG-7)
    "O_CUPONK_Automatic_Rifleman",                                      // Automatic Rifleman
    "O_CUPONK_Sniper",                                              	// Sniper
    "O_CUPONK_Medic",                                      				// Bonesetter
    "O_CUPONK_Engineer"                                             	// Militia Mechanic
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders. Can also be empty for only infantry milita.
militia_vehicles = [
    "O_CUPONK_UAZ_AGS_30",                                              // Land Rover 110 (M2)
    "O_CUPONK_UAZ_AGS_30",                                              // Land Rover 110 (M2)
    "O_CUPONK_BRDM_2",                                               	// BTR-40 (DSHKM)
    "O_CUPONK_BTR_60PB"                                          		// MT-LB LV
];

// All enemy vehicles that can spawn as sector defenders and patrols at high enemy combat readiness (aggression levels).
opfor_vehicles = [
    "O_CUPONK_UAZ_DShKM",                                               // UAZ (DShKM)
    "O_CUPONK_UAZ_DShKM",                                               // UAZ (DShKM)
    "O_CUPONK_UAZ_AGS_30",                                              // UAZ (AGS-30)
    "O_CUPONK_UAZ_AGS_30",                                              // UAZ (AGS-30)
    "O_CUPONK_UAZ_SPG",                                               	// UAZ (SPG-9)
    "O_CUPONK_BMP1",                                                  	// BMP-1P
    "O_CUPONK_BMP1",                                                    // BMP-2
    "O_CUPONK_BMP1",                                                    // BMP-2
    "O_CUPONK_BMP1",                                                    // BMP-2
    "O_CUPONK_Ural_ZU_23",                                            	// ZSU-23-4 Afghanski
    "O_CUPONK_ZSU_23_4",                                                // ZSU-23-4
    "O_CUPONK_BM_21",                                                	// BMP-2 ZU-23
    "O_CUPONK_T34_85",                                                  // T-55
    "O_CUPONK_T55",                                                    	// T-72
    "O_CUPONK_T55"                                                     	// T-72
];

// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
opfor_vehicles_low_intensity = [
    "O_CUPONK_T55",                                                 	// UAZ (DShKM)
    "O_CUPONK_T55",                                                 	// UAZ (DShKM)
    "O_CUPONK_UAZ_AGS_30",                                              // UAZ (AGS-30)
    "O_CUPONK_UAZ_SPG",                                               	// UAZ (SPG-9)
    "O_CUPONK_BMP1",                                                	// MT-LB LV
    "O_CUPONK_Ural_ZU_23",                                              // Ural (ZU-23)
    "O_CUPONK_Ural_ZU_23",                                              // Ural (ZU-23)
    "O_CUPONK_BTR_60PB",                                                // BTR-60PB
    "O_CUPONK_BRDM_2",                                                  // BRDM-2
    "O_CUPONK_BRDM_2",                                                  // BRDM-2
    "O_CUPONK_BTR_60PB",                                               	// BTR-40 (DSHKM)
    "O_CUPONK_BMP1",                                                   	// BMP-1
    "O_CUPONK_BMP1",                                                  	// BMP-1P
    "O_CUPONK_Type_55_DSHKM"                                            // M113A3
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles = [
    "O_CUPONK_T55",                                                 	// UAZ (DShKM)
    "O_CUPONK_UAZ_AGS_30",                                              // UAZ (AGS-30)
    "O_CUPONK_UAZ_AGS_30",                                              // UAZ (AGS-30)
    "O_CUPONK_UAZ_SPG",                                               	// UAZ (SPG-9)
    "O_CUPONK_BTR_60PB",                                                // BTR-60PB
    "O_CUPONK_BMP1",                                                  	// BMP-1P
    "O_CUPONK_BMP1",                                                   	// BMP-2
    "O_CUPONK_BMP1",                                                   	// BMP-2
    "O_CUPONK_Ural_ZU_23",                                            	// ZSU-23-4 Afghanski
    "O_CUPONK_ZSU_23_4",                                                // ZSU-23-4
    "O_CUPONK_T34_85",                                                  // T-55
    "O_CUPONK_T34_85",                                                  // T-55
    "O_CUPONK_T55",                                                    	// T-72
    "O_CUPONK_T55",                                                    	// T-72
    "O_CUPONK_MI_8MTV3",                                                // Mi-8MT
    "O_CUPONK_Mi_25",                                          			// Mi-24D
    "O_CUPONK_MI_8MTV3",                                             	// UH-1H (Armed)
    "O_CUPONK_MI_8MTV3",                                       			// UH-1H (Gunship)
    "O_CUPONK_Mi_25"                                           			// Mi-24D
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles_low_intensity = [
    "O_CUPONK_T55",                                                 	// UAZ (DShKM)
    "O_CUPONK_T55",                                                 	// UAZ (DShKM)
    "O_CUPONK_BMP1",                                                	// MT-LB LV
    "O_CUPONK_BTR_60PB",                                           		// BTR-60PB
    "O_CUPONK_Type_55_DSHKM",                                       	// M113A3
    "O_CUPONK_BTR_60PB",                                            	// BTR-40 (DSHKM)
    "O_CUPONK_BRDM_2",                                              	// BRDM-2
    "O_CUPONK_BMP1",                                                	// BMP-1
    "O_CUPONK_BMP1",                                                	// BMP-1P
    "O_CUPONK_T34_85",                                                  // T-34-85M
    "O_CUPONK_T34_85",                                                  // T-34-85M
    "O_CUPONK_BMP1",                                                	// BMP-2 ZU-23
    "O_CUPONK_Ural_ZU_23",                                              // Ural (ZU-23)
    "O_CUPONK_MI_8MTV3",                                                // UH-1H
    "O_CUPONK_MI_8MTV3",                                       			// UH-1H (Gunship)
    "O_CUPONK_MI_8MTV3"                                              	// UH-1H (Armed)
];

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviours may occur.   */
opfor_troup_transports = [
    "O_CUPONK_BMP1",                                                   	// BMP-1
    "O_CUPONK_Type_55_DSHKM",                                           // M113A3
    "O_CUPONK_BMP1",                                                	// MT-LB LV
    "O_CUPONK_MI_8MTV3",                                                // UH-1H
    "O_CUPONK_MI_8MTV3",                                             	// UH-1H (Armed)
    "O_CUPONK_BTR_60PB",                                                // BTR-60PB
    "O_CUPONK_Mi_25",                                          			// Mi-24D
    "O_CUPONK_MI_8MTV3",                                                // Mi-8MT
    "O_CUPONK_T34_85",                                                  // T-34-85M
    "O_CUPONK_BMP1",                                                  	// BMP-1P
    "O_CUPONK_BMP1"                                                    	// BMP-2
];

// Enemy rotary-wings that will need to spawn in flight.
opfor_choppers = [
    "O_CUPONK_MI_8MTV3",                                                // UH-1H
    "O_CUPONK_MI_8MTV3",                                             	// UH-1H (Armed)
    "O_CUPONK_MI_8MTV3",                                      			// UH-1H (Gunship)
    "O_CUPONK_Mi_25",                                          			// Mi-24D
    "O_CUPONK_MI_8MTV3"                                                 // Mi-8MT
];

// Enemy fixed-wings that will need to spawn in the air.
opfor_air = [
    "CUP_O_L39_TK",                                                     // L-39ZA
    "O_CUPONK_SU_25K_Frogfoot"                                          // Su-25 Frogfoot
];
