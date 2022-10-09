//PlayerLoadout.sqf

if ((vehicleVarName player) == "zeusDude") exitWith {};
waitUntil {!isNull player && isplayer player};

removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

switch (typeOf player) do
{
	case "rhsusf_socom_marsoc_teamchief":
	{ 
player forceAddUniform "milgp_u_g3_field_set_mctropic";
player addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_epinephrine";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_morphine";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addVest "milgp_v_marciras_teamleader_belt_RGR";
for "_i" from 1 to 2 do {player addItemToVest "ACE_CableTie";};
player addItemToVest "ACE_IR_Strobe_Item";
player addItemToVest "ACE_MapTools";
player addItemToVest "ACE_microDAGR";
player addItemToVest "ACE_Flashlight_MX991";
for "_i" from 1 to 7 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer";};
player addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";
player addItemToVest "rhs_mag_an_m8hc";
for "_i" from 1 to 2 do {player addItemToVest "Chemlight_red";};
for "_i" from 1 to 2 do {player addItemToVest "Chemlight_blue";};
for "_i" from 1 to 2 do {player addItemToVest "Chemlight_green";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_mk84";};
player addItemToVest "rhs_mag_mk3a2";
player addBackpack "B_AssaultPack_tna_F";
for "_i" from 1 to 2 do {player addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer";};
for "_i" from 1 to 2 do {player addItemToBackpack "rhs_mag_m67";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_Sandbag_empty";};
player addItemToBackpack "ACE_EntrenchingTool";
player addItemToBackpack "rhs_mag_an_m14_th3";
player addItemToBackpack "rhs_mag_an_m8hc";
player addItemToBackpack "rhsusf_acc_M952V";
player addItemToBackpack "H_Booniehat_mcamo";
player addHeadgear "H_HelmetB_camo";
player addGoggles "rhs_googles_clear";

player addWeapon "rhs_weap_mk18_KAC_wd";
player addPrimaryWeaponItem "muzzle_snds_m_khk_F";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk_top";
player addPrimaryWeaponItem "rhsusf_acc_ACOG_wd";
player addPrimaryWeaponItem "rhsusf_acc_grip2";
player addWeapon "rhsusf_weap_glock17g4";
player addWeapon "ACE_Vector";

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_anprc152";
player linkItem "rhsusf_ANPVS_15";	
	};
	
	case "rhsusf_socom_marsoc_sarc":
	{
player forceAddUniform "milgp_u_g3_field_set_mctropic";
player addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 4 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_epinephrine";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_morphine";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_tourniquet";};
player addVest "milgp_v_marciras_medic_belt_rgr";
for "_i" from 1 to 2 do {player addItemToVest "ACE_CableTie";};
player addItemToVest "ACE_IR_Strobe_Item";
player addItemToVest "ACE_Flashlight_MX991";
for "_i" from 1 to 7 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer";};
for "_i" from 1 to 2 do {player addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_an_m8hc";};
for "_i" from 1 to 4 do {player addItemToVest "Chemlight_red";};
for "_i" from 1 to 2 do {player addItemToVest "Chemlight_blue";};
for "_i" from 1 to 2 do {player addItemToVest "Chemlight_green";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_mk84";};
player addBackpack "B_TacticalPack_oli";
for "_i" from 1 to 6 do {player addItemToBackpack "ACE_atropine";};
for "_i" from 1 to 6 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 6 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 6 do {player addItemToBackpack "ACE_quikclot";};
player addItemToBackpack "ACE_bloodIV";
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_bloodIV_250";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_bloodIV_500";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_bodyBag";};
for "_i" from 1 to 6 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 6 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 6 do {player addItemToBackpack "ACE_packingBandage";};
player addItemToBackpack "ACE_plasmaIV";
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_plasmaIV_250";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_plasmaIV_500";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_personalAidKit";};
player addItemToBackpack "ACE_salineIV";
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_salineIV_250";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_salineIV_500";};
player addItemToBackpack "ACE_surgicalKit";
for "_i" from 1 to 6 do {player addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_Sandbag_empty";};
player addItemToBackpack "ACE_EntrenchingTool";
player addItemToBackpack "rhsusf_acc_M952V";
player addItemToBackpack "H_Booniehat_mcamo";
player addHeadgear "H_HelmetB_camo";
player addGoggles "rhs_googles_clear";

player addWeapon "rhs_weap_mk18_KAC_wd";
player addPrimaryWeaponItem "muzzle_snds_m_khk_F";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk_top"; 
player addPrimaryWeaponItem "rhsusf_acc_eotech_552";
player addPrimaryWeaponItem "rhsusf_acc_grip2";
player addWeapon "rhsusf_weap_glock17g4";

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_rf7800str_1";
player linkItem "rhsusf_ANPVS_15";
	};
	
	case "rhsusf_socom_marsoc_cso_grenadier":
	{
player forceAddUniform "milgp_u_g3_field_set_mctropic";
player addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_epinephrine";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_morphine";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 3 do {player addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
player addVest "milgp_v_marciras_grenadier_belt_rgr";
for "_i" from 1 to 2 do {player addItemToVest "ACE_CableTie";};
player addItemToVest "ACE_IR_Strobe_Item";
player addItemToVest "ACE_Flashlight_MX991";
player addItemToVest "rhs_mag_an_m8hc";
for "_i" from 1 to 2 do {player addItemToVest "Chemlight_red";};
for "_i" from 1 to 2 do {player addItemToVest "Chemlight_blue";};
for "_i" from 1 to 2 do {player addItemToVest "Chemlight_green";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_mk84";};
player addItemToVest "rhs_mag_mk3a2";
for "_i" from 1 to 10 do {player addItemToVest "rhs_mag_M433_HEDP";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m4009";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m716_yellow";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m715_Green";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m714_White";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m713_Red";};
player addBackpack "B_AssaultPack_tna_F";
player addItemToBackpack "ACE_HuntIR_monitor";
for "_i" from 1 to 2 do {player addItemToBackpack "rhs_mag_m67";};
player addItemToBackpack "rhs_mag_an_m8hc";
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_HuntIR_M203";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_Sandbag_empty";};
player addItemToBackpack "ACE_EntrenchingTool";
player addItemToBackpack "rhsusf_acc_M952V";
player addItemToBackpack "H_Booniehat_mcamo";
player addHeadgear "H_HelmetB_camo";
player addGoggles "rhs_googles_clear";

player addWeapon "rhs_weap_m4a1_blockII_M203_wd";
player addPrimaryWeaponItem "muzzle_snds_m_khk_F";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15side_bk";
player addPrimaryWeaponItem "rhsusf_acc_eotech_552";
player addWeapon "rhsusf_weap_glock17g4";

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_rf7800str_1";
player linkItem "rhsusf_ANPVS_15";		
	};
	
	case "rhsusf_socom_marsoc_cso":
	{
player forceAddUniform "milgp_u_g3_field_set_mctropic";
player addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_epinephrine";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_morphine";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "rhs_m136_mag";
player addVest "milgp_v_marciras_teamleader_belt_RGR";
for "_i" from 1 to 2 do {player addItemToVest "ACE_CableTie";};
player addItemToVest "ACE_IR_Strobe_Item";
player addItemToVest "ACE_Flashlight_MX991";
for "_i" from 1 to 7 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer";};
player addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";
player addItemToVest "rhs_mag_an_m8hc";
for "_i" from 1 to 2 do {player addItemToVest "Chemlight_red";};
for "_i" from 1 to 2 do {player addItemToVest "Chemlight_blue";};
for "_i" from 1 to 2 do {player addItemToVest "Chemlight_green";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_mk84";};
player addItemToVest "rhs_mag_mk3a2";
player addBackpack "B_AssaultPack_tna_F";
for "_i" from 1 to 2 do {player addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer";};
for "_i" from 1 to 2 do {player addItemToBackpack "rhs_mag_m67";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_Sandbag_empty";};
player addItemToBackpack "ACE_EntrenchingTool";
player addItemToBackpack "rhs_mag_an_m14_th3";
player addItemToBackpack "rhs_mag_an_m8hc";
player addItemToBackpack "rhsusf_acc_M952V";
player addItemToBackpack "H_Booniehat_mcamo";
player addHeadgear "H_HelmetB_camo";
player addGoggles "rhs_googles_clear";

player addWeapon "rhs_weap_mk18_KAC_wd";
player addPrimaryWeaponItem "muzzle_snds_m_khk_F";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk_top";
player addPrimaryWeaponItem "rhsusf_acc_eotech_552";
player addPrimaryWeaponItem "rhsusf_acc_grip2";
player addWeapon "rhs_weap_M136";
player addWeapon "rhsusf_weap_glock17g4";

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_rf7800str_1";
player linkItem "rhsusf_ANPVS_15";	
		
	};

	case "rhsusf_socom_marsoc_cso_eod":
	{
player forceAddUniform "milgp_u_g3_field_set_mctropic";
player addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_epinephrine";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_morphine";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addVest "milgp_v_marciras_assaulter_belt_rgr";
for "_i" from 1 to 2 do {player addItemToVest "ACE_CableTie";};
player addItemToVest "ACE_IR_Strobe_Item";
player addItemToVest "ACE_EarPlugs";
player addItemToVest "ACE_Flashlight_MX991";
for "_i" from 1 to 7 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer";};
for "_i" from 1 to 2 do {player addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_an_m8hc";};
for "_i" from 1 to 2 do {player addItemToVest "Chemlight_red";};
for "_i" from 1 to 2 do {player addItemToVest "Chemlight_blue";};
for "_i" from 1 to 2 do {player addItemToVest "Chemlight_green";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_mk84";};
player addItemToVest "rhs_mag_mk3a2";
player addItemToVest "ACE_M14";
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m18_red";};
player addBackpack "B_AssaultPack_tna_F";
player addItemToBackpack "ACE_wirecutter";
player addItemToBackpack "MineDetector";
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_Clacker";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_M26_Clacker";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_DefusalKit";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_DeadManSwitch";};
for "_i" from 1 to 2 do {player addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer";};
for "_i" from 1 to 2 do {player addItemToBackpack "rhs_mag_m67";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_Sandbag_empty";};
player addItemToBackpack "ACE_EntrenchingTool";
player addItemToBackpack "rhs_mag_an_m14_th3";
player addItemToBackpack "rhs_mag_an_m8hc";
player addItemToBackpack "DemoCharge_Remote_Mag";
player addItemToBackpack "APERSMine_Range_Mag";
player addItemToBackpack "rhsusf_acc_M952V";
player addItemToBackpack "H_Booniehat_mcamo";
player addHeadgear "H_HelmetB_camo";
player addGoggles "rhs_googles_clear";

player addWeapon "rhs_weap_mk18_KAC_wd";
player addPrimaryWeaponItem "rhsusf_acc_nt4_black";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk_top"; 
player addPrimaryWeaponItem "rhsusf_acc_eotech_552";
player addPrimaryWeaponItem "rhsusf_acc_grip2";
player addWeapon "rhsusf_weap_glock17g4";

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_rf7800str_1";
player linkItem "rhsusf_ANPVS_15";	
		
	};

	case "rhsusf_socom_marsoc_cso_cqb":
	{
player forceAddUniform "milgp_u_g3_field_set_mctropic";
player addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_epinephrine";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_morphine";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addVest "milgp_v_marciras_hgunner_belt_rgr";
for "_i" from 1 to 2 do {player addItemToVest "ACE_CableTie";};
player addItemToVest "ACE_IR_Strobe_Item";
player addItemToVest "ACE_Flashlight_MX991";
player addItemToVest "rhs_mag_an_m8hc";
for "_i" from 1 to 2 do {player addItemToVest "Chemlight_red";};
for "_i" from 1 to 2 do {player addItemToVest "Chemlight_blue";};
for "_i" from 1 to 2 do {player addItemToVest "Chemlight_green";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 4 do {player addItemToVest "rhsusf_100Rnd_556x45_soft_pouch";};
player addBackpack "B_AssaultPack_tna_F";
for "_i" from 1 to 2 do {player addItemToBackpack "rhs_mag_m67";};
player addItemToBackpack "rhs_mag_an_m8hc";
for "_i" from 1 to 3 do {player addItemToBackpack "rhsusf_100Rnd_556x45_soft_pouch";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_Sandbag_empty";};
player addItemToBackpack "ACE_EntrenchingTool";
player addItemToBackpack "rhsusf_acc_M952V";
player addItemToBackpack "H_Booniehat_mcamo";
player addHeadgear "H_HelmetB_camo";
player addGoggles "rhs_googles_clear";

player addWeapon "rhs_weap_m249_pip_S_para";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15side_bk";
player addPrimaryWeaponItem "rhsusf_acc_eotech_552";

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_rf7800str_1";
player linkItem "rhsusf_ANPVS_15";	
		
	};
		
	case "rhsusf_socom_marsoc_sniper":
	{
player forceAddUniform "U_B_FullGhillie_sard";
player addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_epinephrine";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_morphine";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_ATragMX";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_Kestrel4500";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_RangeCard";
for "_i" from 1 to 2 do {player addItemToUniform "Chemlight_blue";};
for "_i" from 1 to 2 do {player addItemToUniform "Chemlight_green";};
for "_i" from 1 to 2 do {player addItemToUniform "Chemlight_red";};
player addVest "V_Chestrig_rgr";
for "_i" from 1 to 2 do {player addItemToVest "ACE_CableTie";};
player addItemToVest "ACE_IR_Strobe_Item";
player addItemToVest "ACE_Flashlight_MX991";
player addItemToVest "ACE_MapTools";
for "_i" from 1 to 2 do {player addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";};
player addItemToVest "rhs_mag_an_m8hc";
for "_i" from 1 to 2 do {player addItemToVest "Chemlight_red";};
for "_i" from 1 to 2 do {player addItemToVest "Chemlight_blue";};
for "_i" from 1 to 2 do {player addItemToVest "Chemlight_green";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_mk84";};
player addItemToVest "rhs_mag_mk3a2";
for "_i" from 1 to 4 do {player addItemToVest "rhsusf_20Rnd_762x51_m118_special_Mag";};
player addBackpack "B_TacticalPack_mcamo";
for "_i" from 1 to 4 do {player addItemToBackpack "rhs_mag_m67";};
for "_i" from 1 to 2 do {player addItemToBackpack "rhs_mag_an_m8hc";};
for "_i" from 1 to 2 do {player addItemToBackpack "rhsusf_20Rnd_762x51_m118_special_Mag";};
player addItemToBackpack "rhs_mag_m18_red";
player addItemToBackpack "rhs_mag_m18_purple";
player addItemToBackpack "rhs_mag_m18_green";
for "_i" from 1 to 2 do {player addItemToBackpack "rhs_mag_mk84";};
for "_i" from 1 to 2 do {player addItemToBackpack "rhs_mag_m7a3_cs";};
for "_i" from 1 to 2 do {player addItemToBackpack "APERSMine_Range_Mag";};
for "_i" from 1 to 2 do {player addItemToBackpack "APERSTripMine_Wire_Mag";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_Sandbag_empty";};
player addItemToBackpack "ACE_EntrenchingTool";
player addItemToBackpack "rhsusf_acc_M952V";
player addHeadgear "H_Booniehat_mcamo";
player addGoggles "rhs_googles_clear";

player addWeapon "rhs_weap_sr25_wd";
player addPrimaryWeaponItem "rhsusf_acc_SR25S";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15side_bk";
player addPrimaryWeaponItem "optic_LRPS_tna_F";
player addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
player addWeapon "rhsusf_weap_glock17g4";
player addWeapon "ACE_Vector";

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_anprc152";
player linkItem "rhsusf_ANPVS_15";	
		
	};
	
	case "rhsusf_socom_marsoc_spotter":
	{
player forceAddUniform "U_B_FullGhillie_sard";
player addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_epinephrine";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_morphine";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_ATragMX";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_Kestrel4500";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_RangeCard";
for "_i" from 1 to 2 do {player addItemToUniform "Chemlight_blue";};
for "_i" from 1 to 2 do {player addItemToUniform "Chemlight_green";};
for "_i" from 1 to 2 do {player addItemToUniform "Chemlight_red";};
player addVest "V_Chestrig_rgr";
for "_i" from 1 to 2 do {player addItemToVest "ACE_CableTie";};
for "_i" from 1 to 2 do {player addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";};
player addItemToVest "rhs_mag_an_m8hc";
player addItemToVest "ACE_Flashlight_MX991";
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_mk84";};
for "_i" from 1 to 7 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
for "_i" from 1 to 10 do {player addItemToVest "rhs_mag_M433_HEDP";};
player addBackpack "B_TacticalPack_mcamo";
player addItemToBackpack "ACE_SpottingScope";
for "_i" from 1 to 4 do {player addItemToBackpack "rhs_mag_m67";};
for "_i" from 1 to 2 do {player addItemToBackpack "rhs_mag_an_m8hc";};
player addItemToBackpack "rhs_mag_m18_red";
player addItemToBackpack "rhs_mag_m18_purple";
player addItemToBackpack "rhs_mag_m18_green";
for "_i" from 1 to 2 do {player addItemToBackpack "rhs_mag_mk84";};
for "_i" from 1 to 2 do {player addItemToBackpack "rhs_mag_m7a3_cs";};
for "_i" from 1 to 2 do {player addItemToBackpack "APERSMine_Range_Mag";};
for "_i" from 1 to 2 do {player addItemToBackpack "APERSTripMine_Wire_Mag";};
for "_i" from 1 to 2 do {player addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
for "_i" from 1 to 4 do {player addItemToBackpack "rhs_mag_M433_HEDP";};
for "_i" from 1 to 4 do {player addItemToBackpack "rhs_mag_m4009";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_Sandbag_empty";};
player addItemToBackpack "ACE_EntrenchingTool";
player addItemToBackpack "rhs_mag_m716_yellow";
player addItemToBackpack "rhs_mag_m715_Green";
player addItemToBackpack "rhs_mag_m714_White";
player addItemToBackpack "rhs_mag_m713_Red";
player addItemToBackpack "rhsusf_acc_M952V";
player addHeadgear "H_Booniehat_mcamo";
player addGoggles "rhs_googles_clear";

player addWeapon "rhs_weap_m4a1_blockII_M203_wd";
player addPrimaryWeaponItem "muzzle_snds_m_khk_F";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15side_bk";
player addPrimaryWeaponItem "rhsusf_acc_ACOG_wd";
player addWeapon "rhsusf_weap_glock17g4";
player addWeapon "ACE_Vector";

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_rf7800str_1";
player linkItem "rhsusf_ANPVS_15";	
		
	};
	
	case "rhsusf_usmc_marpat_wd_helipilot":
	{
player forceAddUniform "U_B_HeliPilotCoveralls";
player addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_epinephrine";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_morphine";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addVest "milgp_v_marciras_teamleader_RGR";
for "_i" from 1 to 2 do {player addItemToVest "ACE_CableTie";};
player addItemToVest "ACE_IR_Strobe_Item";
player addItemToVest "ACE_Flashlight_MX991";
player addItemToVest "ACE_MapTools";
for "_i" from 1 to 2 do {player addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";};
player addItemToVest "rhs_mag_an_m8hc";
for "_i" from 1 to 2 do {player addItemToVest "Chemlight_red";};
for "_i" from 1 to 2 do {player addItemToVest "Chemlight_blue";};
for "_i" from 1 to 2 do {player addItemToVest "Chemlight_green";};
for "_i" from 1 to 5 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
player addHeadgear "rhsusf_hgu56p";

player addWeapon "rhs_weap_m4_carryhandle";
player addPrimaryWeaponItem "rhsusf_acc_grip2";
player addWeapon "rhsusf_weap_glock17g4";

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_anprc152";
player linkItem "ItemGPS";
player linkItem "rhsusf_ANPVS_15";	
		
	};
	
	case "rhsusf_socom_marsoc_elementleader":
	{
player forceAddUniform "U_Competitor";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_Flashlight_MX991";
player addHeadgear "H_Cap_marshal";
player addGoggles "rhs_googles_clear";

player addWeapon "ACE_Vector";

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_anprc152";
		
	};
};
