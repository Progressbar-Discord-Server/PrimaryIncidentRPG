function startDialog(dialog_id){
	if !layer_exists(layer_get_id("Dialog")) layer_create(-1000,"Dialog")
	instance_create_layer(32, 352, layer_get_id("Dialog"), obj_dialogRender, {
		dialogId: dialog_id
	})
}

///DO NOT CALL THIS FUNCTION!!!!
function scanText(){
	if(textArrayPos > array_length(dialogs[0])-1) instance_destroy() else {
		if dialogs[0,textArrayPos][0] == DIAG_TYPE_CODEONLY{
			dialogs[0,textArrayPos][1]()
			textArrayPos++
			scanText()
		} else {
			text = dialogs[0,textArrayPos][1]
			textArrayPos++
		}
	}	
}