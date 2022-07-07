function startDialog(dialog_id){
	if !instance_exists(obj_dialogRender) {
		if !layer_exists(layer_get_id("Dialog")) layer_create(-1000,"Dialog")
		instance_create_layer(16, 352, layer_get_id("Dialog"), obj_dialogRender, {
			dialogId: dialog_id
		})
	}
}

///DO NOT CALL THIS FUNCTION!!!!
function scanText(){
	if(textArrayPos > array_length(dialogs[dialogId])-1) instance_destroy() else {
		targText=""
		textCharPos = 1
		char=0
		charexp=0
		typist = scribble_typist();
		typist.character_delay_add(".", 100);
		typist.character_delay_add("!", 100);
		typist.character_delay_add("?", 100);
		typist.character_delay_add(",", 100);
		typist.sound_per_char([snd_speak_gen],1.0,1.0)
		if dialogs[dialogId,textArrayPos][0] == DIAG_TYPE_CODE{
			dialogs[dialogId,textArrayPos][1]()
			textArrayPos++
			scanText()
		} else {
			targText = dialogs[dialogId,textArrayPos][1]
			char = dialogs[dialogId,textArrayPos][2]
			charexp = dialogs[dialogId,textArrayPos][3]
			typist.in(dialogs[dialogId,textArrayPos][4],0); // 1st argument is speed (the higher the faster it is), 2nd argument is how the text fades in
			textArrayPos++
		}
	}	
}