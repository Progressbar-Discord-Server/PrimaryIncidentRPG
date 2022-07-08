/// @description Initialization

//==============================================
// READ DOCUMENTATION ON DIALOGS FOR MORE INFO!
//==============================================

//Define dialogs here in an array
#region Dialog Array
dialogs = [
	[
		[DIAG_TYPE_TEXT, "[wave][rainbow]Hello, World![/rainbow][/wave] This is a test of the textbox! 0.5 Is the normal speed of a textbox, but you can change it to be...", DIAG_CHAR_PLACEHOLDER, DIAG_FACE_HAPPY, 0.5],
		[DIAG_TYPE_TEXT, "...super slow...", DIAG_CHAR_PLACEHOLDER, DIAG_FACE_NEUTRAL, 0.1],
		[DIAG_TYPE_TEXT, "...or super fast!", DIAG_CHAR_PLACEHOLDER, DIAG_FACE_SAD, 2],
		[DIAG_TYPE_CODE, function(){show_debug_message("[WARN] The British are Coming!")}],
		[DIAG_TYPE_TEXT, "And if you check the console, there should be a message!\n\nAnyway, the next page is just Lorem Ipsum with a speed of 3. Enjoy!", DIAG_CHAR_PLACEHOLDER, DIAG_FACE_ANNOYED, 0.5],
		[DIAG_TYPE_TEXT, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris condimentum vulputate velit eget aliquam. Phasellus ornare accumsan purus a mollis. Donec id volutpat elit. Fusce pellentesque enim et nulla eleifend, ut ultrices lorem facilisis. Fusce vestibulum tincidunt tempor. Aenean ut eros arcu. In eget massa dictum, vehicula purus faucibus, pretium metus. Vestibulum vulputate consequat diam, vitae imperdiet erat fermentum sed. Curabitur maximus enim quis erat congue, nec tempus ante luctus. Donec porta, mi at commodo hendrerit, nisl urna mattis nibh, id tincidunt neque tortor sed purus. Pellentesque mattis sapien eu rutrum pulvinar. Ut eu dapibus metus. Fusce fringilla elit enim, in fringilla felis feugiat eget. Quisque ac massa non ipsum venenatis malesuada. Nullam in pharetra felis, sed dapibus turpis.", DIAG_CHAR_PLACEHOLDER, DIAG_FACE_ANGRY, 3]
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

scanText()