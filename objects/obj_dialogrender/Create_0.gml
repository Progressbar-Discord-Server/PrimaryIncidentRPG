/// @description Initialization

//==============================================
// READ DOCUMENTATION ON DIALOGS FOR MORE INFO!
//==============================================

//Define dialogs here in an array
#region Dialog Array
dialogs = [
	[
		[DIAG_TYPE_TEXT, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris condimentum vulputate velit eget aliquam. Phasellus ornare accumsan purus a mollis. Donec id volutpat elit. Fusce pellentesque enim et nulla eleifend, ut ultrices lorem facilisis. Fusce vestibulum tincidunt tempor. Aenean ut eros arcu. In eget massa dictum, vehicula purus faucibus, pretium metus. Vestibulum vulputate consequat diam, vitae imperdiet erat fermentum sed. Curabitur maximus enim quis erat congue, nec tempus ante luctus. Donec porta, mi at commodo hendrerit, nisl urna mattis nibh, id tincidunt neque tortor sed purus. Pellentesque mattis sapien eu rutrum pulvinar. Ut eu dapibus metus. Fusce fringilla elit enim, in fringilla felis feugiat eget. Quisque ac massa non ipsum venenatis malesuada. Nullam in pharetra felis, sed dapibus turpis.", DIAG_CHAR_PLACEHOLDER, DIAG_FACE_ANNOYED, 5],
		[DIAG_TYPE_CODE, function(){show_debug_message("Code only event ooo")}],
		[DIAG_TYPE_TEXT, "This is even more text!", DIAG_CHAR_PLACEHOLDER, DIAG_FACE_ANNOYED, 5],
		[DIAG_TYPE_TEXT, "This is the last text ever!", DIAG_CHAR_PLACEHOLDER, DIAG_FACE_ANNOYED, 5]
	]
]
#endregion

//Do not modifiy these.
text = ""
targText=""
textCharPos = 1
textArrayPos=0
textWait=[0,0] //First variable is how long to wait, 2nt variable is dynamically altered as the wait time
char=0
charexp=0

scanText()