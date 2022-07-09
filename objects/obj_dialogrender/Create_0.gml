/// @description Initialization

//==============================================
// READ DOCUMENTATION ON DIALOGS FOR MORE INFO!
//==============================================

//Define dialogs here in an array
#region Dialog Array
dialogs = [
	[
		[DIAG_TYPE_TEXT, "[wave][rainbow]Hello, World![/rainbow][/wave]", DIAG_CHAR_PLACEHOLDER, DIAG_FACE_HAPPY, 0.5],
		[DIAG_TYPE_CODE, function(){show_debug_message("[WARN] The British are Coming!")}],
		[DIAG_TYPE_CHOICE, "Pick one!", DIAG_CHAR_PLACEHOLDER, DIAG_FACE_ANNOYED, 0.5, "Opt A", 0, "Opt B", 1],
	],
	[
		[DIAG_TYPE_TEXT, getLocal("1000wordsofloremipsum"), DIAG_CHAR_INFO, DIAG_FACE_ANNOYED, 3]
	]
]
#endregion

// typist setup
typist = scribble_typist();
typist.character_delay_add(".", 100);
typist.character_delay_add("!", 100);
typist.character_delay_add("?", 100);
typist.character_delay_add(",", 100);

//Do not modifiy these.
text = ""
targText=""
textCharPos = 1
border = 10;
char_border = 8;
width = 470-(border*2)
textArrayPos=0
typist.in(0,0) // 1st argument is speed (the higher the faster it is), 2nd argument is how the text fades in
pauseTime = 20;
pauseTimer = 0;
name_box_offset = 32 * 5;
char=0
charexp=0
selectionPrompt=0
selectedOption=0
opt1=""
opt2=""

//lock player movement
obj_plr.canMove=0

scanText()