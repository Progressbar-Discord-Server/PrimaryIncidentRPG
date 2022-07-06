function startDialog(dialog_id){
	if !instance_exists(obj_dialogRender) {
		if !layer_exists(layer_get_id("Dialog")) layer_create(-1000,"Dialog")
		instance_create_layer(32, 352, layer_get_id("Dialog"), obj_dialogRender, {
			dialogId: dialog_id
		})
	}
}

///DO NOT CALL THIS FUNCTION!!!!
function scanText(){
	if(textArrayPos > array_length(dialogs[dialogId])-1) instance_destroy() else {
		text = ""
		targText=""
		textCharPos = 1
		textWait=[0,0] //First variable is how long to wait, 2nt variable is dynamically altered as the wait time
		char=0
		charexp=0
		if dialogs[dialogId,textArrayPos][0] == DIAG_TYPE_CODE{
			dialogs[dialogId,textArrayPos][1]()
			textArrayPos++
			scanText()
		} else {
			targText = dialogs[dialogId,textArrayPos][1]
			char = dialogs[dialogId,textArrayPos][2]
			charexp = dialogs[dialogId,textArrayPos][3]
			textWait[0] = dialogs[dialogId,textArrayPos][4]
			textWait[1] = dialogs[dialogId,textArrayPos][4]
			textArrayPos++
		}
	}	
}