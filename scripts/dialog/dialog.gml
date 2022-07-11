//For more information on editing Dialogs check the wiki!
//https://github.com/Progressbar-Discord-Server/PrimaryIncidentRPG/wiki/The-Dialogue-System

function defineDialogs() {
	dialogs = [
	[
		[DIAG_TYPE_TEXT, "[wave][rainbow]Hello, World![/rainbow][/wave]", DIAG_CHAR_PLACEHOLDER, DIAG_FACE_HAPPY, 0.5],
		[DIAG_TYPE_CODE, function(){show_debug_message("[WARN] The British are Coming!")}],
		[DIAG_TYPE_CHOICE, "Pick one!", DIAG_CHAR_PLACEHOLDER, DIAG_FACE_ANNOYED, 0.5, "Opt A", 0, "Opt B", 1],
	],
	[
		[DIAG_TYPE_TEXT, "[shake]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris condimentum vulputate velit eget aliquam. Phasellus ornare accumsan purus a mollis. Donec id volutpat elit. Fusce pellentesque enim et nulla eleifend, ut ultrices lorem facilisis. Fusce vestibulum tincidunt tempor. Aenean ut eros arcu. In eget massa dictum, vehicula purus faucibus, pretium metus. Vestibulum vulputate consequat diam, vitae imperdiet erat fermentum sed. Curabitur maximus enim quis erat congue, nec tempus ante luctus. Donec porta, mi at commodo hendrerit, nisl urna mattis nibh, id tincidunt neque tortor sed purus. Pellentesque mattis sapien eu rutrum pulvinar. Ut eu dapibus metus. Fusce fringilla elit enim, in fringilla felis feugiat eget. Quisque ac massa non ipsum venenatis malesuada. Nullam in pharetra felis, sed dapibus turpis.[/shake]", DIAG_CHAR_INFO, DIAG_FACE_ANNOYED, 0.1]
	],
	//Save Dialogs
	[ //Initial Dialog
		[DIAG_TYPE_CHOICE, getLocal("str_save_0"), DIAG_CHAR_INFO, DIAG_FACE_NEUTRAL, 0.5, getLocal("str_yes"), 3, getLocal("str_no"), 4]
	],
	[//Yes
		[DIAG_TYPE_CODE, function(){saveData();}],
		[DIAG_TYPE_TEXT, getLocal("str_save_1"), DIAG_CHAR_INFO, DIAG_FACE_NEUTRAL, 0.5]
	],
	[]//No - Show nothing.
]	
}

/*
Do not edit anything below here unless you know what you are doing.
*/

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
		opt1=""
		opt2=""
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
			if dialogs[dialogId,textArrayPos][0] == DIAG_TYPE_CHOICE {
				selectionPrompt=1
				opt1 = dialogs[dialogId,textArrayPos][5]
				opt2 = dialogs[dialogId,textArrayPos][7]
			}
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