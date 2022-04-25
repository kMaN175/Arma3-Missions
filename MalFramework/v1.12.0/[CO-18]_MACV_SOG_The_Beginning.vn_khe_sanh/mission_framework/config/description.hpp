// The UID of the mission maker (to access the admin menu and debug console during the mission)
#define UID "76561198085459284"  // kMaN's UID

// VCOM AI
#define VCOMAI  // Comment out this line if you don't want to load VCOM AI

// Mission parameters
class Header {
    gameType =  Coop;  // Game type (use 'Coop' for PvE and 'TDM' for TvT)
    minPlayers =  1;  // Minimum number of players
    maxPlayers = 18;  // Maximum number of players
};

// Mission selection screen
briefingName = "[CO-18] MACV-SOG The Beginning";  // Mission name on the mission selection screen (use [CO-XX] or [TVT-XX] where XX is the max. player number)
overviewText = "MACV-SOG Recon Teams facing NVA and VC units in west Khe Sanh. // Assets: 2 x Kingbee Transport (callsign: Slick) and 1 x Kingbee CAS (callsign: KillerBee) // Respawns: unlimited, heli transport // JIP: enabled";  // Mission info on the mission selection screen (e.g. mission assets, factions, time limit etc.)

// Loading screen settings
onLoadName = "MACV-SOG The Beginning";  // Name of the operation on the loading screen (you can drop the [CO-XX] part here)
onLoadMission = "Search AO Whiskey on the border with Laos looking for any NVA or VC.";  // Mission description on the loading screen
author = "kMaN";  // Author of the mission
loadScreen = "mission_framework\config\img\loading_screen.jpg";  // Loading screen image (use 2:1 image ratio)

onLoadIntro = "Search AO Whiskey on the border with Laos looking for any NVA or VC.";
overviewPicture = "mission_framework\config\img\loading_screen.jpg";
overviewTextLocked = "MACV-SOG Recon Teams facing NVA and VC units in west Khe Sanh. // Assets: 2 x Kingbee Transport (callsign: Slick) and 1 x Kingbee CAS (callsign: KillerBee) // Respawns: unlimited, heli transport // JIP: enabled";