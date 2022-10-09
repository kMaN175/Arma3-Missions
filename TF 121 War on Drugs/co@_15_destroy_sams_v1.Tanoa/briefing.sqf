//briefing.sqf

waitUntil {!isNull player && isPlayer player};

//Diary
player createDiaryRecord["Diary", ["Mission", "<font color='#FFFFFF' size='18'>Primary Objective:</font> <br/><br/>"]];
player createDiaryRecord["Diary", ["Assets", "<font color='#FFFFFF' size='18'>Assets:</font> <br/><br/>"]];
player createDiaryRecord["Diary", ["Situation", "<font color='#FFFFFF' size='18'>Situation:</font> <br/><br/> "]];
player createDiaryRecord["Diary", ["Notes", " <font color='#FFFFFF' size='18'>Notes:</font> <br/><br/> "]];
player createDiaryRecord["Diary", ["Friendly Forces", " <font color='#FFFFFF' size='18'>Friendly Forces:</font> <br/><br/> "]];
player createDiaryRecord["Diary", ["Enemy Forces", " <font color='#FFFFFF' size='18'>Enemy Forces:</font> <br/><br/> "]];
