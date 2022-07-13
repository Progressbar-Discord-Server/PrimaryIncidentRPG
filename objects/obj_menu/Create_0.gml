/// @description Variables

// Options and stuff
options = [
	["Inventory", noone],
	["Settings", [
			["Fullscreen",optionscript_fullscreen]
		]
	],
	["Party", noone]
];

pos = 0

//More stuff
txt_border = 14;
txt_sep = 26;
offset_x = 32;
offset_y = 32;

width = 13.5*find_longest_string_length_2d(options,0) + (txt_border*2);
height = (txt_sep*array_length(options)) + (txt_border*2);