

if (!hasInterface) exitWith {};

waitUntil {!isNull player};

player createDiarySubject ["Rules", "Rules"];
player createDiarySubject ["Diary", "Diary"];
player createDiarySubject ["FAQ", "FAQ"];
player createDiarySubject ["Change Log", "Change Log"];
player createDiarySubject ["Credits", "Credits"];

//-------------------------------------------------- Rules

player createDiaryRecord ["Rules",
[
"General",
"
<br />1. Do not teamkill. This one shouldn’t even be here… ANY type of on purpose teamkilling will not be accepted. IE: Revenge killing, executions, dicking around.
<br />
<br />2. Do not dare/antagonize someone to teamkill, and/or create a situation where teamkilling is very likely to happen. (capturing an enemy vehicle and failing to properly notifying your team)
<br />
<br />3. Listen to the Chain of Command.
<br />
<br />4. Do not type over side chat.(Unless in an emergency.
<br />
<br />5. Do not discharge any of your weapons in base on purpose! This includes launchers with their back blast.
<br />
<br />6. Pilots should not get into jets/helicopters unless told to by Command elements.
<br />
<br />7. Do not use 2 seater aircraft when alone.
<br />
<br />8. CAS  pilots(Helicopter/Jet) should be on standby in a safe orbit over AO unless instructed otherwise by command element(Not Squad Leaders). CAS standby and not fire unless told to by command.
<br />
<br />9. Firing 20mm or 30mm cannon can cause server lag issues, so please use them with discretion.
<br />
<br />10. If you select a role, please play that role. We don’t expect a medic to be running around with a AT launcher + LMG. Just play your role.
<br />
<br />11. The first medic on a scene decides how to treat a patient. Do not run up to a patient and start doing medical stuff without asking the on scene medic first.
<br />
<br />12. Radios are not for chit-chat. Please keep radio chatter to a minimum. If you have to talk do it LOCALLY.
<br />
<br />13. The motor pool and spawn area is not for helicopters or jets. Do not land them there. Use the helipads instead. When no helipad is available, land outside base in a safe area.
<br /><br />
<br />If you see a player in violation of the above, contact a moderator or admin on teamspeak or Discord.
"
]];

//-------------------------------------------------- Training Areas


player createDiaryRecord ["Diary",
[
"USS Freedom",
"
<br />An alternate spawn or start point is the <marker name = 'carrier'>USS Freedom</marker>.
<br /><br />Here you can practice carrier operations such as take-off's and landing's.
<br /><br />The USS Freedom doesn't support a teleport flagpole.

"
]];

player createDiaryRecord ["Diary",
[
"Movement Formation Ranges",
"
<br />The <marker name = 'formation'>Movement Formation Range</marker> FoB is designed to show the basic foot movement formations.  The basic formations covered are the Line, Column, Staggered Column, Wedge (USMIL) and Wedge (BRITMIL).
<br /><br />The Zeus or cadre running this orientation can also conduct TFAR enemy reporting orientation here.

"
]];

player createDiaryRecord ["Diary",
[
"CAS Range",
"
<br />The <marker name = 'cas'>CAS Range</marker> is located is designed for players to familiarize themselves with call-for-fire missions.  Utilize the vehicles from the CAS and EoD Range FoB to drive to the <marker name = 'casop'>CAS OP</marker>.
<br /><br />From the CAS OP, CAS aircraft should only conduct CAS in the <marker name = 'safe'>safe direction</marker>.
<br /><br />From the CAS OP, CAS aircraft should never conduct CAS in the <marker name = 'nevercas'>unsafe direction</marker>.

"
]];

player createDiaryRecord ["Diary",
[
"CAS and EoD Range FoB",
"
<br />The <marker name = 'caseod'>CAS and EoD FoB</marker> is used to support EoD and CAS orientation ranges.
<br /><br />The EoD Beach Clearing Range is designed for a helo <marker name = 'watercast'>water-cast</marker> inserterion to conduct <marker name = 'beach'>beach mine clearance</marker>.  It is recommended that the helo slow to 14 knots or less to safetly helo-cast personnel.
<br /><br />The <marker name = 'ied'>IED Clearance Range</marker> is designed for IED clearance operations on foot with ground vehicles.  Utilize the vehicles located in the CAS and EoD Range FoB.

"
]];

player createDiaryRecord ["Diary",
[
"Movement to Contact Range",
"
<br />The <marker name = 'movement'>Movement to Contact Range</marker> is designed to cover linear and bounding over watch assaults.  Once the assault has assaulted through/past the objective, the squad/team should setup 360 security.
<br />
<br />The range is also designed to provide a <marker name = 'support'>support-by-fire</marker> position.  When the assault reaches within 50m of the objective, support-by-fire should shift fire.  Shift fire means that support-by-fire contiunes to only engage targets behind the objective (away from assault).  When the assault reaches the objective, support-by-fire should cease fire.
<br /><br />Use the vehicles to move to and from the support-by-fire by fire position from the range tower.

"
]];

player createDiaryRecord ["Diary",
[
"Dropzone",
"
<br />The <marker name = 'dz'>Dropzone</marker> is used for players to practice and refine airborne operations.
<br />Players can practice using the backpack on chest mod or finding similar ways to conduct airborne jumps.
<br /><br />Alpha and Bravo RV points are used for squads to reconsolidate after the jump before moving out towards the objective.
<br /><br />The DZSO has an ambulance on standby to heal injured players.

"
]];

player createDiaryRecord ["Diary",
[
"CQB Compounds",
"
<br />All CQB Compounds Ranges have shoot (bad guy) and no-shoot (civilian) targets.
<br />
<br /><marker name = 'cqb1'>CQB Compound 1</marker> is designed for a foot movement to assault.
<br />
<br /><marker name = 'cqb2'>CQB Compound 2</marker> is designed for a single helo roof landing to insert the players.
<br />
<br /><marker name = 'cqb3'>CQB Compound 3</marker> is designed for single helo fast-rope on the roof to insert the players.
<br />
<br /><marker name = 'cqb4'>CQB Compound 4</marker> is designed for a multi-helo assault with two or more squads/teams.  The range is designed for a UH-60 (or similar) to insert players in the <marker name = 'blackhawk'>football field</marker> and for an MH-6 to insert players elsewhere on the objective. 

"
]];

player createDiaryRecord ["Diary",
[
"Known Distance (KD) Range",
"
<br />The <marker name = 'kd'>KD Range</marker> is 800 meters long and designed for Designated Markman and Sniper Teams.

"
]];

player createDiaryRecord ["Diary",
[
"Shoothouse",
"
<br />The <marker name = 'shoot'>Shoothouse</marker> is designed to practice the basics of room-clearing/CQB.
<br />The range is designed for 1-man clearing up to 2-squad size elements.
<br /><br />Don't forget to practice with flashbangs!

"
]];

player createDiaryRecord ["Diary",
[
"50 Meter Range",
"
<br />The <marker name = 'fifty'>50 Meter Range</marker> is designed for you to engage targets on the move.
<br />You can move down the lane or parallel (left or right) to the lanes.
<br /><br />Run a timer with friends and see who finished the quickest!

"
]];

player createDiaryRecord ["Diary",
[
"Stress Shoot Range",
"
<br />The <marker name = 'stress'>Stress Shoot Range</marker> is designed for you to raise your heart-rate by moving and shooting accurately.  Both ranges start on the right side of their respective entrance.  The laptop resets the pop-ups in both ranges.
<br /><br />The pop-ups in each range are setup identically, so run it with a friend and see who can finish the quickest!

"
]];

player createDiaryRecord ["Diary",
[
"Medical Training Range",
"
<br />The <marker name = 'medical'>Medical Training Range</marker> is used to familarize yourself with the BSO medical settings.  You can create/spawn two casualties using the Data Terminals.
<br /><br />You cannot clear/remove dead patients.  Dead patients will despawn after a pre-determined time.

"
]];

player createDiaryRecord ["Diary",
[
"Airbase",
"
<br />Your spawn or start point is the <marker name = 'base'>Airbase</marker>.  You can move to the different ranges via the vehicles or teleporting BSO flagpoles.
<br /><br />You will find the Medical Training, Stress Shoot, 50 Meter Ranges here as well as a Shoothouse.  Ranges with pop-up targets have a laptop.  Use the laptop to reset the targets.
<br /><br />Utilize the <marker name = 'helo'>Light Helo FoB</marker> to plan and launch assaults when working with smaller transport helos.

"
]];


//-------------------------------------------------- FAQ

player createDiaryRecord ["FAQ",
[
"Shots left in magazine",
"
<br /><font size='16'>Q:</font> How do I check the amount of rounds left in my magazine?<br />
<br /><font size='16'>A:</font>
<br /> 1. Press CTRL and press R.
<br /> 2. This will give you an indication of how heavy the magazine is and thus how many rounds are left.
<br /> Green = full or near full, Yellow = around half empty, Red = almost empty if you can reload now if your about to move onto the enemy
<br />
"
]];

player createDiaryRecord ["FAQ",
[
"ACE3 Keys",
"
<br /><font size='16'>Q:</font> Which keys to I use to interact with myself or others?<br />
<br /><font size='16'>A:</font>
<br /> 1. Press Left Control+ Left Windows key to interact with yourself.
<br /> 2. Press Left Windows key to interact with other players/vehicles.
<br /> 3. Your SELF-INTERACTION key is used to interact with your gear, from putting earplugs in, attaching items to you, self-healing, repacking your magazines.
<br /> 4. Your INTERACTION key is used to interact with other players, vehicles. You can heal other players, use Team Management to join their squad, cable-tie units (do not use on friendly players).
<br />
"
]];

player createDiaryRecord ["FAQ",
[
"ACE3 Vector",
"
<br /><font size='16'>Q:</font> How do I properly use ACE3 Vector and which keys to use?<br />
<br /><font size='16'>A:</font>
<br /> 1. Use Vector as any other binoculars, press B to pull it out.
<br /> 2. Always point the middle cross towards and on the target.
<br /> 3. To measure DISTANCE to the target, aim at it, press and hold R until a red square appears then release the key. A distance to your target should appear in the right section of your vector. Distance is measured in meters.
<br /> 4. To measure BEARING to the target, aim at it, press and hold Tab until a red square appears then release the key. A bearing to your target should appear in the left section of your vector. Bearing is measured in degrees.
<br />
"
]];

player createDiaryRecord ["FAQ",
[
"ACE3 Weapon Safety",
"
<br /><font size='16'>Q:</font> How do I put my weapon on safe?<br />
<br /><font size='16'>A:</font>
<br /> 1. Press Left Control + ~ (tilde key - next to 1).
<br /> 2. A weapon and text should appear in top right corner saying: Put on Safety and your fire mode has no bar.
<br /> 3. Remove the safety by pressing same buttons again or by switching firing mode of your weapon. A text should say Remove safety and your fire mode should be visible.
<br />
"
]];

player createDiaryRecord ["FAQ",
[
"Rilfeman and 152 Radio",
"
<br /><font size='16'>Q:</font> How do i use my 343 radio?<br />
<br /><font size='16'>A:</font>
<br /> 1. Press CAPSLOCK to transmit (please change default arma ptt keybind if you use CAPSLOCK).
<br /> 2. Rifleman radio's are used for comms inside of a team and have a max range of about 700 meters.
<br /> 3. 152 radio's are used for comms between lead elements such as SL,TL,PL and FAC and have a range of 5-7 kilometers.
<br /> 4. If your TL or SL dies please do pickup their radio as to ensure the continuation of Comms with HQ.
<br />
"
]];

player createDiaryRecord ["FAQ",
[
"Backpack Long Range (LR) Radio",
"
<br /><font size='16'>Q:</font> How do i use my LR radio?<br />
<br /><font size='16'>A:</font>
<br /> 1. CAPSLOCK to transmit.
<br /> 2. LR Is a powerful 20 kilometer range radio that is primariliy used by HQ elemnts such as the platoon commander and the FAC.
<br /> 3. This is basically a bigger/heavier version of the 152 radio.
<br />
"
]];

//-------------------------------------------------- Change Log

player createDiaryRecord ["Change Log",
[
"V 0.1 and BSO Orien v1n",
"

<br />[ADDED] RHS Units and Vehicles.
<br />[CHANGED] No more Revive or Anti-instadeath.
<br />[ADDED] Respawn timer and spectator cam of 60 seconds.
<br /><br />BSO Orientation v1n uses BSO v3 modpack plus Bozcaada.
<br /><br />Items to Fix:
<br />Teleport Flag to marker (marker_12)
<br />OPFOR Respawn
"
]];

//-------------------------------------------------- Credits

player createDiaryRecord ["Credits",
[
"BSO Mission Files",
"
<br />Mission Authors:<br /><br />

		- <font size='16'>ShadowFox<br />
		- <font size='16'>Joko</font><br />
		- <font size='16'>kMaN</font><br />

<br />Other:<br /><br />
			BSO Scripts<br />
		- Joko<br />
		- Lawrence<br /><br /><br />
		
			Third-Party Scripts<br />
		- Feuerex (Pop-up Target Script)<br />
		- JakesCobra (Medical Patient Training Facility Script)<br />
		- wyattwic (Flagpole teleport code)<br />
"
]];
