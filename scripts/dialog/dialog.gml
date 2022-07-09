function startDialog(dialog_id){
	if !instance_exists(obj_dialogRender) { //If the dialog box doesn't exist, run this.
		if !layer_exists(layer_get_id("Dialog")) layer_create(-1000,"Dialog") //If the "Dialog" layer doesn't exist make it!!!
		instance_create_layer(16, 352, layer_get_id("Dialog"), obj_dialogRender, {
			dialogId: dialog_id
		}) //Create the dialog render on the "Dialog" layer whiel defining dialogId to dialog_id
	}
}

///DO NOT CALL THIS FUNCTION BY ITSELF!!!!
function scanText(){
	if(textArrayPos > array_length(dialogs[dialogId])-1) instance_destroy() else {
		targText=""
		textCharPos = 1
		char=0
		charexp=0
		selectionPrompt=0
		selectedOption=0
		typist = scribble_typist();
		typist.character_delay_add(".", 100);
		typist.character_delay_add("!", 100);
		typist.character_delay_add("?", 100);
		typist.character_delay_add(",", 100);
		if dialogs[dialogId,textArrayPos][0] == DIAG_TYPE_CODE{
			dialogs[dialogId,textArrayPos][1]()
			textArrayPos++
			scanText()
		} else {
			if dialogs[dialogId,textArrayPos][0] == DIAG_TYPE_CHOICE selectionPrompt=1
			targText = dialogs[dialogId,textArrayPos][1]
			char = dialogs[dialogId,textArrayPos][2]
			charexp = dialogs[dialogId,textArrayPos][3]
			
			switch(char){
				case DIAG_CHAR_LOLGUY: typist.sound_per_char([snd_speak_lolguy],1.0,1.0) break;
				default: typist.sound_per_char([snd_speak_gen],1.0,1.0) break;	
			}
			
			typist.in(dialogs[dialogId,textArrayPos][4],0); // 1st argument is speed (the higher the faster it is), 2nd argument is how the text fades in
			textArrayPos++
		}
	}	
}