// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getLocal(rawString){
	var str
	ini_open("res/locale.ini")
	
	str = ini_read_string("strings", rawString, rawString)
	
	ini_close()
	return str
}