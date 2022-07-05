/// @description

//Define dialogs here in an array
#region Dialog Array
dialogs = [
	[
		[DIAG_TYPE_TEXT, "This is text!", DIAG_CHAR_PLACEHOLDER, DIAG_FACE_ANNOYED, 5, function(){show_debug_message("A")}],
		[DIAG_TYPE_CODEONLY, function(){show_debug_message("Code only event ooo")}],
		[DIAG_TYPE_TEXT, "This is even more text!", DIAG_CHAR_PLACEHOLDER, DIAG_FACE_ANNOYED, 5, function(){show_debug_message("B")}],
		[DIAG_TYPE_TEXT, "This is the last text ever!", DIAG_CHAR_PLACEHOLDER, DIAG_FACE_ANNOYED, 5, function(){show_debug_message("C")}]
	]
]
#endregion

text = ""
dtextCharPos = 1
textArrayPos=0

scanText()