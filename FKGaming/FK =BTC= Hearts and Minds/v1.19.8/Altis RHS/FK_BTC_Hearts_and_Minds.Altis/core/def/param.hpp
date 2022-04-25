class Params {
    class btc_p_time_title {  // << Time options >>
        title = $STR_BTC_HAM_PARAM_TIME_TITLE;
        values[]={0};
        texts[]={""};
        default = 0;
    };
    class btc_p_time { // Set the start time:
        title = __EVAL(format ["      %1", localize "STR_A3_CFGVEHICLES_MODULEDATE_F_ARGUMENTS_HOUR_0"]);
        values[]={1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24};
        texts[]={"1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24"};
        default = 8;
    };
    class btc_p_acctime { // Acceleration time multiplier:
        title = __EVAL(format ["      %1", localize "STR_USRACT_TIME_INC"]);
        values[]={1,2,3,4,5,6,7,8,9,10,11,12};
        texts[]={"1","2","3","4","5","6","7","8","9","10","11","12"};
        default = 1;
    };
    class btc_p_load { // Load the savegame (if available)
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_DB_LOAD"]);
        values[]={0,1};
        texts[]={$STR_DISABLED,$STR_ENABLED};
        default = 1;
    };
    class btc_p_auto_db { // Auto savegame (can break player immersion)
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_DB_ASAVE"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10,11,12,24,48,72};
        texts[]={$STR_DISABLED,"1h","2h","3h","4h","5h","6h","7h","8h","9h","10h","11h","12h","24h","48h","72h"}; // texts[]={"Off","1h","2h","3h","4h","5h","6h","7h","8h","9h","10h","11h","12h","24h","48h","72h"};
        default = 1;
    };
    class btc_p_type_title { // << Faction options >>
        title = $STR_BTC_HAM_PARAM_FAC_TITLE;
        values[]={0};
        texts[]={""};
        default = 0;
    };
    class btc_p_en { // Enemy type:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_FAC_ETYPE"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250};
        texts[]={"0 - Bohemia Interactive: 2035 FIA (Side: WEST)","1 - Bohemia Interactive: 2035 AAF (Side: GUER)","2 - Bohemia Interactive: 2035 FIA (Side: GUER)","3 - Bohemia Interactive: 2035 CSAT (Side: EAST)","4 - Bohemia Interactive: 2035 FIA (Side: EAST)","5 - EricJ: Taliban (Side: EAST)","6 -00VTN Bohemia Interactive: U.S.M.C. (MARPAT Woodland) (Side: WEST)","7 -01VTN Bohemia Interactive: U.S.M.C. (MARPAT Desert) (Side: WEST)","8 -05VTN Bohemia Interactive: TIA-SF (Side: WEST)","9 -AFR BIS/IceBreakr: Afrenian Army (Side: WEST)","10 -ARA Bohemia Interactive: Abramian Rebel Alliance (Side: WEST)","11 -ARL BIS/IceBreakr: ARL Lingor Rebels (Side: EAST)","12 -BLU Community Upgrade Project and ATLAS Mod: 2035 NATO (Side: WEST)","13 -btc_militia_mod Giallustio: Afghan Militia (Side: EAST)","14 -CEC HcPookie: Cecanian Army (Side: EAST)","15 -CFP Drew: Afghan Police (Side: WEST)","16 -CFP Drew: Chadian Armed Forces (Side: WEST)","17 -CFP Tupolov: Army of the Czech Rep. (Jungle / Woodland) (Side: WEST)","18 -CFP Drew: Bundeswehr (Jungle / Woodland) (Side: WEST)","19 -CFP Community Upgrade Project: British Army (Jungle / Woodland) (Side: WEST)","20 -CFP Drew: Israeli Defense Force (Side: WEST)","21 -CFP Drew: Iraqi Army (Side: WEST)","22 -CFP Drew: Iraqi Police (Side: WEST)","23 -CFP Drew: Kenyan Defense Force (Side: WEST)","24 -CFP Drew: Malian Government Forces (Side: WEST)","25 -CFP Drew: Nigerian Army (Side: WEST)","26 -CFP Drew: Peshmerga (Side: WEST)","27 -CFP Drew: Sudanese Armed Forces (Side: WEST)","28 -CFP Drew: Sudan Rapid Support Forces / Janjaweed (Side: WEST)","29 -CFP Drew: Uganda People's Defense Force (Side: WEST)","30 -CFP Tupolov: US Marine Corps (Arid / Desert) (Side: WEST)","31 -CFP Drew: US 75th Rangers (Jungle/Woodland) (Side: WEST)","32 -CFP Drew: US Navy Seals (Arid / Desert) (Side: WEST)","33 -CFP Drew: US Navy Seals (Jungle / Woodland) (Side: WEST)","34 -CFP Drew: YPG (Side: WEST)","35 -CFP Drew: al-Nusra Front (Side: GUER)","36 -CFP Drew: Islamic State (Side: GUER)","37 -CFP Drew: Sudan People's Liberation Movement North (Side: GUER)","38 -CFP Drew: South Sudan People's Defense Force (Side: GUER)","39 -CFP Drew: Tuareg Rebels (Side: GUER)","40 -CFP Tupolov: Western Ultranationalists (Side: GUER)","41 -CFP Drew: Abu Sayyaf Group (Side: EAST)","42 -CFP Drew: Al Qaeda (Side: EAST)","43 -CFP Drew: Al-Shabaab (Side: EAST)","44 -CFP Tupolov: Ansar Allah (Houthis) (Side: EAST)","45 -CFP Drew: Boko Haram (Side: EAST)","46 -CFP Drew: Central African Rebels (Side: EAST)","47 -CFP Drew: Hamas Al Qassam Brigades (Side: EAST)","48 -CFP Drew: Hezbollah (Side: EAST)","49 -CFP Drew: Islamic Republic of Iran Army (Side: EAST)","50 -CFP Drew: Islamic State (Side: EAST)","51 -CFP Tupolov: Russian National Guard (Side: EAST)","52 -CFP Drew: Sudan Revolutionary Front (Side: EAST)","53 -CFP Drew: Somali Rebels (Side: EAST)","54 -CFP Drew: Sudan People's Liberation Movement In Opposition (Side: EAST)","55 -CFP Drew: Syrian Arab Army (Side: EAST)","56 -CFP Drew: Taliban Insurgents (Side: EAST)","57 -CUP Community Upgrade Project: Army of the Czech Rep. (Arid / Desert) (Side: WEST)","58 -CUP Community Upgrade Project: British Army (Arid / Desert) (Side: WEST)","59 -CUP Drew: Bundeswehr (Arid / Desert) (Side: WEST)","60 -CUP Community Upgrade Project: Royal New Zealand Navy (Side: WEST)","61 -CUP Community Upgrade Project: US Army (Arid / Desert) (Side: WEST)","62 -CUP Community Upgrade Project: National Party of Chernarus (Side: GUER)","63 -CUP Community Upgrade Project: Royal Army Corps of Sahrani (Side: GUER)","64 -CUP Community Upgrade Project: United Nations (Side: GUER)","65 -CUP Community Upgrade Project: Chernarussian Movement of the Red Star (Side: EAST)","66 -CUP Community Upgrade Project: Sahrani Liberation Army (Side: EAST)","67 -CUP Community Upgrade Project: Takistani Army (Side: EAST)","68 -CUP Community Upgrade Project: Takistani Militia (Side: EAST)","69 -CUP_Units Drew: Chernarus Defense Forces [Winter] (Side: WEST)","70 -CUP_Units Tupolov: US CIA (Middle East) (Side: WEST)","71 -CUP_Units $CUP_AUTHOR_STRING: Takistani Locals (Side: GUER)","72 -CUP_Vehicles Drew: Afghan Army (Side: WEST)","73 -CUP_Vehicles Tupolov: US Army (Jungle / Woodland) (Side: WEST)","74 -CUP_Vehicles Drew: Chernarussian Movement of the Red Star [Winter] (Side: EAST)","75 -CUP_Vehicles Tupolov: Russian Ground Forces (Arid / Desert) (Side: EAST)","76 -CUP_Vehicles Community Upgrade Project: Chernarus Defense Forces (Side: WEST)","77 -CUP_Vehicles Community Upgrade Project: US Marine Corps (Jungle / Woodland) (Side: WEST)","78 -CUP_Vehicles Community Upgrade Project: Russian Ground Forces (Jungle / Woodland) (Side: EAST)","79 -Expansion Bohemia Interactive: 2035 CTRG (Side: WEST)","80 -Expansion Bohemia Interactive: 2035 Gendarmerie (Side: WEST)","81 -Expansion Bohemia Interactive: 2035 NATO (Pacific) (Side: WEST)","82 -Expansion Drew: Korean People's Army (Side: EAST)","83 -Expansion Community Upgrade Project: ION PMC (Side: GUER)","84 -Expansion Bohemia Interactive: 2035 CSAT (Pacific) (Side: EAST)","85 -FOW Bohemia Interactive: [DE] Heer (Side: WEST)","86 -FOW Bohemia Interactive: [JP] Navy Air Service (Side: WEST)","87 -FOW Bohemia Interactive: [UK] Fleet Air Arm (Side: GUER)","88 -FOW Bohemia Interactive: [US] Navy (Side: GUER)","89 -FOW FOW Team: [DE] Waffen-SS (Side: WEST)","90 -fow_mod Bohemia Interactive: [AUS] Army (Pacific) (Side: GUER)","91 -fow_mod Bohemia Interactive: [HI] Army (Side: GUER)","92 -fow_mod FOW team: [JP] Imperial Army (Side: WEST)","93 -fow_mod Bohemia Interactive: [DE] Luftwaffe (Side: WEST)","94 -fow_mod Bohemia Interactive: [UK] Army (Side: GUER)","95 -fow_mod FOW team: [US] Army (Europe) (Side: GUER)","96 -fow_mod Bohemia Interactive: [US] Army (Pacific) (Side: GUER)","97 -fow_mod FOW team: [US] Marines Corps (Side: GUER)","98 -GAL HcPookie: GAL (Government Army of Lingor) (Side: WEST)","99 -GANGBLUE BIS/IceBreakr: Blue Gang (Side: WEST)","100 -GANGRED BIS/IceBreakr: Red Gang (Side: EAST)","101 -IBR Bohemia Interactive: Alienz (Side: GUER)","102 -ISC Bohemia Interactive: [ISC] al-Nusra Front (Side: GUER)","103 -ISC Bohemia Interactive: [ISC] Iraqi Police (Side: WEST)","104 -ISC Bohemia Interactive: [ISC] Islamic State (Side: GUER)","105 -ISC Bohemia Interactive: [ISC] Islamic State (Side: EAST)","106 -ISC Bohemia Interactive: [ISC] Peshmerga (Side: WEST)","107 -ISC Bohemia Interactive: [ISC] YPG (Side: WEST)","108 -Jets Bravo Zero One Studios: Insurrectionists (OPCAN) (Side: EAST)","109 -Jets Bravo Zero One Studios: UNSCDF (OPCAN) (Side: WEST)","110 -LIB AWAR: ACI (Side: GUER)","111 -LIB AWAR & Lennard: ARR (Side: WEST)","112 -LIB Lennard: Deutsches Afrikakorps (Side: WEST)","113 -LIB Reyhard & Joarius: FFI (Side: GUER)","114 -LIB IFA3 Team: FallschirmjÃ¤ger (Side: WEST)","115 -LIB AWAR: Armia Krajowa (Polonais) (Side: GUER)","116 -LIB AWAR: Luftwaffe (Side: WEST)","117 -LIB AWAR & Lennard: [Winter] Luftwaffe (Side: WEST)","118 -LIB AWAR & Lennard: MKHL (Side: WEST)","119 -LIB Lennard: US North African Corps (Side: GUER)","120 -LIB Lennard: NKVD (Side: EAST)","121 -LIB AWAR: Panzerwaffe (Side: WEST)","122 -LIB AWAR & Lennard: [Winter] Panzerwaffe (Side: WEST)","123 -LIB AWAR: RAAF (Side: GUER)","124 -LIB AWAR: Royal Air Force (Side: GUER)","125 -LIB AWAR & Lennard: RBAF (Side: WEST)","126 -LIB AWAR: Red Army (Side: EAST)","127 -LIB AWAR & Lennard: [Winter] Red Army (Side: EAST)","128 -LIB IFA3 Team: UK Airborne (Side: GUER)","129 -LIB El Tyranos: [Winter] UK Airborne (Side: GUER)","130 -LIB IFA3 Team: UK Army (Side: GUER)","131 -LIB El Tyranos: [Winter] UK Army (Side: GUER)","132 -LIB IFA3 Team: UK Desert Rats (Side: GUER)","133 -LIB El Tyranos: 101st Airborne Division (Side: GUER)","134 -LIB El Tyranos: 82nd Airborne Division (Side: GUER)","135 -LIB IFA3 team: US Army Air Forces (Side: GUER)","136 -LIB IFA3 team: US Army (Side: GUER)","137 -LIB El Tyranos: [Winter] US Army (Side: GUER)","138 -LIB Lennard: US 2nd Ranger Battalion (Side: GUER)","139 -LIB IFA3 team: US Tank Troops (Side: GUER)","140 -LIB AWAR & Lennard: [Winter] US Tank Troops (Side: GUER)","141 -LIB AWAR: USSR Airforce (Side: EAST)","142 -LIB AWAR & Lennard: [Winter] USSR Airforce (Side: EAST)","143 -LIB AWAR: Tank troops of USSR (Side: EAST)","144 -LIB AWAR & Lennard: [Winter] Tank troops of USSR (Side: EAST)","145 -LIB AWAR: Wehrmacht (Side: WEST)","146 -LIB AWAR & Lennard: [Winter] Wehrmacht (Side: WEST)","147 -LOP_LeightsOPFOR Project OPFOR: Afghan National Army and Police (Side: WEST)","148 -LOP_LeightsOPFOR Project OPFOR: African Militia (Side: GUER)","149 -LOP_LeightsOPFOR Project OPFOR: African Militia (Side: EAST)","150 -LOP_LeightsOPFOR Project OPFOR: Middle Eastern Militia (Side: GUER)","151 -LOP_LeightsOPFOR Project OPFOR: Middle Eastern Militia (Side: EAST)","152 -LOP_LeightsOPFOR Project OPFOR: Boko Haram (Side: EAST)","153 -LOP_LeightsOPFOR Project OPFOR: Chernarussian Defence Forces (Side: WEST)","154 -LOP_LeightsOPFOR Project OPFOR: ChDKZ (Side: EAST)","155 -LOP_LeightsOPFOR Project OPFOR: Iraqi Armed Forces (Side: WEST)","156 -LOP_LeightsOPFOR Project OPFOR: Irish Republican Army (Side: EAST)","157 -LOP_LeightsOPFOR Project OPFOR: Iranian Armed Forces (Side: GUER)","158 -LOP_LeightsOPFOR Project OPFOR: Islamic State (Side: GUER)","159 -LOP_LeightsOPFOR Project OPFOR: Islamic State (Side: EAST)","160 -LOP_LeightsOPFOR Project OPFOR: Chernarussian National Insurgents (Side: GUER)","161 -LOP_LeightsOPFOR Project OPFOR: Kurdish Peshmerga Forces (Side: WEST)","162 -LOP_LeightsOPFOR Project OPFOR: Kurdish Peshmerga Forces (Side: GUER)","163 -LOP_LeightsOPFOR Project OPFOR: Private Military Company (Side: GUER)","164 -LOP_LeightsOPFOR Project OPFOR: Royal Army Corps of Sahrani (Side: GUER)","165 -LOP_LeightsOPFOR Project OPFOR: Sahrani Liberation Army (Side: EAST)","166 -LOP_LeightsOPFOR Project OPFOR: Takistani Armed Forces (Side: EAST)","167 -LOP_LeightsOPFOR Project OPFOR: Ultranationalists (Side: GUER)","168 -LOP_LeightsOPFOR Project OPFOR: Ukrainian Armed Forces (Side: GUER)","169 -LOP_LeightsOPFOR Project OPFOR: United Nations (Side: GUER)","170 -LOP_LeightsOPFOR Project OPFOR: United Armed Forces of Novorossiya (Side: EAST)","171 -LOP_LeightsOPFOR Project OPFOR: Ulster Volunteer Force (Side: GUER)","172 -MOL HcPookie: Molatian Army (Side: EAST)","173 -O jarrad96: Central African Rebels (Side: EAST)","174 -OPTRE Article 2 Studios: Insurrectionists (Side: EAST)","175 -OPTRE Article 2 Studios: Colonial Police (Side: GUER)","176 -OPTRE Article 2 Studios: UNSCDF (Side: WEST)","177 -RHS_AFRF Red Hammer Studios: [ISC] Iraqi Army (Side: WEST)","178 -RHS_AFRF Red Hammer Studios: Russia (MSV) (Side: EAST)","179 -RHS_AFRF Red Hammer Studios: Russia (RVA) (Side: EAST)","180 -RHS_AFRF Red Hammer Studios: Russia (TV) (Side: EAST)","181 -RHS_AFRF Red Hammer Studios: Russia (VDV) (Side: EAST)","182 -RHS_AFRF Red Hammer Studios: Russia (VMF) (Side: EAST)","183 -RHS_AFRF RHS: Russia (VPVO) (Side: EAST)","184 -RHS_AFRF Red Hammer Studios: Russia (VV) (Side: EAST)","185 -RHS_AFRF Red Hammer Studios: Russia (VVS - Grey) (Side: EAST)","186 -RHS_AFRF Red Hammer Studios: Russia (VVS - Camo) (Side: EAST)","187 -RHS_GREF Red Hammer Studios: [ISC] Syrian Arab Army (Side: EAST)","188 -RHS_GREF Red Hammer Studios: Chernarus (Air Force) (Side: GUER)","189 -RHS_GREF Red Hammer Studios: Chernarus (Air Force) (Side: WEST)","190 -RHS_GREF RHS (A2 port): Chernarus (Ground Forces) (Side: GUER)","191 -RHS_GREF Red Hammer Studios: Chernarus (Ground Forces) (Side: WEST)","192 -RHS_GREF Red Hammer Studios: Chernarus (National Guard) (Side: GUER)","193 -RHS_GREF Red Hammer Studios: Chernarus (National Guard) (Side: WEST)","194 -RHS_GREF Red Hammer Studios: ChDKZ Insurgents (Side: EAST)","195 -RHS_GREF Red Hammer Studios: ChDKZ Insurgents (Side: GUER)","196 -RHS_SAF Red Hammer Studios: SAF (RVIPVO) (Side: GUER)","197 -RHS_SAF Red Hammer Studios: SAF (KOV) (Side: GUER)","198 -RHS_SAF Red Hammer Studios: SAF (Casques Bleus) (Side: GUER)","199 -RHS_USAF Red Hammer Studios: USA (SOCOM) (Side: WEST)","200 -RHS_USAF Red Hammer Studios: USA (USAF) (Side: WEST)","201 -RHS_USAF Red Hammer Studios: USA (Army - D) (Side: WEST)","202 -RHS_USAF Red Hammer Studios: USA (Army - W) (Side: WEST)","203 -RHS_USAF Red Hammer Studios: USA (USMC - D) (Side: WEST)","204 -RHS_USAF Red Hammer Studios: USA (USMC - W) (Side: WEST)","205 -RHS_USAF Red Hammer Studios: USA (Navy) (Side: WEST)","206 -RHSGREF Red Hammer Studios: Horizon Islands Defence Force (Side: WEST)","207 -RHSGREF Red Hammer Studios: Nationalist Troops (Side: GUER)","208 -RHSGREF Red Hammer Studios: Chernarus (U.N. Peacekeepers) (Side: GUER)","209 -SG Stagler: Sturmtroopers (Side: WEST)","210 -SG Stagler: Tank Sturmtroopers (Side: WEST)","211 -Tank Bohemia Interactive: 2035 Syndikat (Side: GUER)","212 -UK3CB_Factions www.3commandobrigade.com: 3CB Afghan National Army (Side: WEST)","213 -UK3CB_Factions www.3commandobrigade.com: 3CB Afghan National Police (Side: WEST)","214 -UK3CB_Factions www.3commandobrigade.com: 3CB Chernarus Local Defence Volunteers (Side: WEST)","215 -UK3CB_Factions www.3commandobrigade.com: 3CB Chernarus Nationalist Militia (Side: GUER)","216 -UK3CB_Factions www.3commandobrigade.com: 3CB Chernarus Communist Militia (Side: EAST)","217 -UK3CB_Factions www.3commandobrigade.com: 3CB Chernarus Civilians (Side: WEST)","218 -UK3CB_Factions www.3commandobrigade.com: 3CB Chernarus Civilians (Side: GUER)","219 -UK3CB_Factions www.3commandobrigade.com: 3CB Chernarus Civilians (Side: EAST)","220 -UK3CB_Factions www.3commandobrigade.com: 3CB Takistan National Army (Side: WEST)","221 -UK3CB_Factions www.3commandobrigade.com: 3CB Takistan National Army (Side: GUER)","222 -UK3CB_Factions www.3commandobrigade.com: 3CB Takistan National Army (Side: EAST)","223 -UK3CB_Factions www.3commandobrigade.com: 3CB Takistan Civilians (Side: WEST)","224 -UK3CB_Factions www.3commandobrigade.com: 3CB Takistan Civilians (Side: GUER)","225 -UK3CB_Factions www.3commandobrigade.com: 3CB Takistan Civilians (Side: EAST)","226 -UK3CB_Factions www.3commandobrigade.com: 3CB Takistan Pro-Government Militia (Side: WEST)","227 -UK3CB_Factions www.3commandobrigade.com: 3CB Takistan Tribal Fighters (Side: GUER)","228 -UK3CB_Factions www.3commandobrigade.com: 3CB Takistan Insurgents (Side: EAST)","229 -UK3CB_Factions www.3commandobrigade.com: 3CB Takistan National Police (Side: WEST)","230 -UK3CB_Factions www.3commandobrigade.com: 3CB Takistan National Police (Side: GUER)","231 -UK3CB_Factions www.3commandobrigade.com: 3CB Takistan National Police (Side: EAST)","232 -UK3CB_Factions www.3commandobrigade.com: 3CB UN Peacekeepers (Side: WEST)","233 -UK3CB_Factions www.3commandobrigade.com: 3CB UN Peacekeepers (Side: GUER)","234 -UNSUNG Bohemia Interactive: Australia (UNSUNG) (Side: WEST)","235 -UNSUNG Razorback: N.V.A. (UNSUNG) (Side: EAST)","236 -UNSUNG Bohemia Interactive: V.C. (UNSUNG) (Side: EAST)","237 -UNSUNG UNSUNG: A.R.V.N. (UNSUNG) (Side: GUER)","238 -UNSUNG Bohemia Interactive: New Zealand (UNSUNG) (Side: WEST)","239 -UNSUNG Bohemia Interactive: R.O.K. (UNSUNG) (Side: WEST)","240 -UNSUNG Bohemia Interactive: U.S. (UNSUNG) (Side: WEST)","241 -USML segen: Armed Islamic Front (Side: GUER)","242 -VTN VTN: Mechanized infantry (EMR) (Side: EAST)","243 -VTN VTN: Militia (Side: GUER)","244 -VTN VTN: Insurgents (Side: GUER)","245 -VTN VTN: Mechanized infantry (VSR-98) (Side: EAST)","246 -VTN VTN: GRU SSPB (Side: EAST)","247 -VTN VTN: ISIL (Side: GUER)","248 -VTN VTN: MVD SPPU (Side: EAST)","249 -VTN VTN: Airforce (Side: EAST)","250 -VTN VTN: Takistan national guard (Side: EAST)"};
        default = 167;
    };
    class btc_p_AA { // Anti-Air infantry:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_FAC_EAA"]);
        values[]={0,1};
        texts[]={$STR_DISABLED,$STR_ENABLED};
        default = 1;
    };
    class btc_p_tank { // Enemy uses Tank:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_FAC_ETANK"]);
        values[]={0,1};
        texts[]={$STR_DISABLED,$STR_ENABLED};
        default = 1;
    };
    class btc_p_civ { // Civil type:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_FAC_CTYPE"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22};
        texts[]={"0 - EricJ: Afghan Civilians (Side: CIV)","1 - Bohemia Interactive: Civils (Side: CIV)","2 - Bohemia Interactive: Autre (Side: CIV)","3 -btc_militia_mod Giallustio: Afghan Civilians (Side: CIV)","4 -CFP Drew: Civilians (Afghanistan) (Side: CIV)","5 -CFP Drew: Civilians (African Christian) (Side: CIV)","6 -CFP Drew: Civilians (African Islamic) (Side: CIV)","7 -CFP Drew: Civilians (Asian) (Side: CIV)","8 -CFP Drew: Civilians (Middle Eastern) (Side: CIV)","9 -CUP_Units Community Upgrade Project: Civilians (Russian) (Side: CIV)","10 -CUP_Vehicles Community Upgrade Project: Civilians (Chernarus) (Side: CIV)","11 -CUP_Vehicles Community Upgrade Project: Civilians (Sahrani) (Side: CIV)","12 -CUP_Vehicles Community Upgrade Project: Civilians (Takistan) (Side: CIV)","13 -Expansion Bohemia Interactive: Civilians (UEG) (Side: CIV)","14 -LIB Reyhard & Joarius: 40s Civilians (Side: CIV)","15 -LOP_LeightsOPFOR Project OPFOR: Civilians (African) (Side: CIV)","16 -LOP_LeightsOPFOR Project OPFOR: Civilians (Eastern European) (Side: CIV)","17 -LOP_LeightsOPFOR Project OPFOR: Civilians (Middle Eastern) (Side: CIV)","18 -ORANGE Bohemia Interactive: IDAP (Side: CIV)","19 -RDS_CIV_PACK RDS (BIS A2 Port): Russians (Side: CIV)","20 -UK3CB_Factions www.3commandobrigade.com: 3CB Chernarus Civilians (Side: CIV)","21 -UK3CB_Factions www.3commandobrigade.com: 3CB Takistan Civilians (Side: CIV)","22 -UNSUNG Bohemia Interactive: Vietnamese (UNSUNG) (Side: CIV)"};
        default = 1;
    };
    class btc_p_civ_veh { // Civil vehicle type:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_FAC_CTYPEVEH"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22};
        texts[]={"0 - EricJ: Afghan Civilians (Side: CIV)","1 - Bohemia Interactive: Civils (Side: CIV)","2 - Bohemia Interactive: Autre (Side: CIV)","3 -btc_militia_mod Giallustio: Afghan Civilians (Side: CIV)","4 -CFP Drew: Civilians (Afghanistan) (Side: CIV)","5 -CFP Drew: Civilians (African Christian) (Side: CIV)","6 -CFP Drew: Civilians (African Islamic) (Side: CIV)","7 -CFP Drew: Civilians (Asian) (Side: CIV)","8 -CFP Drew: Civilians (Middle Eastern) (Side: CIV)","9 -CUP_Units Community Upgrade Project: Civilians (Russian) (Side: CIV)","10 -CUP_Vehicles Community Upgrade Project: Civilians (Chernarus) (Side: CIV)","11 -CUP_Vehicles Community Upgrade Project: Civilians (Sahrani) (Side: CIV)","12 -CUP_Vehicles Community Upgrade Project: Civilians (Takistan) (Side: CIV)","13 -Expansion Bohemia Interactive: Civilians (UEG) (Side: CIV)","14 -LIB Reyhard & Joarius: 40s Civilians (Side: CIV)","15 -LOP_LeightsOPFOR Project OPFOR: Civilians (African) (Side: CIV)","16 -LOP_LeightsOPFOR Project OPFOR: Civilians (Eastern European) (Side: CIV)","17 -LOP_LeightsOPFOR Project OPFOR: Civilians (Middle Eastern) (Side: CIV)","18 -ORANGE Bohemia Interactive: IDAP (Side: CIV)","19 -RDS_CIV_PACK RDS (BIS A2 Port): Russians (Side: CIV)","20 -UK3CB_Factions www.3commandobrigade.com: 3CB Chernarus Civilians (Side: CIV)","21 -UK3CB_Factions www.3commandobrigade.com: 3CB Takistan Civilians (Side: CIV)","22 -UNSUNG Bohemia Interactive: Vietnamese (UNSUNG) (Side: CIV)"};
        default = 1;
    };
    class btc_p_spawn_title { // << Spawn options >>
        title = $STR_BTC_HAM_PARAM_SPAWN_TITLE;
        values[]={0};
        texts[]={""};
        default = 0;
    };
    class btc_p_mil_group_ratio { // Enemy density:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_SPWAN_ENEMY_DENSITY"]);
        values[]={0,10,20,30,40,50,60,70,80,90,100};
        texts[]={"0%","10%","20%","30%","40%","50%","60%","70%","80%","90%","100%"};
        default = 100;
    };
    class btc_p_civ_group_ratio { // Civilian density:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_SPWAN_CIVILIAN_DENSITY"]);
        values[]={0,10,20,30,40,50,60,70,80,90,100};
        texts[]={"0%","10%","20%","30%","40%","50%","60%","70%","80%","90%","100%"};
        default = 60;
    };
    class btc_p_wp_house_probability { // Density of military in house:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_SPWAN_MIL_INHOUSE_DENSITY"]);
        values[]={0,10,20,30,40,50,60,70,80,90,100};
        texts[]={"0%","10%","20%","30%","40%","50%","60%","70%","80%","90%","100%"};
        default = 50;
    };
    class btc_p_veh_armed_ho { // Add armed vehicles in Hideout:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_SPAWN_ARMEDHIDEOUT"]);
        values[] = {0,1};
        texts[] = {$STR_DISABLED,$STR_ENABLED};
        default = 1;
    };
    class btc_p_veh_armed_spawn_more { // Add armed vehicles in Side mission/Cache:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_SPAWN_ARMEDOTHER"]);
        values[] = {0,1};
        texts[] = {$STR_DISABLED,$STR_ENABLED};
        default = 1;
    };
    class btc_p_patrol_max { // Maximum number of military patrol:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_SPWAN_PATROL_MAX"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10};
        texts[]={"1","2","3","4","5","6","7","8","9","10"};
        default = 9;
    };
    class btc_p_civ_max_veh { // Maximum number of civilian patrol:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_SPWAN_CIV_MAX_VEH"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10};
        texts[]={"1","2","3","4","5","6","7","8","9","10"};
        default = 4;
    };
    class btc_p_IED_title { // << IED options >>
        title = $STR_BTC_HAM_PARAM_IED_TITLE;
        values[]={0};
        texts[]={""};
        default = 0;
    };
    class btc_p_ied { // IEDs ratio:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_IED_RATIO"]);
        values[]={0, 1, 2, 3};
        texts[]={$STR_DISABLED,$STR_A3_TIME_TRIALS_MISCTT_ROF_25,$STR_3DEN_ATTRIBUTES_SPEEDMODE_NORMAL,$STR_A3_TIME_TRIALS_MISCTT_ROF_21}; //texts[]={"Off","Low","Normal","High"};
        default = 1;
    };
    class btc_p_ied_spot { // IEDs spotting difficulty:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_IED_SPOT"]);
        values[]={0, 1, 2};
        texts[]={$STR_BTC_HAM_PARAM_IED_SPOT_VERYEASY,$STR_BTC_HAM_PARAM_IED_SPOT_EASY,$STR_3DEN_ATTRIBUTES_SPEEDMODE_NORMAL}; //texts[]={"Very easy","Easy","Normal"};
        default = 2;
    };
    class btc_p_ied_drone { // Drone bomber:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_IED_DRONE"]);
        values[]={0, 1};
        texts[]={$STR_DISABLED,$STR_ENABLED};
        default = 0;
    };
    class btc_p_hideout_cache_title { // << Hideout/Cache options >>
        title = $STR_BTC_HAM_PARAM_HIDE_TITLE;
        values[]={0};
        texts[]={""};
        default = 0;
    };
    class btc_p_hideout_n { // Hideout numbers:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_HIDE_NUMBERS"]);
        values[]={99,1,2,3,4,5};
        texts[]={$STR_3DEN_ATTRIBUTES_OBJECTTEXTURE_RANDOM_TEXT,"1","2","3","4","5"}; //texts[]={"Random","1","2","3","4","5"};
        default = 5;
    };
    class btc_p_cache_info_def { // Info cache distance:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_CACHE_DISTANCE"]);
        values[]={500,1000,1500,2000,2500,3000,3500,4000,5000};
        texts[]={"500 m","1000 m","1500 m","2000 m","2500 m","3000 m","3500 m","4000 m","5000 m"};
        default = 1000;
    };
    class btc_p_cache_info_ratio { //Cache info ratio:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_CACHE_RATIO"]);
        values[]={50,100};
        texts[]={"50 m","100 m"};
        default = 100;
    };
    class btc_p_info_chance { // Intel from dead bodies chance:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_CACHE_DEADINFO"]);
        values[]={0,10,20,30,40,50,60,70,80,90,100};
        texts[]={"100 %","90 %","80 %","70 %","60 %","50 %","40 %","30 %","20 %","10 %","0 %"};
        default = 30;
    };
    class btc_p_medical_title { // << Medical options >>
        title = $STR_BTC_HAM_MEDI_TITLE;
        values[]={0};
        texts[]={""};
        default = 0;
    };
    class btc_p_redeploy { // Allow re-deploy?
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_MEDI_REDEPLOY"]);
        values[]={0,1};
        texts[]={$STR_DISABLED,$STR_ENABLED};
        default = 1;
    };
    class btc_p_skill_title { // << A3 Skill options >>
        title = $STR_BTC_HAM_PARAM_SKILL_TITLE;
        values[]={0};
        texts[]={""};
        default = 0;
    };
    class btc_p_set_skill { // Set skill?
        title = __EVAL(format ["      %1?", localize "STR_A3_CFGVEHICLES_MODULESKILL_F_0"]);
        values[]={0,1};
        texts[]={$STR_DISABLED,$STR_ENABLED};
        default = 1;
    };
    class btc_p_set_skill_general {  // Set skill, general
        title = __EVAL(format ["      %1, %2", localize "STR_A3_CFGVEHICLES_MODULESKILL_F_0", localize "STR_3DEN_SCENARIO_TEXTSINGULAR"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10};
        texts[]={"0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"};
        default = 0;
    };
    class btc_p_set_skill_aimingAccuracy { // Set skill, aimingAccuracy
        title = __EVAL(format ["      %1, %2", localize "STR_A3_CFGVEHICLES_MODULESKILL_F_0", localize "STR_BTC_HAM_PARAM_SKILL_AIMACC"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10};
        texts[]={"0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"};
        default = 1;
    };
    class btc_p_set_skill_aimingShake {  // Set skill, aimingShake
        title = __EVAL(format ["      %1, %2", localize "STR_A3_CFGVEHICLES_MODULESKILL_F_0", localize "STR_BTC_HAM_PARAM_SKILL_AIMSKILL"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10};
        texts[]={"0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"};
        default = 4;
    };
    class btc_p_set_skill_aimingSpeed { // Set skill, aimingSpeed
        title = __EVAL(format ["      %1, %2", localize "STR_A3_CFGVEHICLES_MODULESKILL_F_0", localize "STR_BTC_HAM_PARAM_SKILL_AIMSPEED"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10};
        texts[]={"0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"};
        default = 3;
    };
    class btc_p_set_skill_endurance { // Set skill, endurance
        title = __EVAL(format ["      %1, %2", localize "STR_A3_CFGVEHICLES_MODULESKILL_F_0", localize "STR_A3_VR_STAMINA"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10};
        texts[]={"0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"};
        default = 5;
    };
    class btc_p_set_skill_spotDistance { // Set skill, spotDistance
        title = __EVAL(format ["      %1, %2", localize "STR_A3_CFGVEHICLES_MODULESKILL_F_0", localize "STR_BTC_HAM_PARAM_SKILL_SPOTDIST"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10};
        texts[]={"0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"};
        default = 9;
    };
    class btc_p_set_skill_spotTime { // Set skill, spotTime
        title = __EVAL(format ["      %1, %2", localize "STR_A3_CFGVEHICLES_MODULESKILL_F_0", localize "STR_BTC_HAM_PARAM_SKILL_SPOTTIME"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10};
        texts[]={"0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"};
        default = 7;
    };
    class btc_p_set_skill_courage { // Set skill, courage
        title = __EVAL(format ["      %1, %2", localize "STR_A3_CFGVEHICLES_MODULESKILL_F_0", localize "STR_BTC_HAM_PARAM_SKILL_COURAGE"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10};
        texts[]={"0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"};
        default = 2;
    };
    class btc_p_set_skill_reloadSpeed { // Set skill, reloadSpeed
        title = __EVAL(format ["      %1, %2", localize "STR_A3_CFGVEHICLES_MODULESKILL_F_0", localize "STR_BTC_HAM_PARAM_SKILL_RELOAD"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10};
        texts[]={"0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"};
        default = 9;
    };
    class btc_p_set_skill_commanding { // Set skill, commanding
        title = __EVAL(format ["      %1, %2", localize "STR_A3_CFGVEHICLES_MODULESKILL_F_0", localize "STR_A3_CFGHINTS0"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10};
        texts[]={"0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"};
        default = 7;
    };
    class btc_p_gameplay_title { // << Gameplay options >>
        title = $STR_BTC_HAM_PARAM_GAMEPLAY_TITLE;
        values[]={0};
        texts[]={""};
        default = 0;
    };
    class btc_p_sea { // Extend battlefield to sea:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_GAMEPLAY_SEA"]);
        values[] = {0,1};
        texts[] = {$STR_DISABLED,$STR_ENABLED};
        default = 1;
    };
    class btc_p_side_mission_cycle {  // Side mission cycle:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_GAMEPLAY_SIDEM"]);
        values[] = {0,1};
        texts[] = {$STR_DISABLED,$STR_ENABLED};
        default = 1;
    };
    class btc_p_arsenal_title { // << Arsenal options >>
        title = $STR_BTC_HAM_PARAM_ARSENAL_TITLE;
        values[]={0};
        texts[]={""};
        default = 0;
    };
    class btc_p_arsenal_Type { // Type of the arsenal:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_ARSENAL_ARSENALTYPE"]);
        values[]={0,1,2,3,4};
        texts[]={$STR_BTC_HAM_PARAM_ARSENAL_ARSENALTYPE_BIS,$STR_BTC_HAM_PARAM_ARSENAL_ARSENALTYPE_BA,$STR_BTC_HAM_PARAM_ARSENAL_ARSENALTYPE_BA_PLUS,$STR_BTC_HAM_PARAM_ARSENAL_ARSENALTYPE_ACE,$STR_BTC_HAM_PARAM_ARSENAL_ARSENALTYPE_ACE_PLUS}; //texts[]={"BIS - Vanilla","BIS - Vanilla and ACE 3","BIS - Vanilla and ACE 3 (scroll wheel action)","ACE 3","ACE 3 (scroll wheel action)"};
        default = 4;
    };
    class btc_p_arsenal_Restrict { // Restricted arsenal (See /define_mod.sqf):
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_ARSENAL_ARSENALRESTR"]);
        values[]={0,1,2,3};
        texts[] = {$STR_DISABLED,$STR_3DEN_ATTRIBUTES_SPEEDMODE_FULL,$STR_BTC_HAM_PARAM_ARSENAL_ARSENALRESTR_REMOVEONLY,$STR_BTC_HAM_PARAM_ARSENAL_ARSENALRESTR_FILTER}; //texts[]={"Off","Full","Remove only (works only with ACE3-Arsenal)","Filter on player role (works only with ACE3-Arsenal)"};
        default = 2;
    };
    class btc_p_autoloadout { // Automatic loadout:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_ARSENAL_AUTOLOADOUT"]);
        values[]={0,1};
        texts[]={$STR_DISABLED,$STR_ENABLED};
        default = 1;
    };
    class btc_p_garage { // Activate garage for admin:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_ARSENAL_GARAGEADMIN"]);
        values[]={0,1};
        texts[]={$STR_DISABLED,$STR_ENABLED};
        default = 1;
    };
    class btc_p_main_title { // << Other options >>
        title = $STR_BTC_HAM_PARAM_OTHER_TITLE;
        values[]={0};
        texts[]={""};
        default = 0;
    };
    class btc_p_rep { // Reputation at start:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_OTHER_REPSTART"]);
        values[]={0, 200, 500, 750};
        texts[]={$STR_ACE_ViewDistance_object_verylow,$STR_A3_TIME_TRIALS_MISCTT_ROF_25,$STR_3DEN_ATTRIBUTES_SPEEDMODE_NORMAL,$STR_A3_TIME_TRIALS_MISCTT_ROF_21}; //texts[]={"Very Low","Low","Normal","High"};
        default = 500;
    };
    class btc_p_city_radius { // Spawn city radius offset:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_OTHER_SPAWNRAD"]);
        values[]={0,1,2,3,4,5,6,7,8};
        texts[]={"0 m","100 m","200 m",$STR_BTC_HAM_PARAM_OTHER_SPAWNRAD_DEF,"400 m","500 m (Takistan)","600 m","700 m","800 m"}; // texts[]={"0 m","100 m","200 m","300 m","400 m","500 m (Takistan)","600 m","700 m","800 m"};
        default = 4;
    };
    class btc_p_trigger { // Disable city activation when a plane or helicopter (>190Km/h) is flying above:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_OTHER_DISABLESPAWN"]);
        values[]={0,1};
        texts[]={$STR_DISABLED,$STR_ENABLED};
        default = 1;
    };
    class btc_p_debug { // Debug:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_OTHER_DEBUG"]);
        values[]={0,1,2};
        texts[]={$STR_DISABLED,$STR_ENABLED, $STR_BTC_HAM_PARAM_OTHER_DEBUG_LOGONLY}; // texts[]={"Off","On","Log only"};
        default = 0;
    };
};
