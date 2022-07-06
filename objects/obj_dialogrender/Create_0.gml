/// @description Initialization

//==============================================
// READ DOCUMENTATION ON DIALOGS FOR MORE INFO!
//==============================================

//Define dialogs here in an array
#region Dialog Array
dialogs = [
	[
		[DIAG_TYPE_TEXT, "This is text!", DIAG_CHAR_PLACEHOLDER, DIAG_FACE_ANNOYED, 5],
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