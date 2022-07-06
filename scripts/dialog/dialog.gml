function startDialog(dialog_id){
	if !layer_exists(layer_get_id("Dialog")) layer_create(-1000,"Dialog")
	instance_create_layer(32, 352, layer_get_id("Dialog"), obj_dialogRender, {
		dialogId: dialog_id
	})
}

///DO NOT CALL THIS FUNCTION!!!!
function scanText(){
	if(textArrayPos > array_length(dialogs[dialogId])-1) instance_destroy() else {
		if dialogs[dialogId,textArrayPos][0] == DIAG_TYPE_CODE{
			dialogs[dialogId,textArrayPos][1]()
			textArrayPos++
			scanText()
		} else {
			text = dialogs[dialogId,textArrayPos][1]
			textArrayPos++
		}
	}	
}