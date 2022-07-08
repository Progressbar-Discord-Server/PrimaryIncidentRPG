function getLocal(rawString){
	var str
	ini_open("res/locale.ini")
	
	str = ini_read_string("strings", rawString, rawString)
	
	ini_close()
	return str
}