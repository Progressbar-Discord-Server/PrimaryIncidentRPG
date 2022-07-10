/// @description Initialization

//==============================================
// READ DOCUMENTATION ON DIALOGS FOR MORE INFO!
//==============================================

defineDialogs()

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
option_border = 10;
charexp=0
selectionPrompt=0
selectedOption=0
opt1=""
opt2=""

//lock player movement
obj_plr.canMove=0

scanText()