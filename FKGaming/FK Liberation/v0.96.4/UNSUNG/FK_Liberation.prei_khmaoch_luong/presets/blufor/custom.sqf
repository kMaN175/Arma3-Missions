/*
Needed Mods:
- Unsung

Optional Mods:
- None
*/

/* - Support classnames.
Each of these should be unique, the same classnames for different purposes may cause various unpredictable issues with player actions. Or not, just don't try!	*/
FOB_typename = "LAND_UNS_OM";									// This is the main FOB HQ building. 																									Default is "LAND_UNS_OM".
FOB_box_typename = "Land_Cargo10_military_green_F";							// This is the FOB as a container. 																										Default is "Land_Cargo10_military_green_F".
FOB_truck_typename = "uns_zil157_repair";								// This is the FOB as a vehicle.																										Default is "uns_zil157_repair".
Arsenal_typename = "B_supplyCrate_F";									// This is the virtual arsenal as portable supply crates.  																				Default is "B_supplyCrate_F".
Respawn_truck_typename = "uns_m37b1";						// This is the mobile respawn (and medical) truck. 																			Default is "uns_m37b1".
huron_typename = "uns_ch47_m60_1AC";						// This is Spartan 01, a multipurpose mobile respawn as a helicopter. 																	Default is "uns_ch47_m60_1AC".
crewman_classname = "uns_men_US_Arty_G";											// This defines the crew for vehicles. 																									Default is "uns_men_US_Arty_G".
pilot_classname = "uns_pilot6";										// This defines the pilot for helicopters. 																								Default is "uns_pilot6".
KP_liberation_little_bird_classname = "uns_UH1D_m60_light"; 				// These are the little birds which spawn on the Freedom or at Chimera base.										Default is "uns_UH1D_m60_light".
KP_liberation_boat_classname = "B_Boat_Transport_01_F"; 				// These are the boats which spawn at the stern of the Freedom.																			Default is "B_Boat_Transport_01_F".
KP_liberation_truck_classname = "uns_M35A2";				// These are the trucks which are used in the logistic convoy system.																	Default is "B_Truck_01_transport_F".
KP_liberation_small_storage_building = "ContainmentArea_02_sand_F";		// A small storage area for resources.																									Default is "ContainmentArea_02_sand_F".
KP_liberation_large_storage_building = "ContainmentArea_01_sand_F";		// A large storage area for resources.																									Default is "ContainmentArea_01_sand_F".
KP_liberation_recycle_building = "LAND_UNS_Motorpool_repair";					// The building defined to unlock FOB recycling functionality.																			Default is "LAND_UNS_Motorpool_repair".
KP_liberation_air_vehicle_building = "Land_wx_radar";				// The building defined to unlock FOB air vehicle functionality.																		Default is "Land_wx_radar".
KP_liberation_heli_slot_building = "Land_HelipadEmpty_F";				// The helipad used to increase the GLOBAL rotary-wing cap.																				Default is "Land_HelipadEmpty_F".
KP_liberation_plane_slot_building = "Land_smallhangaropen";				// The hangar used to increase the GLOBAL fixed-wing cap.																				Default is "Land_smallhangaropen".
KP_liberation_supply_crate = "CargoNet_01_box_F";						// This defines the supply crates, as in resources.														Default is "CargoNet_01_box_F".
KP_liberation_ammo_crate = "B_CargoNet_01_ammo_F";						// This defines the ammunition crates.																Default is "B_CargoNet_01_ammo_F".
KP_liberation_fuel_crate = "CargoNet_01_barrels_F";						// This defines the fuel crates.																	Default is "CargoNet_01_barrels_F".

/* - Friendly classnames.
Each array below represents one of the 7 pages within the build menu. 
Format: ["vehicle_classname",supplies,ammunition,fuel],	Example: ["B_APC_Tracked_01_AA_F",300,150,150],
The above example is the NATO IFV-6a Cheetah, it costs 300 supplies, 150 ammunition and 150 fuel to build.	*/
infantry_units = [
	["uns_US_1ID_RF1",15,0,0],										//Rifleman (Light)
	["uns_US_1ID_RF2",20,0,0],												//Rifleman
	["uns_US_1ID_RF3",30,0,0],											//Rifleman (AT)
	["uns_US_25ID_GL",25,0,0],											//Grenadier
	["uns_US_25ID_RF4",25,0,0],											//Autorifleman
	["uns_US_25ID_MGSG",35,0,0],											//Heavygunner
	["uns_US_25ID_MRK",30,0,0],											//Marksman
	["uns_men_US_3FRC_MRK",40,0,0],										//Sharpshooter
	["uns_men_USMC_65_AT",50,10,0],											//AT Specialist
	["uns_men_USMC_65_MGAASG",50,10,0],											//AA Specialist
	["uns_US_25ID_MED",30,0,0],												//Combat Life Saver
	["uns_US_25ID_ENG",30,0,0],											//Engineer
	["uns_US_25ID_DEM",30,0,0],											//Explosives Specialist
	["uns_men_USMC_65_SCT",20,0,0],												//Recon Scout
	["uns_men_USMC_65_AT",30,0,0],											//Recon Scout (AT)
	["uns_men_US_5SFG_MRK",30,0,0],												//Recon Marksman
	["uns_men_US_5SFG_MRK2",40,0,0],									//Recon Sharpshooter
	["uns_men_US_6SFG_MED",30,0,0],											//Recon Paramedic
	["uns_men_USMC_68_DEM",30,0,0],											//Recon Demolition Expert
	["uns_men_US_6SFG_MRK3",70,5,0],												//Sniper
	["uns_men_US_6SFG_MRK2",70,5,0],											//Sniper (Arid)
	["uns_men_US_6SFG_MRK",70,5,0],											//Sniper (Lush)
	["uns_men_US_5SFG_MRK2",70,5,0],										//Sniper (Semi-Arid)
	["uns_men_US_5SFG_MRK",20,0,0],												//Spotter
	["uns_men_US_3FRC_MED",10,0,0],												//Crewman
	["uns_pilot1",20,0,0],											//Para Trooper
	["uns_pilot2",10,0,0],											//Helicopter Crew
	["uns_pilot3",10,0,0],											//Helicopter Pilot
	["uns_pilot4",10,0,0]												//Pilot
];

light_vehicles = [
	["uns_m274", 20,0,10],
	["uns_willys",75,0,25],
			//M-151 MUTT
	["uns_willys_2_usmc",75,0,25],
			//M-151 USMC
	["uns_willys_2_m60",75,25,25],
			//M-151 Commando
	["uns_willys_2_m1919",75,50,25],
			//M-151 Patrol
	["uns_willysmg50",75,50,25],
			//M-151 M2
	["uns_willysm40",75,75,25],
			//M-151 M40
	["uns_m37b1_m1919",100,50,50],
			//M-37B1 Dodge M1919
	["uns_M35A2",100,0,100],
			//M35A2 Truck
	["uns_M35A2_Open",100,0,100],
			//M35A2 Truck (open)
	["UNS_Zodiac_W",25,0,25],
			//Zodiac (Assault)
	["uns_pbr",200,150,150],
			//PBR MkII (M2)
	["uns_PBR_M10",300,200,150],
			//PBR MkII (Flamethrower)
	["uns_pbr_mk18",300,400,150]
			//PBR MkII (Mk18 GL)
];

heavy_vehicles = [
	["uns_M113_30cal",300,100,400],
			//M-113 30cal
	["uns_M113_M134",300,200,400],
			//M113 M134
	["uns_M113_M60",300,100,400],
			//M-113 M60
	["uns_M113_XM182",300,200,400],
			//M-113 ACAV (XM182)
	["uns_M132",300,0,1000],
			//M-132 Flamethrower
	["uns_M113_M30_HQ",300,400,400],
			//M-113 Mortar carrier
	["uns_M113_ENG",300,0,400],
			//M-113 Engineer
	["uns_M577_amb",300,0,400],
			//M-577 Ambulance
	["uns_M113A1_M40",300,500,400],
			//M-113 A1 M40
	["uns_xm706e2",300,150,300],
			//XM-706-E2 Patrol
	["uns_xm706e1",300,300,300],
			//XM-706-E1 30Cal
	["uns_m551",700,1000,500],
			//M-551 Sheridan
	["uns_m48a3",800,1000,600]
			//M-48A3 Patton MBT
];

air_vehicles = [
	["uns_H13_amphib_CAV",200,0,200],
	["uns_H13_gunship_CAV",200,500,200],
	["uns_H13_transport_Army",200,150,200],
	["uns_oh6_m60",200,150,200],
	["uns_oh6_m27r",900,500,200],
	["uns_uh1D_med",500,0,300],
	["uns_UH1D_m60",500,150,300],
	["UNS_UH1B_TOW",900,700,300],
	["uns_UH1C_M21_M200_1AC",900,800,500],
	["uns_UH1F_M6_M158_Hornet",900,900,500],
	["UNS_AH1G",900,1000,700],
	["uns_ch53a_med_usmc", 500,0,500],
	["uns_ch34_sog_M60",500,150,500],
	["uns_ch34_army_M60",500,150,500],
	["uns_ch34_army",500,0,500],
	["uns_h21c_mg",500,50,500],
	["uns_ch47a_medevac",1000,0,800],
	["uns_ch47_m60_army",1000,50,800],
	["uns_ach47_m134",1000,800,800],
	["uns_c1a6",500,0,500],
	["uns_AC47",1000,800,700],
	["uns_A7_CAS",1000,900,700],
	["uns_A6_Intruder_CAS",1000,900,700],
	["uns_A1J_CAS",900,600,600],
	["UNS_skymaster_CAS",1000,500,500],
	["uns_f100b_AGM",1000,1000,800],
	["uns_F4J_AGM",1000,1000,800],
	["uns_F4E_CHICO",1500,1000,1000]
];

static_vehicles = [
	["uns_m1919_low",50,50,0],
			//M1919A4 .30cal (Low)
	["uns_m2_low",70,70,0],
			//M-2HB .50cal (Low)
	["uns_m2_high",70,70,0],
			//M-2HB .50cal (High)
	["uns_m60_low",50,50,0],
			//M60 (Low)
	["uns_m60_high",50,50,0],
			//M60 (High)
	["uns_US_MK18_low",100,100,0],
			//Mk18 (Low)
	["uns_M40_106mm_US",200,200,0],
			//M-40 106mm 
	["uns_M1_81mm_mortar_arty",150,150,0],
			//81mm Mortar
	["uns_US_SearchLight",20,20,0],
			//Searchlight
	["Uns_M55_Quad",600,600,0],
			//M-55 Quad 50 AA
	["Uns_M114_artillery",600,600,0]
			//M114 155mm Howitzer
];

buildings = [
	["Land_Net_Open",0,0,0],
	["Land_Wood_Tower2",0,0,0],
	["land_wood_tower",0,0,0],
	["LAND_tower_1",0,0,0],
	["uns_mash_main",0,0,0],
	["uns_mash",0,0,0],
	["uns_FARPtent",0,0,0],
	["LAND_uns_tentbarracks",0,0,0],
	["uns_camp",0,0,0],
	["LAND_t_2_FOP2",0,0,0],
	["LAND_tarp_1",0,0,0],
	["LAND_uns_armyhut2",0,0,0],
	["LAND_uns_armyhut3",0,0,0],
	["LAND_UNS_Hootch",0,0,0],
	["LAND_UNS_HootchE",0,0,0],
	["LAND_UNS_GuardHouse",0,0,0],
	["LAND_UNS_Latrine",0,0,0],
	["LAND_uns_showers",0,0,0],
	["LAND_uns_CongCage",0,0,0],
	["LAND_uns_signaltower",0,0,0],
	["uns_FlagCarrierUS",0,0,0],
	["uns_FlagCarrierMed",0,0,0],
	["Land_LampShabby_F",0,0,0],
	["Land_WX_japbunker01",0,0,0],
	["Land_WX_japbunker02",0,0,0],
	["wx_defenceposition_06_Ammobox",0,0,0],
	["wx_defenceposition_06_Chest",0,0,0],
	["wx_defenceposition_06_MapTripod",0,0,0],
	["wx_defenceposition_06_StapleBed",0,0,0],
	["Land_Chair_EP1",0,0,0],
	["Land_WoodenTable_large_F",0,0,0],
	["Land_Campfire",0,0,0],
	["ABox",0,0,0],
	["Mortarshellsbox",0,0,0],
	["ABoxes",0,0,0],
	["LAND_barrel5",0,0,0],
	["uns_beer1",0,0,0],
	["c_ration_16",0,0,0],
	["c_ration",0,0,0],
	["uns_box1",0,0,0],
	["uns_kbox1",0,0,0],
	["mbox",0,0,0],
	["uns_medical1",0,0,0],
	["uns_woodbox1",0,0,0],
	["uns_cot1",0,0,0],
	["uns_cabinet1",0,0,0],
	["Land_metalcrate",0,0,0],
	["Land_drevena_bedna",0,0,0],
	["uns_desk1",0,0,0],
	["table",0,0,0],
	["uns_battlecross",0,0,0],
	["LAND_CSJBladder",0,0,0],
	["uns_generator1",0,0,0],
	["mapboard",0,0,0],
	["Sign_2",0,0,0],
	["sign_HELI",0,0,0],
	["uns_water1",0,0,0],
	["plp_bo_RadioSixties_Burning",0,0,0],
	["uns_radio2_land_loudspeaker",0,0,0],
	["wx_defenceposition_02",0,0,0],
	["wx_sandbag03_end",0,0,0],
	["wx_sandbag02",0,0,0],
	["wx_sandbag03_mid",0,0,0],
	["wx_sandbag04",0,0,0],
	["wx_sandbag05",0,0,0],
	["uns_sbagwall_u",0,0,0],
	["SB_Wall_3",0,0,0],
	["SB_Wall_2",0,0,0],
	["uns_sbagwall_8",0,0,0],
	["SB_Wall_1",0,0,0],
	["SB_Wall_6",0,0,0],
	["SB_Wall_4",0,0,0],
	["wx_defenceposition_01",0,0,0],
	["Land_wx_fielddefence_01",0,0,0],
	["Land_wx_fielddefence_02",0,0,0],
	["Land_wx_fielddefence_03",0,0,0],
	["Land_wx_fielddefence_04",0,0,0],
	["Land_wx_fielddefence_05",0,0,0],
	["Land_wx_fielddefence_06",0,0,0],
	["Land_wx_fielddefence_07",0,0,0],
	["LAND_P_wire2",0,0,0],
	["LAND_P_wire1",0,0,0],
	["LAND_CSJ_punjiWall",0,0,0],
	["Razorwire",0,0,0],
	["wx_defenceposition_03",0,0,0],
	["wx_defenceposition_04",0,0,0],
	["wx_defenceposition_05",0,0,0],
	["wx_defenceposition_06",0,0,0],
	["Land_WX_japbunker03",0,0,0],
	["Land_WX_japbunker03_blastwall",0,0,0],
	["wx_logbunker01",0,0,0],
	["wx_logbunker02",0,0,0],
	["Land_wx_trench04",0,0,0],
	["Land_wx_trench05",0,0,0],
	["Land_wx_trench06",0,0,0],
	["Land_wx_trench07",0,0,0],
	["LAND_uns_bunker_troop",0,0,0],
	["LAND_uns_bunker_troop2",0,0,0],
	["LAND_uns_bunker_troop3",0,0,0],
	["LAND_sb_bunker_small",0,0,0],
	["LAND_sb_bunker_main",0,0,0],
	["LAND_t_sb_20",0,0,0],
	["LAND_t_sb_45_half",0,0,0],
	["LAND_t_sb_bunker2",0,0,0],
	["LAND_t_sb_cnr",0,0,0],
	["LAND_t_sb_cnr_half",0,0,0],
	["LAND_t_sb_Cross",0,0,0],
	["LAND_t_sb_pit1",0,0,0],
	["LAND_t_sb_pit2",0,0,0],
	["LAND_t_sb_pit3",0,0,0],
	["LAND_t_sb_Tee",0,0,0],
	["LAND_uns_weapon_pit",0,0,0],
	["TargetP_Inf4_Acc2_F",0,0,0],
	["LAND_uns_evac_pad",0,0,0],
	["Land_Heli_H2",0,0,0],	
	["Land_WX_BaileyBridge_01",0,0,0],
	["Land_WX_BaileyBridge_02",0,0,0],
	["Land_WX_BaileyBridge_03",0,0,0],
	["Land_ClutterCutter_large_F",0,0,0]
];

support_vehicles = [
	[Arsenal_typename,100,200,0],
	[Respawn_truck_typename,250,0,100],
	[FOB_box_typename,300,500,0],
	[FOB_truck_typename,300,500,75],
	[KP_liberation_small_storage_building,0,0,0],
	[KP_liberation_large_storage_building,0,0,0],
	[KP_liberation_recycle_building,250,0,0],
	[KP_liberation_air_vehicle_building,1000,0,0],
	[KP_liberation_heli_slot_building,250,0,0],
	[KP_liberation_plane_slot_building,1000,0,0],
	["ACE_medicalSupplyCrate_advanced",50,0,0],
	["ACE_Wheel",10,0,0],
	["ACE_Track",10,0,0],
	["uns_M35A2_repair",325,0,75],						
	["uns_M35A2_fuel",125,0,275],					
	["uns_M35A2_fueltanker", 125,0,275],
	["uns_M35A2_ammo",125,200,75],					
	["B_Slingload_01_Repair_F",275,0,0],									//Huron Repair
	["B_Slingload_01_Fuel_F",75,0,200],									//Huron Fuel
	["B_Slingload_01_Ammo_F",75,200,0]									//Huron Ammo
];

// All the UAVs must be declared here, otherwise there shall be UAV controlling issues. Namely: you won't be able to control them.
uavs = [
];

// Pre-made squads for the commander build menu. These shouldn't exceed 10 members.
// Light infantry squad.
blufor_squad_inf_light = [
	"uns_US_1ID_AHMG",
	"uns_US_1ID_DEM",
	"uns_US_1ID_MRK",
	"uns_US_1ID_COM",
	"uns_men_US_1AC_GL",
	"uns_US_1ID_MRK",
	"uns_men_US_1AC_PL",
	"uns_men_US_1AC_MTSG",
	"uns_men_CIDG_MED",
	"uns_men_US_1AC_TPR3"
];

// Heavy infantry squad.
blufor_squad_inf = [
	"uns_men_US_1AC_AHMG",
	"uns_men_US_1AC_MGSG",
	"uns_men_US_1AC_MTSG",
	"uns_men_US_1AC_GL",
	"uns_men_US_1AC_RTO",
	"uns_men_US_1AC_TPR1",
	"uns_men_US_1AC_SL",
	"uns_men_US_1AC_DEM",
	"uns_men_US_1AC_HMG",
	"uns_men_US_1AC_MRK"
];

// AT specialists squad.
blufor_squad_at = [
	"uns_men_USMC_65_AT",
	"uns_men_ARVN_AT",
	"uns_men_NZ_65_AT",
	"uns_men_US_1AC_AT",
	"uns_men_US_1AC_COM",
	"uns_men_US_1AC_PL",
	"uns_men_US_1AC_SL",
	"uns_men_CIDG_MED"
];

// AA specialists squad.
blufor_squad_aa = [
	"uns_US_1ID_MGSG",
	"uns_US_1ID_MGSG2",
	"uns_US_1ID_MGSG3",
	"uns_US_1ID_TRI",
	"uns_US_1ID_MGAASG",
	"uns_US_1ID_GL",
	"uns_US_25ID_MED",
	"uns_US_1ID_RF6"
];

// Force recon squad.
blufor_squad_recon = [
	"uns_men_US_3FRC_MED",
	"uns_men_US_3FRC_HMG",
	"uns_men_US_3FRC_AHMG",
	"uns_men_US_3FRC_TRI",
	"uns_men_US_3FRC_MTSG",
	"uns_men_US_3FRC_RTO",
	"uns_men_US_3FRC_AT",
	"uns_men_US_3FRC_SCT",
	"uns_men_US_3FRC_MRK",
	"uns_men_US_3FRC_MRK2"
];

// Paratroopers squad.
blufor_squad_para = [
	"uns_men_ARVN_COM",
	"uns_men_ARVN_PL",
	"uns_men_ARVN_SL",
	"uns_men_ARVN_MED",
	"uns_men_ARVN_HMG",
	"uns_men_ARVN_AHMG",
	"uns_men_ARVN_MGSG",
	"uns_men_ARVN_MGSG2",
	"uns_men_ARVN_TRI",
	"uns_men_ARVN_GL"
];

// Elite vehicles that should be unlocked through military base capture.
elite_vehicles = [
	"uns_UH1F_M6_M158_Hornet",
			// UH-1F Green Hornet
	"uns_A7_CAS",
			//A-7D Corsair (CAS)
	"uns_A6_Intruder_CAS",
			//A-6 Intruder (CAS)
	"Uns_M55_Quad",
			//M-55 Quad 50 AA
	"Uns_M114_artillery",
			//M114 155mm Howitzer
	"uns_ach47_m134",
			//ACH-47A (M134)
	"UNS_AH1G",
			//AH-1G Cobra CAS
	"UNS_UH1B_TOW",
			//UH-1B TOW
	"uns_UH1C_M21_M200_1AC",
			//UH-1C/M21
	"uns_oh6_m27r",
			//OH-6A (M27 Rockets)
	"uns_m551",
			//M-551 Sheridan
	"uns_m48a3",
			//M-48A3 Patton MBT
	"uns_pbr_mk18",
			//PBR MkII (Mk18 GL)
	"uns_A1J_CAS",
			//A-1H Skyraider (CAS)	"UNS_skymaster_CAS",
			//O-2A Skymaster (CAS)
	"uns_f100b_AGM",
			//F-100 SuperSabre (AGM)
	"uns_F4J_AGM",
			//F-4J Phantom II (AGM)
	"uns_F4E_CHICO"
			//Chico The Gunfighter
];
