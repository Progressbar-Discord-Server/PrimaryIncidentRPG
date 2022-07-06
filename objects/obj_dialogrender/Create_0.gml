/// @description Initialization

//==============================================
// READ DOCUMENTATION ON DIALOGS FOR MORE INFO!
//==============================================

//Define dialogs here in an array
#region Dialog Array
dialogs = [
	[
		[DIAG_TYPE_TEXT, "Hello, World! This is a test of the textbox! 5 Is the normal speed of a textbox, but you can change it to be...", DIAG_CHAR_PLACEHOLDER, DIAG_FACE_NEUTRAL, 5],
		[DIAG_TYPE_TEXT, "...super slow...", DIAG_CHAR_PLACEHOLDER, DIAG_FACE_NEUTRAL, 15],
		[DIAG_TYPE_TEXT, "...or super fast!", DIAG_CHAR_PLACEHOLDER, DIAG_FACE_NEUTRAL, 2],
		[DIAG_TYPE_CODE, function(){show_debug_message("[WARN] The British are Coming!")}],
		[DIAG_TYPE_TEXT, "And if you check the console, there should be a message!\n\nAnyway, the next page is just Lorem Ipsum with a delay of 1. Enjoy!", DIAG_CHAR_PLACEHOLDER, DIAG_FACE_ANNOYED, 5],
		[DIAG_TYPE_TEXT, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris condimentum vulputate velit eget aliquam. Phasellus ornare accumsan purus a mollis. Donec id volutpat elit. Fusce pellentesque enim et nulla eleifend, ut ultrices lorem facilisis. Fusce vestibulum tincidunt tempor. Aenean ut eros arcu. In eget massa dictum, vehicula purus faucibus, pretium metus. Vestibulum vulputate consequat diam, vitae imperdiet erat fermentum sed. Curabitur maximus enim quis erat congue, nec tempus ante luctus. Donec porta, mi at commodo hendrerit, nisl urna mattis nibh, id tincidunt neque tortor sed purus. Pellentesque mattis sapien eu rutrum pulvinar. Ut eu dapibus metus. Fusce fringilla elit enim, in fringilla felis feugiat eget. Quisque ac massa non ipsum venenatis malesuada. Nullam in pharetra felis, sed dapibus turpis.", DIAG_CHAR_PLACEHOLDER, DIAG_FACE_ANNOYED, 1]
	],
	[
		[DIAG_TYPE_TEXT, "ur sus!", DIAG_CHAR_PLACEHOLDER, DIAG_FACE_NEUTRAL, 5]
	]
]
#endregion

//Do not modifiy these.
text = ""
targText=""
textCharPos = 1
border = 10;
char_border = 8;
width = 470-(border*2)
textArrayPos=0
textWait=[0,0] //First variable is how long to wait, 2nt variable is dynamically altered as the wait time
pauseTime = 20;
pauseTimer = 0;
name_box_offset = 32 * 5;
char=0
charexp=0

scanText()