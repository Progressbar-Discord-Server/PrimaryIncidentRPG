/*
	Macros are hard coded values that cannot be changed at run time or via editors like UndertaleModTool.
	Macros are better than normal variables because they an be defined without even calling them so they can live in a file like this.
*/

#macro version "0.0.1-dev" //HAS to be a string!!!
#macro buildDate date_date_string(GM_build_date) + " " + date_time_string(GM_build_date)
//Shortcuts
#macro player obj_plr //shortcut to obj_plr

//Dialog - Char
#macro DIAG_CHAR_PLACEHOLDER -1
#macro DIAG_CHAR_UNKNOWN 0
#macro DIAG_CHAR_LOLGUY 1
#macro DIAG_CHAR_CHRIS 2
#macro DIAG_CHAR_LEXI 3
#macro DIAG_CHAR_BURNING 4
#macro DIAG_CHAR_INFERNOHOT 5
#macro DIAG_CHAR_INFO 99

//Dialog - Expressions
#macro DIAG_FACE_NEUTRAL 0
#macro DIAG_FACE_HAPPY 1
#macro DIAG_FACE_SAD 2
#macro DIAG_FACE_CHEEKY 3
#macro DIAG_FACE_ANNOYED 4
#macro DIAG_FACE_SCARED 5
#macro DIAG_FACE_ANGRY 6
#macro DIAG_FACE_WORRIED 7

//Dialog - Types
#macro DIAG_TYPE_TEXT 0
#macro DIAG_TYPE_CHOICE 1
#macro DIAG_TYPE_CODE 2