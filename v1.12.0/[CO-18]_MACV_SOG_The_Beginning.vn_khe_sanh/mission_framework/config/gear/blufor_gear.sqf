/*
    Create a loadout in the ACE Arsenal, click 'Export' and then paste the exported array.

    Use selectRandom to randomise stuff.
    Example:

    case "SL" : {
        _randomStuff = selectRandom ["stuff1_classname", "stuff2_classname"];

        _gear = [
            ...,
            _randomStuff,
            ...
        ];
    };
 */

// MACV-SOG

case "TL" : {
    _gear = [
    ["vn_xm177_camo","","","",["vn_m16_20_mag",18],[],""],[],["vn_m79_p","","","",["vn_40mm_m381_he_mag",1],[],""],["vn_b_uniform_sog_02_04",[["ACE_MapTools",1],["ACE_packingBandage",6],["ACE_CableTie",4],["ACE_epinephrine",1],["ACE_Flashlight_MX991",1],["ACE_morphine",1],["ACE_plasmaIV_500",2],["ACE_splint",1],["ACE_tourniquet",4]]],["vn_b_vest_sog_01",[["vn_m16_20_mag",14,18],["vn_40mm_m381_he_mag",6,1],["vn_v40_grenade_mag",4,3],["vn_m67_grenade_mag",2,1]]],["vn_b_pack_trp_04",[["ACE_EntrenchingTool",1],["ACE_Clacker",1],["vn_m16_20_mag",10,18],["vn_m67_grenade_mag",4,1],["vn_m7_grenade_mag",2,1],["vn_m34_grenade_mag",2,1],["vn_m14_early_grenade_mag",2,1],["vn_m18_white_mag",2,1],["vn_40mm_m381_he_mag",8,1],["vn_m18_red_mag",1,1],["vn_m18_green_mag",1,1],["vn_mine_m14_mag",1,1],["vn_mine_m18_range_mag",2,1],["vn_mine_m112_remote_mag",1,1]]],"vn_b_boonie_02_04","vn_b_scarf_01_01",["vn_m19_binocs_grey","","","",[],[],""],["vn_b_item_map","","vn_b_item_radio_urc10","vn_b_item_compass_sog","vn_b_item_watch",""]
    ];
};


case "MEDIC" : {
    _gear = [
    ["vn_m16_camo","","","",["vn_m16_20_mag",18],[],""],[],[],["vn_b_uniform_sog_02_04",[["ACE_MapTools",1],["ACE_packingBandage",6],["ACE_CableTie",4],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_plasmaIV_500",2],["ACE_splint",1],["ACE_tourniquet",1],["vn_m18_white_mag",2,1],["vn_m7_grenade_mag",2,1],["vn_m34_grenade_mag",1,1],["vn_v40_grenade_mag",1,3]]],["vn_b_vest_sog_02",[["vn_m16_20_mag",18,18]]],["vn_b_pack_trp_02",[["ACE_EntrenchingTool",1],["ACE_personalAidKit",1],["ACE_surgicalKit",1],["ACE_elasticBandage",30],["ACE_packingBandage",30],["ACE_quikclot",30],["ACE_bloodIV_500",20],["ACE_epinephrine",10],["ACE_morphine",10],["ACE_splint",20],["ACE_tourniquet",20]]],"vn_b_headband_04","vn_b_scarf_01_01",["vn_m19_binocs_grey","","","",[],[],""],["ItemMap","","vn_b_item_radio_urc10","vn_b_item_compass_sog","vn_b_item_watch",""]
    ];
};


case "TERP" : {
    _gear = [
    ["vn_xm177_camo","","","",["vn_m16_20_mag",18],[],""],[],["vn_m79_p","","","",["vn_40mm_m381_he_mag",1],[],""],["vn_b_uniform_sog_02_04",[["ACE_packingBandage",6],["ACE_morphine",1],["ACE_tourniquet",4],["ACE_CableTie",4],["ACE_epinephrine",1],["ACE_Flashlight_MX991",1],["ACE_plasmaIV_500",2],["ACE_splint",1]]],["vn_b_vest_sog_01",[["vn_m16_20_mag",16,18]]],["vn_b_pack_02_xm177_pl",[["ACE_EntrenchingTool",1],["vn_mine_m18_range_mag",3,1],["vn_mine_m14_mag",12,1],["vn_m67_grenade_mag",4,1],["vn_m7_grenade_mag",2,1],["vn_m34_grenade_mag",2,1],["vn_m14_early_grenade_mag",2,1],["vn_m18_white_mag",3,1],["vn_40mm_m381_he_mag",8,1],["vn_40mm_m576_buck_mag",6,1]]],"vn_b_boonie_02_04","vn_b_scarf_01_01",["vn_m19_binocs_grey","","","",[],[],""],["vn_b_item_map","","vn_b_item_radio_urc10","vn_b_item_compass_sog","vn_b_item_watch",""]
    ];
};


case "GRENADIER" : {
    _gear = [
    ["vn_xm177_xm148","","","",["vn_m16_20_t_mag",18],["vn_40mm_m381_he_mag",1],""],[],[],["vn_b_uniform_sog_02_04",[["ACE_packingBandage",6],["ACE_tourniquet",4],["ACE_morphine",1],["ACE_CableTie",4],["ACE_epinephrine",1],["ACE_Flashlight_MX991",1],["ACE_plasmaIV_500",2],["ACE_splint",1]]],["vn_b_vest_sog_01",[["vn_m16_20_t_mag",22,18]]],["vn_b_pack_02_xm177_pl",[["ACE_EntrenchingTool",1],["ACE_Clacker",1],["vn_m16_20_t_mag",9,18],["vn_40mm_m381_he_mag",12,1],["vn_m61_grenade_mag",4,1],["vn_m18_red_mag",2,1],["vn_m34_grenade_mag",2,1],["vn_mine_m112_remote_mag",1,1],["vn_mine_m14_mag",3,1],["vn_mine_m18_range_mag",2,1],["vn_40mm_m583_flare_w_mag",4,1],["vn_40mm_m406_he_mag",4,1],["vn_40mm_m397_ab_mag",4,1],["vn_40mm_m433_hedp_mag",4,1]]],"vn_b_bandana_01","vn_b_scarf_01_01",[],["vn_b_item_map","","vn_b_item_radio_urc10","vn_b_item_compass_sog","vn_b_item_watch",""]
    ];
};


case "MACHINEGUNNER" : {
    _gear = [
    ["vn_rpd_shorty_01","","","",["vn_rpd_125_mag",125],[],""],[],[],["vn_b_uniform_sog_02_04",[["ACE_morphine",1],["ACE_packingBandage",6],["ACE_tourniquet",4],["ACE_CableTie",4],["ACE_epinephrine",1],["ACE_Flashlight_MX991",1],["ACE_plasmaIV_500",2],["ACE_splint",1],["vn_rpd_100_mag",1,100]]],["vn_b_vest_sog_05",[["vn_rpd_125_mag",3,125]]],["vn_b_pack_trp_01",[["ACE_EntrenchingTool",1],["vn_mine_m18_range_mag",3,1],["vn_mine_m14_mag",12,1],["vn_m67_grenade_mag",4,1],["vn_m7_grenade_mag",1,1],["vn_m34_grenade_mag",1,1],["vn_m14_early_grenade_mag",1,1],["vn_m18_white_mag",1,1],["vn_rpd_100_mag",6,100]]],"vn_b_headband_04","vn_b_scarf_01_01",["vn_m19_binocs_grey","","","",[],[],""],["vn_b_item_map","","vn_b_item_radio_urc10","vn_b_item_compass_sog","vn_b_item_watch",""]
    ];
};



case "SCOUT" : {
    _gear = [
    ["vn_m3a1","vn_s_m3a1","","",["vn_m3a1_mag",30],[],""],[],[],["vn_b_uniform_sog_02_04",[["ACE_packingBandage",6],["ACE_morphine",1],["ACE_tourniquet",4],["ACE_CableTie",4],["ACE_epinephrine",1],["ACE_Flashlight_MX991",1],["ACE_plasmaIV_500",2],["ACE_splint",1]]],["vn_b_vest_sog_04",[["vn_m3a1_mag",18,30]]],["vn_b_pack_trp_02",[["ACE_EntrenchingTool",1],["vn_mine_m18_range_mag",3,1],["vn_mine_m14_mag",12,1],["vn_m67_grenade_mag",4,1],["vn_m7_grenade_mag",1,1],["vn_m34_grenade_mag",1,1],["vn_m14_early_grenade_mag",1,1],["vn_m18_white_mag",1,1],["vn_m3a1_mag",11,30],["vn_rpd_100_mag",2,100]]],"vn_b_bandana_04","vn_b_scarf_01_01",["vn_m19_binocs_grey","","","",[],[],""],["vn_b_item_map","","vn_b_item_radio_urc10","vn_b_item_compass_sog","vn_b_item_watch",""]
    ];
};



case "PILOT" : {
    _gear = [
    [],[],["vn_m1911","","","",["vn_m1911_mag",7],[],""],["vn_b_uniform_k2b_02_03",[["ACE_packingBandage",6],["ACE_epinephrine",1],["ACE_MapTools",1],["ACE_morphine",1],["ACE_Flashlight_MX991",1],["ACE_plasmaIV_500",2],["ACE_splint",1],["ACE_tourniquet",1],["vn_m18_red_mag",1,1],["vn_m18_green_mag",1,1],["vn_m7_grenade_mag",2,1],["vn_m67_grenade_mag",1,1]]],["vn_b_vest_aircrew_05",[["vn_m18_purple_mag",1,1],["vn_m1911_mag",3,7],["vn_m18_red_mag",2,1],["vn_m18_green_mag",2,1],["vn_m67_grenade_mag",1,1]]],[],"vn_b_helmet_svh4_02_05","vn_b_aviator",[],["vn_b_item_map","","vn_b_item_radio_urc10","vn_b_item_compass","vn_b_item_watch",""]
    ];
};