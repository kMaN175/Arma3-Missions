#define DIARY_SUBJECT(ID) player createDiarySubject [toLower ID, ID]
#define DIARY_RECORD_START(ID, TITLE) player createDiaryRecord [toLower ID, [TITLE,
#define DIARY_RECORD_END ]]

DIARY_SUBJECT("FAQ");
DIARY_SUBJECT("Credits");

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
DIARY_RECORD_START("Credits", "Credits")
"
<font color='#C4EB86' size='16'>=BTC= Hearts and Minds:</font>
<br/> - Giallustio
<br/> - Vdauphin
<br/>
<br/> <font color='#C4EB86' size='16'>FK scripts were made possible by:</font>
<br/> - Alex2k
<br/> - anden3
<br/> - commy2
<br/> - jokoho482
<br/> - NeilZar
<br/> - nkenny
<br/>
<br/> <font color='#C4EB86' size='16'>Mission modified for the FK Gaming Community by:</font>
<br/> - ryan(a)
<br/> - kMaN
"
DIARY_RECORD_END;