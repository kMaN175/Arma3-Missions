// ACE Advanced Ballistics
force ace_advanced_ballistics_ammoTemperatureEnabled = true;
force ace_advanced_ballistics_barrelLengthInfluenceEnabled = true;
force ace_advanced_ballistics_bulletTraceEnabled = true;
force ace_advanced_ballistics_enabled = false;
force ace_advanced_ballistics_muzzleVelocityVariationEnabled = true;
force ace_advanced_ballistics_simulationInterval = 0.05;

// ACE Advanced Fatigue
force ace_advanced_fatigue_enabled = true;
force ace_advanced_fatigue_enableStaminaBar = true;
force ace_advanced_fatigue_loadFactor = 1;
force ace_advanced_fatigue_performanceFactor = 1.2;
force ace_advanced_fatigue_recoveryFactor = 1.2;
force ace_advanced_fatigue_swayFactor = 1;
force ace_advanced_fatigue_terrainGradientFactor = 0.8;

// ACE Advanced Throwing
ace_advanced_throwing_enabled = true;
force ace_advanced_throwing_enablePickUp = true;
force ace_advanced_throwing_enablePickUpAttached = true;
ace_advanced_throwing_showMouseControls = true;
ace_advanced_throwing_showThrowArc = true;

// ACE Arsenal
force ace_arsenal_allowDefaultLoadouts = false;
force ace_arsenal_allowSharedLoadouts = true;
ace_arsenal_camInverted = false;
force ace_arsenal_enableIdentityTabs = true;
ace_arsenal_enableModIcons = true;
ace_arsenal_EnableRPTLog = true;
ace_arsenal_fontHeight = 4.5;

// ACE Captives
force ace_captives_allowHandcuffOwnSide = true;
force ace_captives_allowSurrender = true;
force ace_captives_requireSurrender = 1;
force ace_captives_requireSurrenderAi = false;

// ACE Common
force ace_common_allowFadeMusic = true;
force force ace_common_checkPBOsAction = 1;
force force ace_common_checkPBOsCheckAll = true;
force force ace_common_checkPBOsWhitelist = "[jsrs_soundmod_cfg_rhs_afrf_weapons,jsrs_soundmod_cfg_rhs_afrf_vehicles,jsrs_soundmod_cfg_rhs_usf_weapons,jsrs_soundmod_cfg_rhs_usf_vehicles,jsrs_soundmod_complete_edition_soundfiles,jsrs_soundmod_complete_edition,clib,fkframework,jsrs_soundmod_cfg_rhs_usf_air_vehicles,jsrs_soundmod_cfg_rhs_afrf_air_vehicles,jsrs_soundmod_landvehicles,jsrs_soundmod_snd_air_vehicles,jsrs_soundmod_snd_environment,jsrs_soundmod_snd_land_vehicles,jsrs_soundmod_snd_movement,jsrs_soundmod_snd_warfare,jsrs_soundmod_snd_weapons,jsrs_soundmod_rhs_gref_weapons,jsrs_soundmod_rhs_saf_weapons,jsrs_soundmod_snd_sea_vehicles,jsrs_soundmod_boats,dynasound_ds_main,dynasound_ds_w_30mmcannon,dynasound_ds_w_m134,dynasound_ds_w_m200,dynasound_ds_w_minigun,dynasound_ds_w_mk14,dynasound_ds_w_mortar82mm,dynasound_ds_w_rpg,dynasound_ds_sys,dynasound_ds_w_4five,dynasound_ds_w_aa,dynasound_ds_w_acpc2,dynasound_ds_w_gau8,dynasound_ds_w_gmg,dynasound_ds_w_kir,dynasound_ds_w_p07,dynasound_ds_w_rook,dynasound_ds_w_shared,dynasound_ds_w_tails,dynasound_ds_w_tavor,dynasound_ds_w_titan,dynasound_ds_w_type115_1,dynasound_ds_w_type115_2,dynasound_ds_w_ugl,dynasound_ds_w_vermin,dynasound_ds_w_zafir,dynasound_ds_w_zubr,dynasound_ds_a_blackhawk,dynasound_ds_a_chinook,dynasound_ds_a_comanche,dynasound_ds_a_kajman,dynasound_ds_a_kasatka,dynasound_ds_a_littlebird,dynasound_ds_a_lynx,dynasound_ds_a_merlin,dynasound_ds_a_taru,dynasound_ds_a_xiang,dynasound_ds_lv_hatchbacksport,dynasound_ds_m_bullets,dynasound_ds_m_explosions,dynasound_ds_w_120mm,dynasound_ds_w_155mm,dynasound_ds_w_20mmgatling,dynasound_ds_w_30mmgatling,dynasound_ds_w_ak12,dynasound_ds_w_akm,dynasound_ds_w_aks,dynasound_ds_w_autocannon,dynasound_ds_w_car95,dynasound_ds_w_cmr76,dynasound_ds_w_coaxmg,dynasound_ds_w_cyrus,dynasound_ds_w_ebr,dynasound_ds_w_emr,dynasound_ds_w_f2000,dynasound_ds_w_hmg,dynasound_ds_w_katiba,dynasound_ds_w_launcher_big,dynasound_ds_w_launcher_small,dynasound_ds_w_lim,dynasound_ds_w_lrr,dynasound_ds_w_lynx,dynasound_ds_w_m14,dynasound_ds_w_mar10,dynasound_ds_w_minigun65,dynasound_ds_w_minigun762,dynasound_ds_w_mk200,dynasound_ds_w_mlrs,dynasound_ds_w_mx,dynasound_ds_w_navid,dynasound_ds_w_pcml,dynasound_ds_w_pdw2000,dynasound_ds_w_planelaunchers,dynasound_ds_w_protector,dynasound_ds_w_rahim,dynasound_ds_w_rpg7,dynasound_ds_w_scalpel,dynasound_ds_w_sdar,dynasound_ds_w_skyfire,dynasound_ds_w_spar762,dynasound_ds_w_spar,dynasound_ds_w_spmg,dynasound_ds_w_sting,dynasound_ds_w_alamut,dynasound_ds_w_asraam,dynasound_ds_w_dagr,jsrs_soundmod_landvehicles,jsrs_soundmod_bullethits,jsrs_soundmod_environment,jsrs_soundmod_framework,jsrs_soundmod_sonic_cracks,jsrs_soundmod_apcs,jsrs_soundmod_tanks,jsrs_soundmod_cars,jsrs_soundmod_helicopters,jsrs_soundmod_movement,jsrs_soundmod_trucks,jsrs_soundmod_uavs,jsrs_soundmod_vtols,jsrs_soundmod_weapons,jsrs_soundmod_niarms_arsenal_weapons,jsrs_soundmod_rhs_aaf_gref_weapons,jsrs_soundmod_rhs_afrf_vehicles,jsrs_soundmod_rhs_afrf_weapons,jsrs_soundmod_rhs_usf_vehicles,jsrs_soundmod_rhs_usf_weapons,jsrs_soundmod_explosions,jsrs_soundmod_cas_plane1,jsrs_rhs_uazS,jsrs_rhs_ah1z,jsrs_rhs_ah64d,jsrs_rhs_bmd4,jsrs_rhs_bmd,jsrs_rhs_bmp3,jsrs_rhs_bmp,jsrs_rhs_ch49,jsrs_rhs_fmtv,jsrs_rhs_hmmwv,jsrs_rhs_m1abrams,jsrs_rhs_m2a2,jsrs_rhs_mrzr,jsrs_rhs_t72,jsrs_rhs_t80,jsrs_rhs_uh1,jsrs_rhs_uh60,jsrsapex_bullethits,jsrsapex_environment,jsrsapex_explosions,jpex_framework,jsrsapex_globalfilters,jsrsapex_movement,jsrsapex_sonic_cracks,jsrsapex_230mm_titan,jsrsapex_air_weapons,jsrsapex_35mm_autocannon,jsrsapex_120mm_cannon,jsrsapex_gatling,jsrsapex_gatling_30mm_plane_cas_01,jsrsapex_cannon_30mm_plane_cas_02,jsrsapex_ctws_autocannon,jsrsapex_dagr,jsrsapex_dar,jsrsapex_30mm_cannon,jsrsapex_gatling_weapons,jsrsapex_155mm_amos,jsrsapex_lmg_coax,jsrsapex_lmgrcws,jsrsapex_gmg20,jsrsapex_gmg40,jsrsapex_127,jsrsapex_skalpel_atgm,jsrsapex_skyfire,jsrsapex_veh_titan,jsrsapex_4five45,jsrsapex_acpc,jsrsapex_asp1,jpex_mx,jsrsapex_ctar,jsrsapex_cyrus,jsrsapex_m6,jsrsapex_khaybar,jsrsapex_m320r,jsrsapex_mar10,jsrsapex_mk1emr,jsrsapex_mk14,jsrsapex_ebr,jsrsapex_fs2000,jsrs_soundmod_skalpel_atgm,jsrs_soundmod_skyfire,jsrs_soundmod_veh_titan,jsrs_soundmod_4five45,jsrs_rhs_uaz,jsrs_soundmod_fighterplane3,jsrs_soundmod_cas_plane2,jsrs_soundmod_globalfilters,jsrs_soundmod_movement_apex,jsrs_soundmod_ah99_blackfoot,jsrs_soundmod_ah9_pawnee,jsrs_soundmod_uav_1,jsrs_soundmod_ch67_huron,jsrs_soundmod_ch49_mohawk,jsrs_soundmod_kh3a_fenghuan,jsrs_soundmod_mi290_taru,jsrs_soundmod_mi48_kajman,jsrs_soundmod_mq12_falcon,jsrs_soundmod_uav_2,jsrs_soundmod_po30_orca,jsrs_soundmod_uh80_ghosthawk,jsrs_soundmod_v44x_blackfish,jsrs_soundmod_wy55_hellcat,jsrs_soundmod_y32_xian,jsrs_soundmod_armed_boat,jsrs_soundmod_rubber_boat,jsrs_soundmod_speed_boat,jsrs_soundmod_2s9_sorcher,jsrs_soundmod_btrk_kamysh,jsrs_soundmod_fv720_mora,jsrs_soundmod_ifv6a_cheetah,jsrs_soundmod_ifv6c_panther,jsrs_soundmod_m2a1_slammer,jsrs_soundmod_m4_scorcher,jsrs_soundmod_m5_sandstorm,jsrs_soundmod_mbt52_kuma,jsrs_soundmod_t100_varsuk,jsrs_soundmod_zsu39_tigris,jsrs_soundmod_afv4_gorgon,jsrsapex_m200,jsrsapex_truck1,jsrsapex_hunter,jsrsapex_ifrit,jsrsapex_mse3_marid,jsrsapex_offroad,jsrsapex_quadbike,jsrsapex_strider,jsrsapex_suv,jsrsapex_truck2,jsrsapex_van,jsrsapex_truck3,jsrsapex_movement_apex,jsrsapex_kh3a_fenghuan,jsrsapex_mq12_falcon,jsrsapex_v44x_blackfish,jsrsapex_y32_xian,jsrsapex_mb4wd,jsrsapex_prowler,jsrsapex_ak12,jsrsapex_akm,jsrsapex_aks,jsrsapex_cmr,jsrsapex_lim85,jsrsapex_pm9m,jsrsapex_protector,jsrsapex_rpg7v,jsrsapex_spar,jsrsapex_type115,jsrsapex_navid,jsrsapex_p07,jsrsapex_pcml,jsrsapex_pdw,jsrsapex_rahim,jsrsapex_rook40,jsrsapex_rpg32,jsrsapex_spmg,jsrsapex_scorpian,jsrsapex_titan,jsrsapex_trg20,jsrsapex_ugl,jsrsapex_sdar,jsrsapex_vector,jsrsapex_zafir,jsrsapex_zubr45,jsrsapex_fighterplane3,jsrsapex_cas_plane1,jsrsapex_ah99_blackfoot,jsrsapex_ah9_pawnee,jsrsapex_uav_1,jsrsapex_ch67_huron,jsrsapex_ch49_mohawk,jsrsapex_mi290_taru,jsrsapex_mi48_kajman,jsrsapex_uav_2,jsrsapex_po30_orca,jsrsapex_cas_plane2,jsrsapex_uh80_ghosthawk,jsrsapex_wy55_hellcat,jsrsapex_armed_boat,jsrsapex_rubber_boat,jsrsapex_speed_boat,jsrsapex_2s9_sorcher,jsrsapex_btrk_kamysh,jsrsapex_fv720_mora,jsrsapex_ifv6a_cheetah,jsrsapex_ifv6c_panther,jsrsapex_m2a1_slammer,jsrsapex_m4_scorcher,jsrsapex_m5_sandstorm,jsrsapex_mbt52_kuma,jsrsapex_t100_varsuk,jsrsapex_zsu39_tigris,jsrsapex_afv4_gorgon,jsrsapex_amv7_marshal,jsrsapex_hatchback,jsrs_soundmod_p07,jsrs_soundmod_pcml,jsrs_soundmod_pdw,jsrs_soundmod_pkm,jsrs_soundmod_pm9m,jsrs_soundmod_pp2000,jsrs_soundmod_protector,jsrs_soundmod_lmg_coax,jsrs_soundmod_khaybar,jsrs_soundmod_fs2000,jsrs_soundmod_titan,jsrs_soundmod_spar,jsrs_soundmod_trg21,jsrs_soundmod_rahim,jsrs_soundmod_rook40,jsrs_soundmod_rpg32,jsrs_soundmod_rpg7v,jsrs_soundmod_spar16,jsrs_soundmod_spmg,jsrs_soundmod_sr25,jsrs_soundmod_scorpian,jsrs_soundmod_svd,jsrs_soundmod_titan_mprl,jsrs_soundmod_trg20,jsrs_soundmod_type115,jsrs_soundmod_ugl,jsrs_soundmod_sdar,jsrs_soundmod_vector,jsrs_soundmod_zafir,jsrs_soundmod_zubr45,jsrs_soundmod_acpc,jsrs_soundmod_ad97,jsrs_soundmod_ak12,jsrs_soundmod_ak74,jsrs_soundmod_ak74u,jsrs_soundmod_akm,jsrs_soundmod_akm_rhs,jsrs_soundmod_aks,jsrs_soundmod_ak103_rhs,jsrs_soundmod_asp1,jsrs_soundmod_asval,jsrs_soundmod_cmr,jsrs_soundmod_ctar,jsrs_soundmod_cyrus,jsrs_soundmod_g36,jsrs_soundmod_glock17,jsrs_soundmod_m6,jsrs_rhs_soundmod_hk416,jsrs_rhs_soundmod_kar98k,jsrs_soundmod_katiba,jsrs_soundmod_lim85,jsrs_soundmod_m107,jsrs_rhs_soundmod_m16a4,jsrs_soundmod_m1911,jsrs_soundmod_m21,jsrs_soundmod_m240,jsrs_soundmod_m249,jsrs_rhs_soundmod_m32,jsrs_soundmod_m320r,jsrs_rhs_soundmod_mosin,jsrs_rhs_soundmod_m4,jsrs_rhs_soundmod_m590,jsrs_soundmod_m70,jsrs_soundmod_m76,jsrs_soundmod_m84,jsrs_soundmod_mar10,jsrs_soundmod_mk1emr,jsrs_soundmod_mk11,jsrs_soundmod_mk14,jsrs_soundmod_ebr,jsrs_soundmod_mk20,jsrs_soundmod_m200,jsrs_soundmod_mx2010,jsrs_soundmod_navid,jsrs_soundmod_amv7_marshal,jsrs_soundmod_hatchback,jsrs_soundmod_truck1,jsrs_soundmod_hunter,jsrs_soundmod_ifrit,jsrs_soundmod_mb4wd,jsrs_soundmod_mse3_marid,jsrs_soundmod_offroad,jsrs_soundmod_prowler,jsrs_soundmod_quadbike,jsrs_soundmod_strider,jsrs_soundmod_suv,jsrs_soundmod_truck2,jsrs_soundmod_van,jsrs_soundmod_truck3,jsrs_soundmod_230mm_titan,jsrs_soundmod_air_weapons,jsrs_soundmod_35mm_autocannon,jsrs_soundmod_120mm_cannon,jsrs_soundmod_gatling_30mm_plane_cas_01,jsrs_soundmod_cannon_30mm_plane_cas_02,jsrs_soundmod_ctws_autocannon,jsrs_soundmod_dagr,jsrs_soundmod_dar,jsrs_soundmod_30mm_cannon,jsrs_soundmod_gatling_weapons,jsrs_soundmod_hmgs,jsrs_soundmod_155mm_amos,jsrs_soundmod_lmgcoax,jsrs_soundmod_lmgrcws,jsrs_soundmod_gmg20,jsrs_soundmod_mortar,jsrs_soundmod_gmg40,new2,new2_different,new2_new,new2_removed,new2_different2,new2_removed2,75s_sound_jsrs_gatling_sound_fix,75s_sound_jsrs_m320r_no_shell_shound,75s_sound_jsrs_ugls_volume,75s_sound_launchers,vtn_sound_bank,vtn_snd_rwkd,75s_sound_pistols,75s_sound_m107,75s_sound_shotgun,75s_sound_ugl,75s_sound_m249,75s_sound_ak,75s_sound_gpmg,75s_sound_ebr,75s_sound_m14,75s_sound_m110,75s_sound_svd,75s_sound_m76,75s_sound_m2010,75s_sound_as,75s_sound_jsrs_bullethit_body_hit_sound_reduce_volume,75s_sound_jsrs_environment_volume,75s_sound_m4,75s_sound_g36,75s_sound_m6a3,75s_sound_scar,75s_sound_sbr9,75s_sound_mrc,vtn_sound_cfg,rhs_afrf_sound_mod,75s_sound_rhs_fix_volume,rhs_afrf_jsrs_sounds,rhs_gref_sound_mod,rhs_usf_sound_mod,rhs_usf_jsrs_sounds,rhs_saf_sound_mod,75s_sound_jsrs_movement_volume,75s_sound_jsrs_ap_shell_sound,75s_sound_jsrs_extra_shell_sound,75s_sound_jsrs_grenade_impact_sound_reduce_volume,75s_sound_jsrs_mini_grenade_sound,75s_sound_jsrs_vs50_sound,blastcore_maincore,blastcore_vep,warfxpe,blastcore_sun,blastcore_smokecs,blastcore_extended_fire,blastcore_vanilla_smoke,hopecore,bctracers_edited,bctracers_edited_rhs,bamse_rhs_bct_fix,bctracers_edited_hlc,ace_tracers,compositions_a3,kka3_gestures,kka3_gestures_ace,es_main,es_sounds,es_sys,upsl_aime,upsl_aime_uav_terminal,upsl_aime_vehicle_controls,upsl_aime_vehicle_seats,upsl_aime_change_ammo,upsl_aime_group,upsl_aime_inventory,awm_main,awm_sys,awm_ace_actions,discord,utgx_compass,cine_addizeus_ace_actions,cine_addizeus_ai,cine_addizeus_common,cine_addizeus_gear,cine_addizeus_main,cine_addizeus_vehicles,cine_uavkeybinds_main,cine_uavkeybinds_misc,cine_uavkeybinds_UAV,big_compass,zei,gf_recolor,tao_foldmap_a3,darth_potatos_building_templates,vana,headrangeplus,bullet_cases,disable_xeh_logging,gf_enhancedvideo,ausmd_custom_compositions,vphud,zeccup,zec,3den,3denenhanced,l_es_es_main,l_es_es_sounds,l_es_es_sys,cw_9liners_and_notepad,mrb_a3_vehiclevisibility,mrb_a3_airvisibility,falcon_realsound_mod,hlc_compat_rhs_sg550,hlc_compat_ace3_ar15,hlc_compat_ace3_aug,hlc_compat_ace3_fhawc,hlc_compat_ace_core,hlc_compat_ace3_fal,hlc_compat_ace3_g36,hlc_compat_ace3_g3,hlc_compat_ace3_m14,hlc_compat_ace3_m60e4,hlc_compat_ace3_mp5,hlc_compat_ace3_saw,hlc_compat_rhs_acr,hlc_compat_rhs_ak,hlc_compat2_rhs_ak,hlc_compat_rhs_ar15,hlc_compat_rhs_aug,hlc_compat_rhs_awc,hlc_compat_rhs_core,hlc_compat_rhs_fal,hlc_compat_rhs_g36,hlc_compat_rhs_g3,hlc_compat_rhs_m14,hlc_compat_rhs_m60e4,hlc_compat_rhs_mp5,hlc_compat_rhs_saw,uk3cb_baf_weapons_ace,asw_main,aacc,ds_obe,ds_obe_layer,hlc_compat_ace3_ak,hlc_compat_ace3_ar15,hlc_compat_ace3_aug,hlc_compat_ace3_fhawc,hlc_compat_ace_core,hlc_compat_ace3_fal,hlc_compat_ace3_g36,hlc_compat_ace3_g3,hlc_compat_ace3_m14,hlc_compat_ace3_m60e4,hlc_compat_ace3_mp5,hlc_compat_ace3_saw,hlc_compat_ace3_sigamt,pfwd_customcompositions,cup_terrains_ace_compat,ar_advancedrappelling,aur_advancedurbanrappelling,dzn_vof,feintvtolflapscontrolsmod,FEINTacLightsSwitch,ri65b,vi_blufor,pzc,dxx_comps,SA_AdvancedSlingLoading,SA_AdvancedTowing,BSOCoop,BSOServer,VCOM_AI,NSS_Admin_Console,dzn_Artillery_Illumination,diwako_dui_main,diwako_dui_radar,diwako_dui_buddy,diwako_dui_indicators]";
ace_common_displayTextColor = [0,0,0,0.1];
ace_common_displayTextFontColor = [1,1,1,1];
ace_common_settingFeedbackIcons = 1;
ace_common_settingProgressBarLocation = 0;
force ace_noradio_enabled = true;
ace_parachute_hideAltimeter = true;

// ACE Cook off
force ace_cookoff_ammoCookoffDuration = 0.3;
force force ace_cookoff_enable = false;
force ace_cookoff_enableAmmobox = true;
force ace_cookoff_enableAmmoCookoff = true;
force ace_cookoff_probabilityCoef = 0.3;

// ACE Explosives
force ace_explosives_explodeOnDefuse = true;
force ace_explosives_punishNonSpecialists = true;
force ace_explosives_requireSpecialist = false;

// ACE Fragmentation Simulation
force force ace_frag_enabled = true;
force force ace_frag_maxTrack = 20;
force force ace_frag_maxTrackPerFrame = 10;
force force ace_frag_reflectionsEnabled = true;
force force ace_frag_spallEnabled = false;

// ACE Goggles
ace_goggles_effects = 2;
ace_goggles_showInThirdPerson = false;

// ACE Hearing
force ace_hearing_autoAddEarplugsToUnits = false;
ace_hearing_disableEarRinging = true;
force ace_hearing_earplugsVolume = 0.6;
force ace_hearing_enableCombatDeafness = false;
force ace_hearing_enabledForZeusUnits = false;
force ace_hearing_unconsciousnessVolume = 0.3;

// ACE Interaction
force ace_interaction_disableNegativeRating = true;
ace_interaction_enableMagazinePassing = true;
force ace_interaction_enableTeamManagement = true;

// ACE Interaction Menu
ace_gestures_showOnInteractionMenu = 2;
ace_interact_menu_actionOnKeyRelease = true;
ace_interact_menu_addBuildingActions = false;
ace_interact_menu_alwaysUseCursorInteraction = false;
ace_interact_menu_alwaysUseCursorSelfInteraction = false;
ace_interact_menu_colorShadowMax = [0,0,0,1];
ace_interact_menu_colorShadowMin = [0,0,0,0.25];
ace_interact_menu_colorTextMax = [1,1,1,1];
ace_interact_menu_colorTextMin = [1,1,1,0.25];
ace_interact_menu_cursorKeepCentered = false;
ace_interact_menu_menuAnimationSpeed = 0;
ace_interact_menu_menuBackground = 0;
ace_interact_menu_selectorColor = [1,0,0];
ace_interact_menu_shadowSetting = 2;
ace_interact_menu_textSize = 2;
ace_interact_menu_useListMenu = false;

// ACE Logistics
force ace_cargo_enable = true;
force ace_cargo_loadTimeCoefficient = 5;
force ace_cargo_paradropTimeCoefficent = 2.5;
force ace_rearm_level = 0;
force ace_rearm_supply = 0;
force ace_refuel_hoseLength = 12;
force ace_refuel_rate = 1;
force ace_repair_addSpareParts = true;
force ace_repair_autoShutOffEngineWhenStartingRepair = false;
force ace_repair_consumeItem_toolKit = 0;
ace_repair_displayTextOnRepair = true;
force ace_repair_engineerSetting_fullRepair = 1;
force ace_repair_engineerSetting_repair = 0;
force ace_repair_engineerSetting_wheel = 0;
force ace_repair_fullRepairLocation = 3;
force ace_repair_repairDamageThreshold = 0.6;
force ace_repair_repairDamageThreshold_engineer = 0.4;
force ace_repair_wheelRepairRequiredItems = 0;

// ACE Magazine Repack
force ace_magazinerepack_timePerAmmo = 1.5;
force ace_magazinerepack_timePerBeltLink = 8;
force ace_magazinerepack_timePerMagazine = 2;

// ACE Map
force ace_map_BFT_Enabled = false;
force ace_map_BFT_HideAiGroups = false;
force ace_map_BFT_Interval = 1;
force ace_map_BFT_ShowPlayerNames = false;
force ace_map_DefaultChannel = 1;
force ace_map_mapGlow = true;
force ace_map_mapIllumination = true;
force ace_map_mapLimitZoom = false;
force ace_map_mapShake = true;
force ace_map_mapShowCursorCoordinates = false;
ace_markers_moveRestriction = 3;

// ACE Map Gestures
ace_map_gestures_defaultColor = [1,0.88,0,0.7];
ace_map_gestures_defaultLeadColor = [1,0.88,0,0.95];
force ace_map_gestures_enabled = true;
force ace_map_gestures_interval = 0.03;
force ace_map_gestures_maxRange = 7;
ace_map_gestures_nameTextColor = [0.2,0.2,0.2,0.3];

// ACE Map Tools
ace_maptools_drawStraightLines = true;
ace_maptools_rotateModifierKey = 1;

// ACE Medical
force ace_medical_ai_enabledFor = 2;
force ace_medical_AIDamageThreshold = 1;
force ace_medical_allowLitterCreation = true;
force ace_medical_allowUnconsciousAnimationOnTreatment = true;
force ace_medical_amountOfReviveLives = 1;
force ace_medical_bleedingCoefficient = 1;
force ace_medical_blood_enabledFor = 2;
force ace_medical_consumeItem_PAK = 0;
force ace_medical_consumeItem_SurgicalKit = 0;
force ace_medical_convertItems = 0;
force ace_medical_delayUnconCaptive = 3;
force ace_medical_enableAdvancedWounds = true;
force ace_medical_enableFor = 1;
force ace_medical_enableOverdosing = true;
force ace_medical_enableRevive = 0;
force ace_medical_enableScreams = true;
force ace_medical_enableUnconsciousnessAI = 1;
force ace_medical_enableVehicleCrashes = true;
force ace_medical_healHitPointAfterAdvBandage = false;
force ace_medical_increaseTrainingInLocations = false;
force ace_medical_keepLocalSettingsSynced = true;
force ace_medical_level = 2;
force ace_medical_litterCleanUpDelay = 600;
force ace_medical_litterSimulationDetail = 3;
force ace_medical_maxReviveTime = 120;
force ace_medical_medicSetting = 2;
force ace_medical_medicSetting_basicEpi = 1;
force force ace_medical_medicSetting_PAK = 1;
force force ace_medical_medicSetting_SurgicalKit = 1;
force ace_medical_menu_allow = 1;
force ace_medical_menu_maxRange = 3;
ace_medical_menu_openAfterTreatment = true;
ace_medical_menu_useMenu = 0;
ace_medical_menuTypeStyle = 0;
ace_medical_menuTypeStyleSelf = true;
force ace_medical_moveUnitsFromGroupOnUnconscious = false;
force ace_medical_painCoefficient = 1;
ace_medical_painEffectType = 0;
force ace_medical_painIsOnlySuppressed = true;
force ace_medical_playerDamageThreshold = 1;
force force ace_medical_preventInstaDeath = true;
force ace_medical_remoteControlledAI = true;
force ace_medical_useCondition_PAK = 1;
force ace_medical_useCondition_SurgicalKit = 1;
force ace_medical_useLocation_basicEpi = 0;
force force ace_medical_useLocation_PAK = 0;
force force ace_medical_useLocation_SurgicalKit = 0;

// ACE Mk6 Mortar
force ace_mk6mortar_airResistanceEnabled = true;
force ace_mk6mortar_allowCompass = true;
force ace_mk6mortar_allowComputerRangefinder = false;
force ace_mk6mortar_useAmmoHandling = true;

// ACE Name Tags
ace_nametags_defaultNametagColor = [0.77,0.51,0.08,1];
ace_nametags_nametagColorBlue = [0.67,0.67,1,1];
ace_nametags_nametagColorGreen = [0.67,1,0.67,1];
ace_nametags_nametagColorMain = [1,1,1,1];
ace_nametags_nametagColorRed = [1,0.67,0.67,1];
ace_nametags_nametagColorYellow = [1,1,0.67,1];
force ace_nametags_playerNamesMaxAlpha = 0.8;
force ace_nametags_playerNamesViewDistance = 5;
force ace_nametags_showCursorTagForVehicles = false;
ace_nametags_showNamesForAI = false;
ace_nametags_showPlayerNames = 1;
ace_nametags_showPlayerRanks = true;
ace_nametags_showSoundWaves = 1;
ace_nametags_showVehicleCrewInfo = true;
ace_nametags_tagSize = 2;

// ACE Nightvision
force ace_nightvision_aimDownSightsBlur = 0.1;
force ace_nightvision_disableNVGsWithSights = false;
force ace_nightvision_effectScaling = 0.3;
force ace_nightvision_fogScaling = 0;
force ace_nightvision_noiseScaling = 0.3;
ace_nightvision_shutterEffects = false;

// ACE Overheating
ace_overheating_displayTextOnJam = true;
force ace_overheating_enabled = true;
force ace_overheating_overheatingDispersion = true;
ace_overheating_showParticleEffects = false;
ace_overheating_showParticleEffectsForEveryone = false;
force ace_overheating_unJamFailChance = 0;
force ace_overheating_unJamOnreload = false;

// ACE Pointing
force ace_finger_enabled = true;
ace_finger_indicatorColor = [0.83,0.68,0.21,0.75];
ace_finger_indicatorForSelf = true;
force ace_finger_maxRange = 4;

// ACE Pylons
force ace_pylons_enabledForZeus = true;
force ace_pylons_enabledFromAmmoTrucks = true;
force ace_pylons_rearmNewPylons = false;
force ace_pylons_requireEngineer = false;
force ace_pylons_requireToolkit = false;
force ace_pylons_searchDistance = 15;
force ace_pylons_timePerPylon = 5;

// ACE Quick Mount
force ace_quickmount_distance = 3;
force ace_quickmount_enabled = true;
ace_quickmount_enableMenu = 3;
ace_quickmount_priority = 0;
force ace_quickmount_speed = 18;

// ACE Respawn
force force ace_respawn_removeDeadBodiesDisconnected = true;
force ace_respawn_savePreDeathGear = false;

// ACE Scopes
force ace_scopes_correctZeroing = true;
force ace_scopes_deduceBarometricPressureFromTerrainAltitude = false;
force ace_scopes_defaultZeroRange = 100;
force ace_scopes_enabled = true;
force ace_scopes_forceUseOfAdjustmentTurrets = false;
force ace_scopes_overwriteZeroRange = false;
force ace_scopes_simplifiedZeroing = false;
ace_scopes_useLegacyUI = false;
force ace_scopes_zeroReferenceBarometricPressure = 1013.25;
force ace_scopes_zeroReferenceHumidity = 0;
force ace_scopes_zeroReferenceTemperature = 15;

// ACE Spectator
force ace_spectator_enableAI = true;
force ace_spectator_restrictModes = 0;
force ace_spectator_restrictVisions = 0;

// ACE Switch Units
force ace_switchunits_enableSafeZone = true;
force ace_switchunits_enableSwitchUnits = false;
force ace_switchunits_safeZoneRadius = 100;
force ace_switchunits_switchToCivilian = false;
force ace_switchunits_switchToEast = false;
force ace_switchunits_switchToIndependent = false;
force ace_switchunits_switchToWest = false;

// ACE Tagging
ace_tagging_quickTag = 1;

// ACE Uncategorized
force ace_fastroping_requireRopeItems = false;
force ace_gforces_enabledFor = 1;
force ace_hitreactions_minDamageToTrigger = 0.1;
ace_inventory_inventoryDisplaySize = 0;
force ace_laser_dispersionCount = 2;
force ace_microdagr_mapDataAvailable = 2;
force ace_microdagr_waypointPrecision = 3;
ace_optionsmenu_showNewsOnMainMenu = true;
force ace_overpressure_distanceCoefficient = 1;

// ACE User Interface
force ace_ui_allowSelectiveUI = true;
ace_ui_ammoCount = false;
ace_ui_ammoType = true;
ace_ui_commandMenu = true;
ace_ui_firingMode = true;
ace_ui_groupBar = false;
ace_ui_gunnerAmmoCount = true;
ace_ui_gunnerAmmoType = true;
ace_ui_gunnerFiringMode = true;
ace_ui_gunnerLaunchableCount = true;
ace_ui_gunnerLaunchableName = true;
ace_ui_gunnerMagCount = true;
ace_ui_gunnerWeaponLowerInfoBackground = true;
ace_ui_gunnerWeaponName = true;
ace_ui_gunnerWeaponNameBackground = true;
ace_ui_gunnerZeroing = true;
ace_ui_magCount = true;
ace_ui_soldierVehicleWeaponInfo = true;
ace_ui_staminaBar = true;
ace_ui_stance = true;
ace_ui_throwableCount = true;
ace_ui_throwableName = true;
ace_ui_vehicleAltitude = true;
ace_ui_vehicleCompass = true;
ace_ui_vehicleDamage = true;
ace_ui_vehicleFuelBar = true;
ace_ui_vehicleInfoBackground = true;
ace_ui_vehicleName = true;
ace_ui_vehicleNameBackground = true;
ace_ui_vehicleRadar = true;
ace_ui_vehicleSpeed = true;
ace_ui_weaponLowerInfoBackground = true;
ace_ui_weaponName = true;
ace_ui_weaponNameBackground = true;
ace_ui_zeroing = true;

// ACE Vehicle Lock
force ace_vehiclelock_defaultLockpickStrength = 10;
force ace_vehiclelock_lockVehicleInventory = false;
force ace_vehiclelock_vehicleStartingLockState = -1;

// ACE View Distance Limiter
force ace_viewdistance_enabled = false;
force ace_viewdistance_limitViewDistance = 10000;
ace_viewdistance_objectViewDistanceCoeff = 0;
ace_viewdistance_viewDistanceAirVehicle = 0;
ace_viewdistance_viewDistanceLandVehicle = 0;
ace_viewdistance_viewDistanceOnFoot = 0;

// ACE Weapons
ace_common_persistentLaserEnabled = false;
force ace_laserpointer_enabled = true;
ace_reload_displayText = true;
ace_weaponselect_displayText = true;

// ACE Weather
force ace_weather_enabled = true;
force ace_weather_updateInterval = 60;
force ace_weather_windSimulation = false;

// ACE Wind Deflection
force ace_winddeflection_enabled = true;
force ace_winddeflection_simulationInterval = 0.05;
force ace_winddeflection_vehicleEnabled = true;

// ACE Zeus
force ace_zeus_autoAddObjects = true;
force ace_zeus_canCreateZeus = 0;
force ace_zeus_radioOrdnance = false;
force ace_zeus_remoteWind = false;
force ace_zeus_revealMines = 0;
force ace_zeus_zeusAscension = false;
force ace_zeus_zeusBird = false;

// Achilles - Available Factions
Achilles_var_BLU_CTRG_F = true;
Achilles_var_BLU_F = true;
Achilles_var_BLU_G_F = true;
Achilles_var_BLU_GEN_F = true;
Achilles_var_BLU_T_F = true;
Achilles_var_BLU_W_F = true;
Achilles_var_BWA3_Faction_Fleck = true;
Achilles_var_BWA3_Faction_Multi = true;
Achilles_var_BWA3_Faction_Tropen = true;
Achilles_var_CIV_F = true;
Achilles_var_CIV_IDAP_F = true;
Achilles_var_FIR_AWS_ENEMY_F = true;
Achilles_var_FIR_AWS_FRND_F = true;
Achilles_var_IND_C_F = true;
Achilles_var_IND_E_F = true;
Achilles_var_IND_F = true;
Achilles_var_IND_G_F = true;
Achilles_var_IND_L_F = true;
Achilles_var_Interactive_F = true;
Achilles_var_LOP_AA = true;
Achilles_var_LOP_AFR = true;
Achilles_var_LOP_AFR_Civ = true;
Achilles_var_LOP_AFR_OPF = true;
Achilles_var_LOP_AM = true;
Achilles_var_LOP_AM_OPF = true;
Achilles_var_LOP_BH = true;
Achilles_var_LOP_CDF = true;
Achilles_var_LOP_ChDKZ = true;
Achilles_var_LOP_CHR_Civ = true;
Achilles_var_LOP_GRE = true;
Achilles_var_LOP_IA = true;
Achilles_var_LOP_IRA = true;
Achilles_var_LOP_IRAN = true;
Achilles_var_LOP_ISTS = true;
Achilles_var_LOP_ISTS_OPF = true;
Achilles_var_LOP_NAPA = true;
Achilles_var_LOP_NK = true;
Achilles_var_LOP_PESH = true;
Achilles_var_LOP_PESH_IND = true;
Achilles_var_LOP_PMC = true;
Achilles_var_LOP_RACS = true;
Achilles_var_LOP_SLA = true;
Achilles_var_LOP_SYR = true;
Achilles_var_LOP_TAK_Civ = true;
Achilles_var_LOP_TKA = true;
Achilles_var_LOP_TRK = true;
Achilles_var_LOP_UA = true;
Achilles_var_LOP_UKR = true;
Achilles_var_LOP_UN = true;
Achilles_var_LOP_US = true;
Achilles_var_LOP_UVF = true;
Achilles_var_OPF_F = true;
Achilles_var_OPF_G_F = true;
Achilles_var_OPF_R_F = true;
Achilles_var_OPF_T_F = true;
Achilles_var_OPF_V_F = true;
Achilles_var_rhs_faction_insurgents = true;
Achilles_var_rhs_faction_msv = true;
Achilles_var_rhs_faction_rva = true;
Achilles_var_rhs_faction_socom = true;
Achilles_var_rhs_faction_tv = true;
Achilles_var_rhs_faction_usaf = true;
Achilles_var_rhs_faction_usarmy = true;
Achilles_var_rhs_faction_usarmy_d = true;
Achilles_var_rhs_faction_usarmy_wd = true;
Achilles_var_rhs_faction_usmc = true;
Achilles_var_rhs_faction_usmc_d = true;
Achilles_var_rhs_faction_usmc_wd = true;
Achilles_var_rhs_faction_usn = true;
Achilles_var_rhs_faction_vdv = true;
Achilles_var_rhs_faction_vdv_45 = true;
Achilles_var_rhs_faction_vmf = true;
Achilles_var_rhs_faction_vpvo = true;
Achilles_var_rhs_faction_vv = true;
Achilles_var_rhs_faction_vvs = true;
Achilles_var_rhs_faction_vvs_c = true;
Achilles_var_rhsgref_faction_cdf_air = true;
Achilles_var_rhsgref_faction_cdf_air_b = true;
Achilles_var_rhsgref_faction_cdf_ground = true;
Achilles_var_rhsgref_faction_cdf_ground_b = true;
Achilles_var_rhsgref_faction_cdf_ng = true;
Achilles_var_rhsgref_faction_cdf_ng_b = true;
Achilles_var_rhsgref_faction_chdkz = true;
Achilles_var_rhsgref_faction_chdkz_g = true;
Achilles_var_rhsgref_faction_hidf = true;
Achilles_var_rhsgref_faction_nationalist = true;
Achilles_var_rhsgref_faction_tla = true;
Achilles_var_rhsgref_faction_un = true;
Achilles_var_rhssaf_faction_airforce = true;
Achilles_var_rhssaf_faction_airforce_opfor = true;
Achilles_var_rhssaf_faction_army = true;
Achilles_var_rhssaf_faction_army_opfor = true;
Achilles_var_rhssaf_faction_un = true;
Achilles_var_UK3CB_ANA_B = true;
Achilles_var_UK3CB_ANP_B = true;
Achilles_var_UK3CB_BAF_Faction = true;
Achilles_var_UK3CB_BAF_Faction_Airforce = true;
Achilles_var_UK3CB_BAF_Faction_Airforce_Arctic = true;
Achilles_var_UK3CB_BAF_Faction_Airforce_CS95_DPM = true;
Achilles_var_UK3CB_BAF_Faction_Airforce_DDPM = true;
Achilles_var_UK3CB_BAF_Faction_Airforce_DPM = true;
Achilles_var_UK3CB_BAF_Faction_Airforce_MTP = true;
Achilles_var_UK3CB_BAF_Faction_Airforce_Temperate = true;
Achilles_var_UK3CB_BAF_Faction_Airforce_Woodland = true;
Achilles_var_UK3CB_BAF_Faction_Army_Arctic = true;
Achilles_var_UK3CB_BAF_Faction_Army_CS95_DPM = true;
Achilles_var_UK3CB_BAF_Faction_Army_DDPM = true;
Achilles_var_UK3CB_BAF_Faction_Army_DPM = true;
Achilles_var_UK3CB_BAF_Faction_Army_MTP = true;
Achilles_var_UK3CB_BAF_Faction_Army_Temperate = true;
Achilles_var_UK3CB_BAF_Faction_Army_Woodland = true;
Achilles_var_UK3CB_BAF_Faction_Navy_Arctic = true;
Achilles_var_UK3CB_BAF_Faction_Navy_CS95_DPM = true;
Achilles_var_UK3CB_BAF_Faction_Navy_DDPM = true;
Achilles_var_UK3CB_BAF_Faction_Navy_DPM = true;
Achilles_var_UK3CB_BAF_Faction_Navy_MTP = true;
Achilles_var_UK3CB_BAF_Faction_Navy_Temperate = true;
Achilles_var_UK3CB_BAF_Faction_Navy_Woodland = true;
Achilles_var_UK3CB_CCM_B = true;
Achilles_var_UK3CB_CCM_I = true;
Achilles_var_UK3CB_CCM_O = true;
Achilles_var_UK3CB_CHC_B = true;
Achilles_var_UK3CB_CHC_C = true;
Achilles_var_UK3CB_CHC_I = true;
Achilles_var_UK3CB_CHC_O = true;
Achilles_var_UK3CB_TKA_B = true;
Achilles_var_UK3CB_TKA_I = true;
Achilles_var_UK3CB_TKA_O = true;
Achilles_var_UK3CB_TKC_B = true;
Achilles_var_UK3CB_TKC_C = true;
Achilles_var_UK3CB_TKC_I = true;
Achilles_var_UK3CB_TKC_O = true;
Achilles_var_UK3CB_TKM_B = true;
Achilles_var_UK3CB_TKM_I = true;
Achilles_var_UK3CB_TKM_O = true;
Achilles_var_UK3CB_TKP_B = true;
Achilles_var_UK3CB_TKP_I = true;
Achilles_var_UK3CB_TKP_O = true;
Achilles_var_UK3CB_UN_B = true;
Achilles_var_UK3CB_UN_I = true;
Achilles_var_Virtual_F = true;

// Achilles - Available Modules
Achilles_var_Achilles_ACE_Heal_Module = true;
Achilles_var_Achilles_ACE_Injury_Module = true;
Achilles_var_Achilles_AddECM_Module = true;
Achilles_var_Achilles_Animation_Module = true;
Achilles_var_Achilles_Attach_To_Module = true;
Achilles_var_Achilles_Bind_Variable_Module = true;
Achilles_var_Achilles_Buildings_Destroy_Module = true;
Achilles_var_Achilles_Buildings_LockDoors_Module = true;
Achilles_var_Achilles_Buildings_ToggleLight_Module = true;
Achilles_var_Achilles_CAS_Module = true;
Achilles_var_Achilles_Change_Ability_Module = true;
Achilles_var_Achilles_Change_Altitude_Module = true;
Achilles_var_Achilles_Chatter_Module = true;
Achilles_var_Achilles_Create_Universal_Target_Module = true;
Achilles_var_Achilles_DevTools_FunctionViewer = true;
Achilles_var_Achilles_DevTools_ShowInAnimViewer = true;
Achilles_var_Achilles_DevTools_ShowInConfig = true;
Achilles_var_Achilles_Earthquake_Module = true;
Achilles_var_Achilles_Hide_Objects_Module = true;
Achilles_var_Achilles_IED_Module = true;
Achilles_var_Achilles_Make_Invincible_Module = true;
Achilles_var_Achilles_Module_Arsenal_AddFull = true;
Achilles_var_Achilles_Module_Arsenal_CopyToClipboard = true;
Achilles_var_Achilles_Module_Arsenal_CreateCustom = true;
Achilles_var_Achilles_Module_Arsenal_Paste = true;
Achilles_var_Achilles_Module_Arsenal_Remove = true;
Achilles_var_Achilles_Module_Change_Side_Relations = true;
Achilles_var_Achilles_Module_Equipment_Attach_Dettach_Effect = true;
Achilles_var_Achilles_Module_FireSupport_CASBomb = true;
Achilles_var_Achilles_Module_FireSupport_CASGun = true;
Achilles_var_Achilles_Module_FireSupport_CASGunMissile = true;
Achilles_var_Achilles_Module_FireSupport_CASMissile = true;
Achilles_var_Achilles_Module_Manage_Advanced_Compositions = true;
Achilles_var_Achilles_Module_Player_Set_Frequencies = true;
Achilles_var_Achilles_Module_Rotation = true;
Achilles_var_Achilles_Module_Spawn_Advanced_Composition = true;
Achilles_var_Achilles_Module_Spawn_Carrier = true;
Achilles_var_Achilles_Module_Spawn_Destroyer = true;
Achilles_var_Achilles_Module_Spawn_Effects = true;
Achilles_var_Achilles_Module_Spawn_Explosives = true;
Achilles_var_Achilles_Module_Spawn_Intel = true;
Achilles_var_Achilles_Module_Supply_Drop = true;
Achilles_var_Achilles_Module_Zeus_AssignZeus = true;
Achilles_var_Achilles_Module_Zeus_SwitchUnit = true;
Achilles_var_Achilles_Nuke_Module = true;
Achilles_var_Achilles_Set_Date_Module = true;
Achilles_var_Achilles_Set_Height_Module = true;
Achilles_var_Achilles_Set_Weather_Module = true;
Achilles_var_Achilles_Sit_On_Chair_Module = true;
Achilles_var_Achilles_SuicideBomber_Module = true;
Achilles_var_Achilles_Suppressive_Fire_Module = true;
Achilles_var_Achilles_Toggle_Simulation_Module = true;
Achilles_var_Achilles_Transfer_Ownership_Module = true;
Achilles_var_Ares_Artillery_Fire_Mission_Module = true;
Achilles_var_Ares_Module_Bahaviour_Garrison_Nearest = true;
Achilles_var_Ares_Module_Bahaviour_SurrenderUnit = true;
Achilles_var_Ares_Module_Bahaviour_UnGarrison = true;
Achilles_var_Ares_Module_Behaviour_Patrol = true;
Achilles_var_Ares_Module_Behaviour_Search_Nearby_And_Garrison = true;
Achilles_var_Ares_Module_Behaviour_Search_Nearby_Building = true;
Achilles_var_Ares_Module_Dev_Tools_Create_Mission_SQF = true;
Achilles_var_Ares_Module_Dev_Tools_Execute_Code = true;
Achilles_var_Ares_Module_Equipment_Flashlight_IR_ON_OFF = true;
Achilles_var_Ares_Module_Equipment_NVD_TACLIGHT_IR = true;
Achilles_var_Ares_Module_Equipment_Turret_Optics = true;
Achilles_var_Ares_Module_Player_Change_Player_Side = true;
Achilles_var_Ares_Module_Player_Create_Teleporter = true;
Achilles_var_Ares_Module_Player_Teleport = true;
Achilles_var_Ares_Module_Reinforcements_Create_Lz = true;
Achilles_var_Ares_Module_Reinforcements_Create_Rp = true;
Achilles_var_Ares_Module_Reinforcements_Spawn_Units = true;
Achilles_var_Ares_Module_Spawn_Submarine = true;
Achilles_var_Ares_Module_Spawn_Trawler = true;
Achilles_var_Ares_Module_Zeus_Add_Remove_Editable_Objects = true;
Achilles_var_Ares_Module_Zeus_Hint = true;
Achilles_var_Ares_Module_Zeus_Switch_Side = true;
Achilles_var_Ares_Module_Zeus_Visibility = true;
Achilles_var_ModulePunishment_F = true;

// Achilles - Curator Vision Modes
achilles_curator_vision_blackhot = false;
achilles_curator_vision_blackhotgreencold = false;
achilles_curator_vision_blackhotredcold = false;
achilles_curator_vision_greenhotcold = false;
achilles_curator_vision_nvg = true;
achilles_curator_vision_redgreen = false;
achilles_curator_vision_redhot = false;
achilles_curator_vision_whitehot = true;
achilles_curator_vision_whitehotredcold = false;

// Achilles - Debug
Achilles_Debug_Output_Enabled = false;

// Achilles - Module Defaults
Achilles_var_setRadioFrequenciesLR_Default = "50";
Achilles_var_setRadioFrequenciesSR_Default = "150";

// Achilles - User Interface
Achilles_var_iconSelection = "Achilles_var_iconSelection_Ares";
Achilles_var_moduleTreeCollapse = true;
Achilles_var_moduleTreeDLC = true;
Achilles_var_moduleTreeHelmet = false;
Achilles_var_moduleTreeSearchPatch = true;

// ADV - ACE Splint
force adv_aceSplint_enable = true;
force adv_aceSplint_patientCondition = 1;
force adv_aceSplint_reopenChance_medic = 0;
force adv_aceSplint_reopenChance_regular = 30;
force adv_aceSplint_reopenTime = 600;
force adv_aceSplint_reuseChance = 50;

// Bundeswehr
BWA3_Leopard_ClocknumbersDir_Commander = false;
BWA3_NaviPad_showMembers = false;
BWA3_Puma_ClocknumbersDir_Commander = false;
BWA3_Puma_ClocknumbersDir_Gunner = false;

// CBA UI
cba_ui_notifyLifetime = 4;
cba_ui_StorePasswords = 1;

// CBA Weapons
cba_disposable_dropUsedLauncher = 2;
force cba_disposable_replaceDisposableLauncher = true;
cba_events_repetitionMode = 1;
cba_optics_usePipOptics = true;

// DUI - Squad Radar - Indicators
diwako_dui_indicators_fov_scale = false;
diwako_dui_indicators_icon_buddy = true;
diwako_dui_indicators_icon_leader = true;
diwako_dui_indicators_icon_medic = true;
diwako_dui_indicators_range = 20;
diwako_dui_indicators_range_scale = false;
diwako_dui_indicators_show = true;
diwako_dui_indicators_size = 1;
diwako_dui_indicators_style = "standard";
diwako_dui_indicators_useACENametagsRange = true;

// DUI - Squad Radar - Main
diwako_dui_ace_hide_interaction = true;
diwako_dui_colors = "standard";
diwako_dui_font = "RobotoCondensed";
diwako_dui_icon_style = "standard";
diwako_dui_main_hide_ui_by_default = false;
diwako_dui_main_squadBlue = [0,0,1,1];
diwako_dui_main_squadGreen = [0,1,0,1];
diwako_dui_main_squadMain = [1,1,1,1];
diwako_dui_main_squadRed = [1,0,0,1];
diwako_dui_main_squadYellow = [1,1,0,1];

// DUI - Squad Radar - Radar
diwako_dui_compass_hide_alone_group = false;
diwako_dui_compass_hide_blip_alone_group = false;
diwako_dui_compass_icon_scale = 1;
diwako_dui_compass_opacity = 1;
diwako_dui_compass_style = ["\z\diwako_dui\addons\radar\UI\compass_styles\standard\compass_limited.paa","\z\diwako_dui\addons\radar\UI\compass_styles\standard\compass.paa"];
diwako_dui_compassRange = 35;
diwako_dui_compassRefreshrate = 0;
diwako_dui_dir_showMildot = false;
diwako_dui_dir_size = 1.25;
diwako_dui_distanceWarning = 3;
diwako_dui_enable_compass = true;
diwako_dui_enable_compass_dir = 1;
diwako_dui_enable_occlusion = true;
diwako_dui_enable_occlusion_cone = 360;
diwako_dui_hudScaling = 1.33333;
diwako_dui_namelist = true;
diwako_dui_namelist_bg = 0;
diwako_dui_namelist_only_buddy_icon = false;
diwako_dui_namelist_size = 1.5396;
diwako_dui_namelist_text_shadow = 2;
diwako_dui_namelist_width = 215;
diwako_dui_radar_ace_finger = true;
diwako_dui_radar_group_by_vehicle = false;
diwako_dui_radar_leadingZeroes = false;
diwako_dui_radar_namelist_hideWhenLeader = false;
diwako_dui_radar_namelist_vertical_spacing = 0.75;
diwako_dui_radar_occlusion_fade_time = 10;
diwako_dui_radar_pointer_color = [1,0.5,0,1];
diwako_dui_radar_pointer_style = "standard";
force diwako_dui_radar_sortType = "none";
force diwako_dui_radar_sqlFirst = false;
diwako_dui_radar_trackingColor = [0.93,0.26,0.93,1];
diwako_dui_reset_ui_pos = false;
diwako_dui_use_layout_editor = false;

// F/A-18
js_jc_fa18_advancedStart = false;
js_jc_fa18_canopyLoss = false;
js_jc_fa18_cursorSensitivity = 2.5;
js_jc_fa18_interactCursor = false;
js_jc_fa18_interactionRadiusMod = 1;
js_jc_fa18_showLabels = true;

// NIArms
force niarms_accswitch = true;
force niarms_magSwitch = true;

// TFAR - clientside settings
TFAR_default_radioVolume = 6;
TFAR_intercomDucking = 0.2;
TFAR_intercomVolume = 0.2;
TFAR_moveWhileTabbedOut = false;
TFAR_oldVolumeHint = false;
TFAR_pluginTimeout = 4;
TFAR_PosUpdateMode = 0.1;
TFAR_showChannelChangedHint = true;
TFAR_showTransmittingHint = true;
TFAR_ShowVolumeHUD = false;
TFAR_tangentReleaseDelay = 0;
TFAR_VolumeHudTransparency = 0;
TFAR_volumeModifier_forceSpeech = false;

// TFAR - global settings
force TFAR_AICanHearPlayer = false;
force TFAR_AICanHearSpeaker = false;
force TFAR_defaultIntercomSlot = 0;
force TFAR_enableIntercom = true;
force TFAR_experimentalVehicleIsolation = true;
force TFAR_fullDuplex = true;
force TFAR_giveLongRangeRadioToGroupLeaders = false;
force TFAR_giveMicroDagrToSoldier = false;
force TFAR_givePersonalRadioToRegularSoldier = true;
force TFAR_globalRadioRangeCoef = 1;
force TFAR_instantiate_instantiateAtBriefing = false;
force TFAR_objectInterceptionEnabled = true;
force TFAR_objectInterceptionStrength = 400;
force tfar_radiocode_east = "_opfor";
force tfar_radiocode_independent = "_independent";
force tfar_radiocode_west = "_bluefor";
force tfar_radioCodesDisabled = true;
force TFAR_SameLRFrequenciesForSide = true;
force TFAR_SameSRFrequenciesForSide = true;
force TFAR_setting_defaultFrequencies_lr_east = "69,68,67,66,65,64,63,62,70";
force TFAR_setting_defaultFrequencies_lr_independent = "69,68,67,66,65,64,63,62,70";
force TFAR_setting_defaultFrequencies_lr_west = "69,68,67,66,65,64,63,62,70";
force TFAR_setting_defaultFrequencies_sr_east = "110,120,130,140,150,160,170,180,190";
force TFAR_setting_defaultFrequencies_sr_independent = "110,120,130,140,150,160,170,180,190";
force TFAR_setting_defaultFrequencies_sr_west = "110,120,130,140,150,160,170,180,190";
force TFAR_setting_DefaultRadio_Airborne_east = "TFAR_mr6000l";
force TFAR_setting_DefaultRadio_Airborne_Independent = "TFAR_anarc164";
force TFAR_setting_DefaultRadio_Airborne_West = "TFAR_anarc210";
force TFAR_setting_DefaultRadio_Backpack_east = "TFAR_mr3000";
force TFAR_setting_DefaultRadio_Backpack_Independent = "TFAR_anprc155";
force TFAR_setting_DefaultRadio_Backpack_west = "TFAR_rt1523g";
force TFAR_setting_DefaultRadio_Personal_east = "TFAR_fadak";
force TFAR_setting_DefaultRadio_Personal_Independent = "TFAR_anprc154";
force TFAR_setting_DefaultRadio_Personal_West = "TFAR_anprc152";
force TFAR_setting_DefaultRadio_Rifleman_East = "TFAR_fadak";
force TFAR_setting_DefaultRadio_Rifleman_Independent = "TFAR_anprc154";
force TFAR_setting_DefaultRadio_Rifleman_West = "TFAR_anprc152";
force TFAR_spectatorCanHearEnemyUnits = false;
force TFAR_spectatorCanHearFriendlies = true;
force TFAR_takingRadio = 1;
force force TFAR_Teamspeak_Channel_Name = "Liberation TFAR";
force force TFAR_Teamspeak_Channel_Password = "123";
force tfar_terrain_interception_coefficient = 7;
force TFAR_voiceCone = true;
