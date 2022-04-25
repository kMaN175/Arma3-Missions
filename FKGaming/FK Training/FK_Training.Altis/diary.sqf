#define DIARY_SUBJECT(ID) player createDiarySubject [toLower ID, ID]
#define DIARY_RECORD_START(ID, TITLE) player createDiaryRecord [toLower ID, [TITLE,
#define DIARY_RECORD_END ]]

DIARY_SUBJECT("Basic Training");
DIARY_SUBJECT("Prophet Training");
DIARY_SUBJECT("Training Areas");
DIARY_SUBJECT("FAQ");
DIARY_SUBJECT("Credits");

DIARY_RECORD_START("Basic Training", "Welcome to Training")
"
You begin at the same spawn area that replicates the FK Main Mission spawn area. Here, your instructor will start your basic training.<br /><br />
For your Basic training there are three CQB training shoothouses, one live-fire village (CQB), one multi-story live-fire CQB objective that starts by helo infil<br /><br />
You will find many places to access the Ace Virual Arsenal so don't worry if you forget a pice of equipment.<br /><br />
<img image='images\arsenal.jpg' width='390' height='270'/><br /><br />
There is a laptop next to the relevant range where you access the Targets System to restart the pop-up targets.<br /><br /><br />
<img image='images\laptop.jpg' width='390' height='270'/><br />
<br />
"
DIARY_RECORD_END;
DIARY_RECORD_START("Prophet Training", "Scoring")
"
There are three seperate ranges where the shooting tests are conducted.<br /><br />
Known Distance (KD) Range- You will have 5 minutes and 10 bullets/rounds to shoot 10 targets.  Each hit on a target is worth 10 points.<br /><br />
Unknown Distance (Field-Fire) Range- You will have 10 minutes and 24 bullets/rounds to shoot 12 targets.  Each hit on a target is worth 10 points.<br /><br />
Counter-Sniper (CS) Range- You have three chances in 60 minutes to successfully kill the enemy sniper located inside Kavala.<br />
 - Killing the enemy sniper is worth 50 points.<br />
 - Not being seen in your hide is worth 15 points.<br />
 - Being seen in your hide, but not being killed is worth 5 points.<br />
 - If the enemy sniper kills you then you lose 10 points.  Be carfeful because this<br />
   can minus a total of 30 points for you during the exercise.<br /><br />
Trainee's must accumulate 180 points out of a possible 220 to successfully pass the sniper/spotter shooting qualification and ear their tag/s.  If a student fails to meet the minimum score then he or she will need to attend the Prohet Training Course again from the beginning.<br />
<br />
"
DIARY_RECORD_END;
DIARY_RECORD_START("Prophet Training", "Welcome to Training")
"
The course begins at the Known Distance (KD) Range where trainee's learn the basics of the sniper/spotter team.  This is also the beginning of the sniper/spotter shooting qualification test.<br /><br />
Next, the students will move to the Unknown Distance (Field-Fire) Range where the trainee's will further build their target identification, ranging and shooting skills.  This is the second range
used during the sniper/spotter shooting qualification.<br /><br />
Finally, the Counter-Sniper Range will test the students ability to stalk into a hide, find his target and successfully engage (shoot/kill) the target.  This is the final test in the sniper/spotter shooting qualification.<br />
<br />
"
DIARY_RECORD_END;
DIARY_RECORD_START("Training Areas", "Counter-Sniper Range")
"
<br />The <marker name = 'csrange'>Counter-Sniper Range</marker> is the culmination test for the sniper/spotter team.  The test brings together the teams stalking, setup and shooting accuracy skills into one
exercise.<br /><br />
The trainee's choose one of the four CS Start Points to begin the exercise.<br /><br />
Trainee's are to stalk (move stealthfully) into a good hide (observation and shooting position) somewhere around the town of Kavala.  The trainee's are looking for the enemy sniper and are to kill the sniper at the first opportunity.<br /><br />
Beware, the enemy sniper is looking for the trainee's and will kill them as well!!<br /><br />
<img image='images\csrange.jpg' width='390' height='270'/><br /><br />
 - You have three chances in 60 minutes to successfully kill the enemy sniper<br />
   located inside Kavala.<br />
 - Killing the enemy sniper is worth 50 points.<br />
 - Not being seen in your hide is worth 15 points.<br />
 - Being seen in your hide, but not being killed is worth 5 points.<br />
 - If the enemy sniper kills you then you lose 10 points.  Be carfeful because this<br />
   can minus a total of 30 points for you during the exercise.<br />
<br />
"
DIARY_RECORD_END;
DIARY_RECORD_START("Training Areas", "Unknown Distance (Field-Fire) Range")
"
<br />An alternate spawn or start point is the <marker name = 'udrange'>Unknown Distance Range</marker> also known as the Field-Fire Range has targets in various positions at unknown distances.<br /><br />
<img image='images\udrange.jpg' width='390' height='270'/><br /><br />
The range is 1000 meters long using the pop-up targets<br /><br />
<img image='images\target.jpg' width='390' height='270'/><br /><br />
Targets can be located anywhere in the valley so have a sharp eye!<br /><br />
<img image='images\target1.jpg' width='390' height='270'/><br /><br />
During the test you will have 10 minutes and 24 bullets/rounds to shoot 12 targets.  Each hit on a target is worth 10 points.<br />
<br />
"
DIARY_RECORD_END;
DIARY_RECORD_START("Training Areas", "Known Distance (KD) Range")
"
<br />The <marker name = 'kd'>Known Distance (KD) Range</marker> is the basic range used in training the sniper/spotter team.<br /><br />
<img image='images\kdrange.jpg' width='390' height='270'/><br /><br />
The range is 1000 meters long using the pop-up targets located every 100 meters.<br /><br />
<img image='images\target.jpg' width='390' height='270'/><br /><br />
During your test you will have 5 minutes and 10 bullets/rounds to shoot 10 targets.  Each hit on a target is worth 10 points.<br />
<br />
"
DIARY_RECORD_END;
DIARY_RECORD_START("Training Areas", "Bounding OverWatch Range")
"
<br />The <marker name = 'bounding'>Bounding OverWatch Range</marker> is the basic range used in training the sniper/spotter team.<br /><br />
<img image='images\bounding.jpg' width='390' height='270'/><br /><br />
The range uses pop-up targets.<br /><br />
<img image='images\target.jpg' width='390' height='270'/><br />
<br />
"
DIARY_RECORD_END;
DIARY_RECORD_START("Training Areas", "Helo Infil CQB Range")
"
<br />The <marker name = 'heloassault'>Helo Infil CQB Range</marker> is the basic range used in training the sniper/spotter team.<br /><br />
<img image='images\heloassault.jpg' width='390' height='270'/><br /><br />
This is a live-fire range with real enemy!<br />
<br />
"
DIARY_RECORD_END;
DIARY_RECORD_START("Training Areas", "CQB Range")
"
<br />The <marker name = 'cqb'>CQB Range</marker> is the basic range used in training the sniper/spotter team.<br /><br />
<img image='images\cqb.jpg' width='390' height='270'/><br /><br />
Two of the three CQB shoothouses use the pop-up targets.<br /><br />
<img image='images\target.jpg' width='390' height='270'/><br />
<br />
"
DIARY_RECORD_END;
DIARY_RECORD_START("FAQ", "Gameplay")
"
Q: How do I attach to another squad?<br/>
A: You touch the bum. Use ACE interation on a player in the squad and join.<br/>
<br/>
Q: Which squad should I attach to?<br/>
A: Try to go for the squad with the least amount of players.<br/>
<br/>
Q: Does G open inventory?<br/>
A: Only if you want to be banned.<br/>
<br/>
Q: Why does Zeus not respond to Sidechat?<br/>
A: Because they aren't on your side. You also shouldn't be using Sidechat, unless you have an urgent technical issue that no one in your squad can help you with.<br/>
<br/>
Q: Am I allowed to join a mission late?<br/>
A: Always ask someone in the mission.
"
DIARY_RECORD_END;
DIARY_RECORD_START("FAQ", "Streamers")
"
Q: Am I allowed to stream?<br/>
A: Yes, definitely!<br/>
<br/>
Q: Are there any special rules when streaming?<br/>
A: Yes, don't show the password.<br/>
<br/>
Q: Where can I advertise my stream?<br/>
A: There is a special videos tab on the forum where you can post your stream. You are not allowed to advertise it anywhere else.<br/>
<br/>
Q: Can we meme about to entertain our audience?<br/>
A: No, Inclement. We aren't your playground to gain and entertain viewers.<br/>
<br/>
Q: Does SovietWo... *User was banned from the server*
"
DIARY_RECORD_END;
DIARY_RECORD_START("FAQ", "Technical")
"
Q: Why is my TFAR not working?<br/>
A: Make sure you have the correct plugin version and it is enabled. If it still doesn't work, try to run Teamspeak as administrator.<br/>
<br/>
Q: Why is it saying I'm running a different version of TFAR?<br/>
A: Because you are. Make sure that you only have the beta version enabled.<br/>
<br/>
Q: Why am I swimming in the middle of the sea?<br/>
A: Because you don't have the current map loaded as mod.<br/>
<br/>
Q: Can I run mod X?<br/>
A: Maybe, probably not. Check the forum for a list of what is and isn't allowed. If your mod is not on there, approach one of the CMs.
"
DIARY_RECORD_END;
DIARY_RECORD_START("Credits", "Zeus Templates")
"
<font color='#C4EB86' size='16'>The Zeus templates were made possible by:</font>
<br/> - Anden3
<br/> - Monocled Badger
<br/> - NeilZar
<br/> - kMaN
<br/>
<br/> <font color='#C4EB86' size='16'>The scripts were made possible by:</font>
<br/> - Alex2k
<br/> - anden3
<br/> - commy2
<br/> - jokoho482
<br/> - NeilZar
<br/> - nkenny
<br /> - Whiplash (Ion Shoothouses)
"
DIARY_RECORD_END;
