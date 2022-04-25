/*
Needed Mods:
- None

Optional Mods:
- None
*/

/* Classnames of the guerilla faction which is friendly or hostile, depending on the civil reputation 
Standard loadout of the units will be replaced with a scripted one, which depends on the guerilla strength, after spawn */
KP_liberation_guerilla_units = [
	"uns_men_CIDG_SL",
	"uns_men_CIDG_DEM",
	"uns_men_CIDG_SAP",
	"uns_men_CIDG_ENG",
	"uns_men_CIDG_MED",
	"uns_men_CIDG_HMG",
	"uns_men_CIDG_GL",
	"uns_men_CIDG_RTO"
];

// Armed vehicles
KP_liberation_guerilla_vehicles = [
	"uns_willys_2_arvn",
	"uns_willys_2_m60_arvn",
	"uns_willys_2_m1919_arvn",
	"uns_M113_M60"
];

// transport vehicles (should be able to transport at least 10 soldiers)
KP_liberation_guerilla_transports = [
	"uns_zil157",
	"uns_nvatruck_camo"
];

/* Guerilla Equipment
There are 3 tiers for every category. If the strength of the guerillas will increase, they'll have higher tier equipment. */

/* Weapons - You've to add the weapons as array like
["Weaponclassname","Magazineclassname","magazine amount","optic","tripod"]
You can leave optic and tripod empty with "" */
KP_liberation_guerilla_weapons_1 =[
	["uns_m1garand","0.3006",4,"",""],
	["uns_m1garands","0.3006",4,"",""],
	["uns_m1garandbayo","0.3006",4,"",""],
	["uns_m1carbine","0.30 carbine",4,"",""],
	["uns_m2carbine","0.30 carbine",4,"",""],
	["uns_l1a1","7.62x51mm NATO",4,"",""]
];

KP_liberation_guerilla_weapons_2 =[
	["uns_m21","7.62x51mm NATO",4,"uns_o_LeatherwoodART",""],
	["uns_m21sd","7.62x51mm NATO",4,"uns_o_LeatherwoodART",""],
	["uns_m21nv","7.62x51mm NATO",4,"uns_o_ANPVS2",""],
	["uns_m21nvsd","7.62x51mm NATO",4,"uns_o_ANPVS2",""],
	["uns_model70","0.3006",3,"uns_o_Unertl8x","bipod_01_F_blk"],
	["uns_model70sd","0.3006",5,"uns_o_Unertl8x","bipod_01_F_blk"]
];

KP_liberation_guerilla_weapons_3 =[
	["uns_m1garand","0.3006",4,"",""],
	["uns_m1garands","0.3006",4,"",""],
	["uns_m21","7.62x51mm NATO",4,"uns_o_LeatherwoodART",""],
	["uns_m21sd","7.62x51mm NATO",4,"uns_o_LeatherwoodART",""],
	["uns_m21nv","7.62x51mm NATO",4,"uns_o_ANPVS2",""],
	["uns_m21nvsd","7.62x51mm NATO",4,"uns_o_ANPVS2",""],
	["uns_model70","0.3006",3,"uns_o_Unertl8x","bipod_01_F_blk"],
	["uns_model70sd","0.3006",5,"uns_o_Unertl8x","bipod_01_F_blk"]
];

// Uniforms
KP_liberation_guerilla_uniforms_1 = [
	"UNS_ARMY_BDU",
	"UNS_ARMY_BDU_F",
	"UNS_ARMY_BDU_65",
	"UNS_TIGER_BDU",
	"UNS_TIGER2_BDU",
	"UNS_TIGER3_BDU",
	"UNS_DUCK_BDU",
	"UNS_USMC_BDU_65",
	"UNS_USMC_BDU_65_2",
	"UNS_USMC_FLAK_65",
	"UNS_USMC_FLAK2_65",
	"UNS_USMC_BDU",
	"UNS_USMC_BDU_S",
	"UNS_USMC_Flak"
	
];

KP_liberation_guerilla_uniforms_2 = [
	"UNS_ARMY_BDU",
	"UNS_ARMY_BDU_F",
	"UNS_ARMY_BDU_65",
	"UNS_TIGER_BDU",
	"UNS_TIGER2_BDU",
	"UNS_TIGER3_BDU",
	"UNS_DUCK_BDU",
	"UNS_USMC_BDU_65",
	"UNS_USMC_BDU_65_2",
	"UNS_USMC_FLAK_65",
	"UNS_USMC_FLAK2_65",
	"UNS_USMC_BDU",
	"UNS_USMC_BDU_S",
	"UNS_USMC_Flak"
];

KP_liberation_guerilla_uniforms_3 = [
	"UNS_ARMY_BDU",
	"UNS_ARMY_BDU_F",
	"UNS_ARMY_BDU_65",
	"UNS_TIGER_BDU",
	"UNS_TIGER2_BDU",
	"UNS_TIGER3_BDU",
	"UNS_DUCK_BDU",
	"UNS_USMC_BDU_65",
	"UNS_USMC_BDU_65_2"
];

// Vests
KP_liberation_guerilla_vests_1 = [
	"UNS_M1956_A1",
	"UNS_M1956_A2",
	"UNS_M1956_A3",
	"UNS_M1956_A4",
	"UNS_M1956_A5",
	"UNS_M1956_A6",
	"UNS_M1956_A7",
	"UNS_M1956_A8",
	"UNS_M1956_A9",
	"UNS_M1956_A10",
	"UNS_M1956_A11",
	"UNS_M1956_A12"
];

KP_liberation_guerilla_vests_2 = [
	"UNS_M1956_M1",
	"UNS_M1956_M2",
	"UNS_M1956_M3",
	"UNS_M1956_M4",
	"UNS_M1956_M5",
	"UNS_M1956_M6",
	"UNS_M1956_M7",
	"UNS_M1956_M8",
	"UNS_M1956_M9",
	"UNS_M1956_M10"
];

KP_liberation_guerilla_vests_3 = [
	"UNS_M1956_M13",
	"UNS_M1956_M14",
	"UNS_M1956_M15",
	"UNS_M1956_M16",
	"UNS_M1956_M17",
	"UNS_M1956_M18",
	"UNS_M1956_M19",
	"UNS_M1956_S1",
	"UNS_M1956_S2"
];

// Headgear
KP_liberation_guerilla_headgear_1 = [
	"",
	"",
	"",
	"",
	"uns_M113_M134",
	"UNS_Conehat_VC",
	"UNS_Boonie_VC",
	"UNS_NVA_HG",
	"UNS_NVA_HGG",
	"UNS_NVA_HK",
	"UNS_NVA_HKG",
	"UNS_PAVN_HN",
	"UNS_PAVN_HC",
	"UNS_PAVN_HG",
	"UNS_NVA_CH",
	"UNS_NVA_PL",
	"UNS_M1_MP",
	"UNS_M1_1V1",
	"UNS_M1_1V2",
	"UNS_M1_1V3",
	"UNS_M1_1V4",
	"UNS_M1_1V6"
];

KP_liberation_guerilla_headgear_2 = [
	"UNS_M1_1V7",
	"UNS_M1_1V8",
	"UNS_M1_1RM",
	"UNS_TC_1",
	"UNS_TC_2",
	"UNS_HP_Helmet",
	"UNS_JP_Helmet",
	"UNS_JP_Helmet2",
	"UNS_Headband_OD",
	"UNS_Headband_OD2",
	"UNS_Headband_ED",
	"UNS_Headband_BK",
	"UNS_Beret_MRF",
	"UNS_Beret_B",
	"UNS_Beret_5"
];

KP_liberation_guerilla_headgear_3 = [
	"UNS_Beret_52LT",
	"UNS_Beret_5CPT",
	"UNS_Beret_5MAJ",
	"UNS_Beret_5LTCOL",
	"UNS_Beret_5COL",
	"UNS_Beret_AVAB",
	"UNS_Beret_AVM",
	"UNS_Beret_AVR",
	"UNS_Boonie_TIG",
	"UNS_Boonie_TIG1"
];

// Facegear. Applies for tier 2 and 3.
KP_liberation_guerilla_facegear = [
	"",
	"",
	"",
	"G_Bandanna_shades",
	"G_Bandanna_beast",
	"G_Bandanna_tan",
	"G_Bandanna_khk",
	"G_Bandanna_oli",
	"G_Bandanna_aviator",
	"G_Bandanna_blk"
];
