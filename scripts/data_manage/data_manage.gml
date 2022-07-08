function loadGame(){
	
}

function saveData(){
	//var _saveData = array_create(0)
	
	var _saveData = {
		hello: true
		coins: global.Coins
	}
	
	var _string = json_stringify(_saveData)
	var _buffer = buffer_create(string_byte_length(_string)+1, buffer_fixed, 1)
	buffer_write(_buffer, buffer_string, _string)
	buffer_save(_buffer, "savedata.lol")
}