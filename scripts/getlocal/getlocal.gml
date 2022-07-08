function getLocal(rawString){
	ini_open("res/locale.ini") //Open strings file
	
	var str = ini_read_string("strings", rawString, rawString) //Look for the listing for the rawString and replace it with the proper text. If it isn't found show rawString instead as a fallback
	
	ini_close() //Close the strings file.
	
	return str //Return the defined string.
}