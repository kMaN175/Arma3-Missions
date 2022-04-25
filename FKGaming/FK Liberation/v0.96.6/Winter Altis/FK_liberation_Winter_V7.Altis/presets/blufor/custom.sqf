/*
Needed Mods:
- RHS USAF

Optional Mods:
- F-15C
- F/A-18
*/

/* - Support classnames.
Each of these should be unique, the same classnames for different purposes may cause various unpredictable issues with player actions. Or not, just don't try!	*/
FOB_typename = "Land_MedicalTent_01_NATO_tropic_generic_open_F";		// This is the main FOB HQ building. 																									Default is "Land_Cargo_HQ_V1_F".
FOB_box_typename = "B_Slingload_01_Cargo_F";							// This is the FOB as a container. 																										Default is "B_Slingload_01_Cargo_F".
FOB_truck_typename = "rhsusf_M1078A1P2_B_WD_CP_fmtv_usarmy";			// This is the FOB as a vehicle.																										Default is "B_Truck_01_box_F".
Arsenal_typename = "B_supplyCrate_F";									// This is the virtual arsenal as portable supply crates.  																				Default is "B_supplyCrate_F".
Respawn_truck_typename = "rhsusf_M1085A1P2_B_WD_Medical_fmtv_usarmy";	// This is the mobile respawn (and medical) truck. 																						Default is "B_Truck_01_medical_F".
huron_typename = "CUP_B_UH60M_US";										// This is Spartan 01, a multipurpose mobile respawn as a helicopter. 																	Default is "B_Heli_Transport_03_unarmed_F".
crewman_classname = "rhsusf_army_ocp_combatcrewman";					// This defines the crew for vehicles. 																									Default is "B_crew_F".
pilot_classname = "rhsusf_army_ocp_helipilot";							// This defines the pilot for helicopters. 																								Default is "B_Helipilot_F".
KP_liberation_little_bird_classname = "RHS_MELB_MH6M";					// These are the little birds which spawn on the Freedom or at Chimera base.															Default is "B_Heli_Light_01_F".
KP_liberation_boat_classname = "B_Boat_Transport_01_F"; 				// These are the boats which spawn at the stern of the Freedom.																			Default is "B_Boat_Transport_01_F".
KP_liberation_truck_classname = "rhsusf_M977A4_BKIT_usarmy_wd";			// These are the trucks which are used in the logistic convoy system.																	Default is "B_Truck_01_transport_F".
KP_liberation_small_storage_building = "ContainmentArea_02_sand_F";		// A small storage area for resources.																									Default is "ContainmentArea_02_sand_F".
KP_liberation_large_storage_building = "ContainmentArea_01_sand_F";		// A large storage area for resources.																									Default is "ContainmentArea_01_sand_F".
KP_liberation_recycle_building = "Land_RepairDepot_01_green_F";					// The building defined to unlock FOB recycling functionality.																			Default is "Land_CarService_F".
KP_liberation_air_vehicle_building = "USMC_WarfareBUAVterminal";		// The building defined to unlock FOB air vehicle functionality.																		Default is "Land_Radar_Small_F".
KP_liberation_heli_slot_building = "Land_HelipadSquare_F";				// The helipad used to increase the GLOBAL rotary-wing cap.																				Default is "Land_HelipadSquare_F".
KP_liberation_plane_slot_building = "Land_TentHangar_V1_F";				// The hangar used to increase the GLOBAL fixed-wing cap.																				Default is "Land_TentHangar_V1_F".
KP_liberation_supply_crate = "CargoNet_01_box_F";						// This defines the supply crates, as in resources.																						Default is "CargoNet_01_box_F".
KP_liberation_ammo_crate = "B_CargoNet_01_ammo_F";						// This defines the ammunition crates.																									Default is "B_CargoNet_01_ammo_F".
KP_liberation_fuel_crate = "CargoNet_01_barrels_F";						// This defines the fuel crates.

/* - Friendly classnames.
Each array below represents one of the 7 pages within the build menu. 
Format: ["vehicle_classname",supplies,ammunition,fuel],	Example: ["B_APC_Tracked_01_AA_F",300,300,300],
The above example is the NATO IFV-6a Cheetah, it costs 300 supplies, 300 ammunition and 300 fuel to build.	*/
infantry_units = [
	["rhsusf_army_ocp_riflemanl",30,0,0],								//Rifleman (Light)
	["rhsusf_army_ocp_rifleman",40,0,0],								//Rifleman
	["rhsusf_army_ocp_riflemanat",60,0,0],								//Rifleman (AT)
	["rhsusf_army_ocp_grenadier",50,0,0],								//Grenadier
	["rhsusf_army_ocp_autorifleman",50,0,0],							//Autorifleman
	["rhsusf_army_ocp_machinegunner",70,0,0],							//Heavygunner
	["rhsusf_army_ocp_marksman",60,0,0],								//Marksman
	["rhsusf_army_ocp_javelin",100,20,0],								//AT Specialist
	["rhsusf_army_ocp_aa",100,20,0],									//AA Specialist
	["rhsusf_army_ocp_medic",60,0,0],									//Combat Life Saver
	["rhsusf_army_ocp_engineer",60,0,0],								//Engineer
	["rhsusf_army_ocp_explosives",60,0,0],								//Explosives Specialist
	["rhsusf_usmc_recon_marpat_wd_rifleman",40,0,0],					//Recon Rifleman
	["rhsusf_usmc_recon_marpat_wd_rifleman_at",60,0,0],					//Recon Rifleman (AT)
	["rhsusf_usmc_recon_marpat_wd_autorifleman",50,0,0],				//Recon Autorifleman
	["rhsusf_usmc_recon_marpat_wd_machinegunner",70,0,0],				//Recon Machine Gunner
	["rhsusf_usmc_recon_marpat_wd_marksman",60,0,0],					//Recon Marksman
	["rhsusf_usmc_recon_marpat_wd_sniper_M107",140,10,0],				//Recon Sniper (M107)
	["rhsusf_army_ocp_sniper",140,10,0],								//Sniper
	["rhsusf_army_ocp_sniper_m107",180,10,0],							//Sniper (M107)
	["rhsusf_army_ocp_sniper_m24sws",140,10,0],							//Sniper (M24 SWS)
	["rhsusf_army_ocp_combatcrewman",20,0,0],							//Crewman
	["rhsusf_army_ocp_rifleman_101st",40,0,0],							//Para Trooper
	["rhsusf_army_ocp_helicrew",20,0,0],								//Helicopter Crew
	["rhsusf_army_ocp_helipilot",20,0,0],								//Helicopter Pilot
	["rhsusf_airforce_jetpilot",20,0,0]									//Pilot
];

light_vehicles = [
	["B_Quadbike_01_F",100,0,50],										//Quad Bike
	["CUP_B_TowingTractor_GB",100,0,50],                                //Towing Tractor
	["rhsusf_mrzr4_d",150,0,50],										//MRZR
	["rhsusf_m1050_w",200,0,50],										//M1050A2
	["CUP_B_HMMWV_M2_GPK_NATO_T",200,80,50],							//M1050A2 (M2)
	["rhsusf_m1050_w_mk19",200,120,50],									//M1050A2 (Mk19)
	["CUP_B_M1167_WDL_USA",200,80,50],									//M1167 Tow-2
	["CUP_B_HMMWV_Avenger_USMC",200,80,50],								//HMMWV Avenger
	["rhsusf_M977A4_BKIT_usarmy_wd",300,0,150],							//M977A4 BKIT 
	["rhsusf_M977A4_BKIT_M2_usarmy_wd",300,80,150],						//M977A4 BKIT (HMG)
	["rhsusf_M1117_W",300,50,50],										//M1117 ASV
	["B_UGV_01_F",300,0,50],											//UGV Stomper
	["B_UGV_01_rcws_F",300,80,50],										//UGV Stomper (RCWS)
	["B_Boat_Transport_01_F",200,0,50],									//Assault Boat
	["B_Boat_Armed_01_minigun_F",200,80,150],							//Speedboat Minigun
	["rhsusf_mkvsoc",500,200,200],										//Mk.V SOCOM
	["B_SDV_01_F",300,0,50],											//SDV
	["CUP_B_LCU11200_USMC",200,0,200],									//LCU
	["CUP_B_LR_Transport_GB_W",150,0,50],                               // Land Rover 110 (Transport) Woodland
    ["CUP_B_LR_MG_GB_W",150,50,50],                                     // Land Rover 110 (M2) Woodland
    ["CUP_B_LR_Special_M2_GB_W",200,80,50],                             // Land Rover 110 (M2 Special) Woodland
    ["CUP_B_LR_Special_GMG_GB_W",200,200,50],                           // Land Rover 110 (GMG Special) Woodland
    ["CUP_B_BAF_Coyote_L2A1_W",200,80,50],                              // Coyote L2A1 Woodland
    ["CUP_B_BAF_Coyote_GMG_W",200,120,50],                              // Coyote GMG Woodland
    ["CUP_B_Mastiff_LMG_GB_W",500,20,300],                              // Mastiff PPV LMG Woodland
    ["CUP_B_Mastiff_HMG_GB_W",500,80,300],                              // Mastiff PPV HMG Woodland
    ["CUP_B_Mastiff_GMG_GB_W",500,120,300],                             // Mastiff PPV GMG Woodland
    ["CUP_B_Wolfhound_LMG_GB_W",1800,20,300],                           // Wolfhound TSV LMG Woodland
    ["CUP_B_Wolfhound_HMG_GB_W",1800,80,300],                           // Wolfhound TSV HMG Woodland
    ["CUP_B_Wolfhound_GMG_GB_W",1800,120,300],                          // Wolfhound TSV GMG Woodland
    ["CUP_B_MTVR_USMC",300,0,150]                                       // MTVR Transport
];

heavy_vehicles = [
	["CUP_B_M1126_ICV_M2_Woodland_Slat",350,80,120],					//Striker (M2)
	["CUP_B_M1126_ICV_MK19_Woodland_Slat",350,120,120],					//Striker (Mk19)
	["CUP_B_M1128_MGS_Woodland_Slat",450,200,120],						//Striker 105mm
	["rhsusf_m113_usarmy_medical",200,0,200],							//M113A3 (Medical)
	["RHS_M2A2_BUSKI_WD",425,200,400],									//M2A2ODS (Busk I)
	["RHS_M2A3_BUSKIII_wd",425,500,400],								//M2A3 (Busk III)
	["RHS_M6_wd",425,500,400],											//M6A2
	["rhsusf_m1a1aim_tuski_wd",1100,1000,500],							//M1A1SA (Tusk I)
	["rhsusf_m1a2sep1tuskiiwd_usarmy",1200,1000,500],					//M1A2SEPv1 (Tusk II)
	["rhsusf_m109_usarmy",1200,1000,450],								//M109A6
	["CUP_B_FV432_Bulldog_GB_W",300,200,300],                           //FV432 Bulldog M280 [Woodland]
    ["CUP_B_FV432_Bulldog_GB_W_RWS",300,200,300],                       //FV432 Bulldog M2 RWS [Woodland]
    ["CUP_B_MCV80_GB_W_SLAT",800,450,300],                             	//MCV-80 Warrior (SLAT - Woodland)
    ["CUP_B_FV510_GB_W_SLAT",450,550,300],                             	//FV510 Warrior (SLAT - Woodland)
    ["CUP_B_Challenger2_2CW_BAF",1200,1000,450]                         //FV8034 Challenger 2 (Two-Color Woodland)
];

air_vehicles = [
	["B_UAV_01_F",150,0,50],											//AR-2 Darter
	["B_UAV_06_F",80,0,30],												//AL-6 Pelican (Cargo)
	["RHS_MELB_MH6M",200,0,200],										//MH-6M Little Bird
	["RHS_MELB_AH6M",200,200,200],										//AH-6M Pawnee
	["RHS_UH1Y_UNARMED",250,0,300],										//UH-1Y (Unarmed)
	["RHS_UH1Y_GS",250,200,300],										//UH-1Y (Ground Suppression)
	["RHS_AH64D_wd",1500,1500,500],										//AH-64D (Multi-Role)
	["RHS_UH120M2",500,0,300],											//UH-120M (Unarmed)
	["RHS_UH120M",500,80,300],											//UH-120M
	["RHS_UH120M_MEV2",300,0,300],										//UH-120M MEV2
	["CUP_B_AW159_GB",350,800,300],                                     //AW159 Wildcat (Green)
	["RHS_CH_47F_10",1800,80,1150],										//CH-47 Chinook (Armed)
	["rhsusf_CH53E_USMC",300,0,1150],									//CH-53E Super Stallion
	["B_UAV_02_dynamicLoadout_F",800,300,200],							//MQ-4A Greyhawk
	["B_T_UAV_03_dynamicLoadout_F",450,500,500],						//MQ-12 Falcon
	["CUP_B_GR9_DYN_GB",2000,1200,1200],                                //Harrier GR.9
	["FIR_A10C_FT",2000,2000,800],										//A-10A (CAS)
	["FIR_F16D_WP",3000,3000,450],										//F-16C 
	["FIR_F15E",3000,3000,450],											//F-15E Strike Eagle
	["JS_JC_FA18E",3000,11500,450],										//F/A-18 E Super Hornet
	["JS_JC_FA18F",3000,11500,450]										//F/A-18 F Super Hornet

];

static_vehicles = [
	["RHS_M2StaticMG_MiniTripod_WD",50,80,0],							//Mk2 HMG .50
	["RHS_M2StaticMG_WD",50,80,0],										//Mk2 HMG .50 (Raised)
	["RHS_MK19_TriPod_WD",50,120,0],									//Mk19 GMG 20mm
	["RHS_TOW_TriPod_WD",50,200,0],										//TOW (AT)
	["RHS_Stinger_AA_pod_WD",50,200,0],									//Stinger (AA)
	["RHS_M502_WD",80,300,0],											//Mk6 Mortar
	["RHS_M119_WD",200,200,0],											//M119A2
	["CUP_WV_B_CRAM",500,500,0]                                         //C-RAM
];

buildings = [
	["Land_Cargo_House_V1_F",0,0,0],
	["snowman",0,0,0],
	["Land_Cargo_Patrol_V1_F",0,0,0],
	["Land_Cargo_Tower_V1_F",0,0,0],
	["Flag_NATO_F",0,0,0],
	["Flag_US_F",0,0,0],
	["BWA3_Flag_Ger_F",0,0,0],
	["Flag_UK_F",0,0,0],
	["Flag_White_F",0,0,0],
	["USMC_WarfareBFieldhHospital",0,0,0],
	["MASH_EP1",0,0,0],
	["Flag_RedCrystal_F",0,0,0],	
	["CamoNet_BLUFOR_F",0,0,0],
	["CamoNet_BLUFOR_open_F",0,0,0],
	["CamoNet_BLUFOR_big_F",0,0,0],
	["Land_PortableLight_single_F",0,0,0],
	["Land_PortableLight_double_F",0,0,0],
	["Land_LampSolar_F",0,0,0],
	["Land_LampHalogen_F",0,0,0],
	["Land_LampStreet_small_F",0,0,0],
	["Land_LampAirport_F",0,0,0],
	["Land_HelipadCircle_F",0,0,0],										//Strictly aesthetic - as in it does not increase helicopter cap!
	["Land_HelipadRescue_F",0,0,0],										//Strictly aesthetic - as in it does not increase helicopter cap!
	["PortableHelipadLight_01_blue_F",0,0,0],
	["PortableHelipadLight_01_green_F",0,0,0],
	["PortableHelipadLight_01_red_F",0,0,0],
	["Land_CampingChair_V1_F",0,0,0],
	["Land_CampingChair_V2_F",0,0,0],
	["Land_CampingTable_F",0,0,0],
	["MapBoard_altis_F",0,0,0],
	["MapBoard_stratis_F",0,0,0],
	["MapBoard_seismic_F",0,0,0],
	["Land_Pallet_MilBoxes_F",0,0,0],
	["Land_PaperBox_open_empty_F",0,0,0],
	["Land_PaperBox_open_full_F",0,0,0],
	["Land_PaperBox_closed_F",0,0,0],
	["Land_DieselGroundPowerUnit_01_F",0,0,0],
	["Land_ToolTrolley_02_F",0,0,0],
	["Land_WeldingTrolley_01_F",0,0,0],
	["Land_Workbench_01_F",0,0,0],
	["Land_GasTank_01_blue_F",0,0,0],
	["Land_GasTank_01_khaki_F",0,0,0],
	["Land_GasTank_01_yellow_F",0,0,0],
	["Land_GasTank_02_F",0,0,0],
	["Land_BarrelWater_F",0,0,0],
	["Land_BarrelWater_grey_F",0,0,0],
	["Land_WaterBarrel_F",0,0,0],
	["Land_WaterTank_F",0,0,0],
	["Land_BagFence_Round_F",0,0,0],
	["Land_BagFence_Short_F",0,0,0],
	["Land_BagFence_Long_F",0,0,0],
	["Land_BagFence_Corner_F",0,0,0],
	["Land_BagFence_End_F",0,0,0],	
	["Land_BagBunker_Small_F",0,0,0],
	["Land_BagBunker_Large_F",0,0,0],
	["Land_BagBunker_Tower_F",0,0,0],
	["Land_HBarrier_1_F",0,0,0],
	["Land_HBarrier_3_F",0,0,0],
	["Land_HBarrier_5_F",0,0,0],
	["Land_HBarrier_Big_F",0,0,0],
	["Land_HBarrierWall4_F",0,0,0],
	["Land_HBarrierWall6_F",0,0,0],
	["Land_HBarrierWall_corner_F",0,0,0],
	["Land_HBarrierWall_corridor_F",0,0,0],
	["Land_HBarrierTower_F",0,0,0],
	["Land_CncBarrierMedium_F",0,0,0],
	["Land_CncBarrierMedium4_F",0,0,0],
	["Land_Concrete_SmallWall_4m_F",0,0,0],	
	["Land_Concrete_SmallWall_8m_F",0,0,0],
	["Land_CncShelter_F",0,0,0],
	["Land_CncWall1_F",0,0,0],	
	["Land_CncWall4_F",0,0,0],
	["Land_Sign_WarningMilitaryArea_F",0,0,0],
	["Land_Sign_WarningMilAreaSmall_F",0,0,0],
	["Land_Sign_WarningMilitaryVehicles_F",0,0,0],
	["Land_Razorwire_F",0,0,0],
	["Land_ClutterCutter_large_F",0,0,0]
];

support_vehicles = [
	[Arsenal_typename,200,200,0],
	[Respawn_truck_typename,200,0,200],
	[FOB_box_typename,300,500,0],
	[FOB_truck_typename,300,500,150],
	[KP_liberation_small_storage_building,0,0,0],
	[KP_liberation_large_storage_building,0,0,0],
	[KP_liberation_recycle_building,500,0,0],
	[KP_liberation_air_vehicle_building,2000,0,0],
	[KP_liberation_heli_slot_building,500,0,0],
	[KP_liberation_plane_slot_building,500,0,0],
	["ACE_medicalSupplyCrate_advanced",50,0,0],
	["ACE_Box_82mm_Mo_HE",50,80,0],
	["ACE_Box_82mm_Mo_Smoke",50,10,0],
	["ACE_Box_82mm_Mo_Illum",50,10,0],
	["ACE_Wheel",10,0,0],
	["ACE_Track",10,0,0],
	["B_APC_Tracked_01_CRV_F",500,500,350],								//CRV-6e Bobcat
	["rhsusf_M977A4_REPAIR_BKIT_usarmy_wd",350,0,150],					//M977A4 Repair
	["rhsusf_M978A4_BKIT_usarmy_wd",300,0,1800],						//M978A4 Fuel
	["rhsusf_M977A4_AMMO_BKIT_usarmy_wd",300,200,150],					//M977A4 Ammo
	["B_Slingload_01_Repair_F",1800,0,0],								//Huron Repair
	["B_Slingload_01_Fuel_F",150,0,200],								//Huron Fuel
	["B_Slingload_01_Ammo_F",150,200,0]									//Huron Ammo
];

// Pre-made squads for the commander build menu. These shouldn't exceed 10 members.
// Light infantry squad.
blufor_squad_inf_light = [
	"rhsusf_army_ocp_teamleader",
	"rhsusf_army_ocp_rifleman",
	"rhsusf_army_ocp_rifleman",
	"rhsusf_army_ocp_riflemanat",
	"rhsusf_army_ocp_grenadier",
	"rhsusf_army_ocp_autorifleman",
	"rhsusf_army_ocp_autorifleman",
	"rhsusf_army_ocp_marksman",
	"rhsusf_army_ocp_medic",
	"rhsusf_army_ocp_engineer"
];

// Heavy infantry squad.
blufor_squad_inf = [
	"rhsusf_army_ocp_teamleader",
	"rhsusf_army_ocp_riflemanat",
	"rhsusf_army_ocp_riflemanat",
	"rhsusf_army_ocp_grenadier",
	"rhsusf_army_ocp_autorifleman",
	"rhsusf_army_ocp_autorifleman",
	"rhsusf_army_ocp_machinegunner",
	"rhsusf_army_ocp_marksman",
	"rhsusf_army_ocp_medic",
	"rhsusf_army_ocp_engineer"
];

// AT specialists squad.
blufor_squad_at = [
	"rhsusf_army_ocp_teamleader",
	"rhsusf_army_ocp_rifleman",
	"rhsusf_army_ocp_rifleman",
	"rhsusf_army_ocp_javelin",
	"rhsusf_army_ocp_javelin",
	"rhsusf_army_ocp_javelin",
	"rhsusf_army_ocp_medic",
	"rhsusf_army_ocp_rifleman"
];

// AA specialists squad.
blufor_squad_aa = [
	"rhsusf_army_ocp_teamleader",
	"rhsusf_army_ocp_rifleman",
	"rhsusf_army_ocp_rifleman",
	"rhsusf_army_ocp_aa",
	"rhsusf_army_ocp_aa",
	"rhsusf_army_ocp_aa",
	"rhsusf_army_ocp_medic",
	"rhsusf_army_ocp_rifleman"
];

// Force recon squad.
blufor_squad_recon = [
	"rhsusf_usmc_recon_marpat_wd_teamleader",
	"rhsusf_usmc_recon_marpat_wd_rifleman",
	"rhsusf_usmc_recon_marpat_wd_rifleman",
	"rhsusf_usmc_recon_marpat_wd_rifleman_at",
	"rhsusf_usmc_recon_marpat_wd_autorifleman",
	"rhsusf_usmc_recon_marpat_wd_machinegunner",
	"rhsusf_usmc_recon_marpat_wd_marksman",
	"rhsusf_usmc_recon_marpat_wd_sniper_M107",
	"rhsusf_army_ucp_medic",
	"rhsusf_army_ucp_engineer"
];	

// Paratroopers squad.
blufor_squad_para = [
	"rhsusf_army_ocp_rifleman_101st",
	"rhsusf_army_ocp_rifleman_101st",
	"rhsusf_army_ocp_rifleman_101st",
	"rhsusf_army_ocp_rifleman_101st",
	"rhsusf_army_ocp_rifleman_101st",
	"rhsusf_army_ocp_rifleman_101st",
	"rhsusf_army_ocp_rifleman_101st",
	"rhsusf_army_ocp_rifleman_101st",
	"rhsusf_army_ocp_rifleman_101st",
	"rhsusf_army_ocp_rifleman_101st"
];

// Elite vehicles that should be unlocked through military base capture.
elite_vehicles = [
	"rhsusf_mkvsoc",													//Mk.V SOCOM
	"rhsusf_m1a1aim_tuski_wd",											//M1A1SA (Tusk I)
	"rhsusf_m1a2sep1tuskiiwd_usarmy",									//M1A2SEPv1 (Tusk II)
	"rhsusf_m109_usarmy",												//M109A6
	"CUP_B_Challenger2_2CW_BAF",										//challenger 2
	"CUP_B_LCU11200_USMC",												//LCU
	"RHS_AH64D_wd",														//AH-64D (Multi-Role)
	"B_UAV_02_dynamicLoadout_F",										//MQ-4A Greyhawk
	"B_T_UAV_03_dynamicLoadout_F",										//MQ-12 Falcon
	"FIR_A10C_FT",														//A-10A (CAS)
	"FIR_F16D_WP",														//F-16C
	"FIR_F15E",															//F-15E Strike Eagle
	"CUP_B_GR9_DYN_GB",													//Harrier
	"RHS_M119_WD",														//M119
	"CUP_B_M1128_MGS_Woodland_Slat",									//Striker 105mm
	"JS_JC_FA18E",														//F/A-18 E Super Hornet
	"JS_JC_FA18F"														//F/A-18 F Super Hornet
	
];