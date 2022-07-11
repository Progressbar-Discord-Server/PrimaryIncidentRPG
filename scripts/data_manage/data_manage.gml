function loadData(){
	if file_exists("savedata.sav"){
		var _buffer = buffer_load("savedata.sav")
		var _string = buffer_read(_buffer, buffer_string)
		buffer_delete(_buffer)
		
		var _loadData = json_parse(_string)
		
		global.saveData = _loadData
		show_debug_message(global.saveData.saveCreatedVersion)
		
		show_debug_message("===Loaded!===")
	} else {
		show_debug_message("SAVE DOES NOT EXIST")	
	}
}

function saveData(){
	global.saveData.currentRoom = room
	
	var _string = json_stringify(global.saveData)
	var _buffer = buffer_create(string_byte_length(_string)+1, buffer_fixed, 1)
	buffer_write(_buffer, buffer_string, _string)
	buffer_save(_buffer, "savedata.sav")
	show_debug_message("===Saved!===")
}

function deleteData(){
	file_delete("savedata.sav")	
	show_debug_message("===Deleted!===")
}

function getSaveInfo(){
	if file_exists("savedata.sav"){
		var _buffer = buffer_load("savedata.sav")
		var _string = buffer_read(_buffer, buffer_string)
		buffer_delete(_buffer)
		
		var _loadData = json_parse(_string)
		
		return "Save Exists!"
		
	} else {
		return "Save Data does not exist!!!"	
	}
}