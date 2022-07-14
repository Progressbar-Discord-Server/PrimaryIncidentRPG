function find_longest_string_length_2d(arr, ind){
	//arr - the array to look for
	//ind - the index inside the 2d array
	var newarr = [];
	for (var i = 0; i < array_length(arr); i++;) {
		array_push(newarr,arr[i][ind]);
	}
	
	var numberarr = []
	for (var j = 0; j < array_length(newarr); j++;) {
		array_push(numberarr,string_length(newarr[j]));
	}
	array_sort(numberarr,false);
	
	return numberarr[0];
}

function wrapAround(val,min,max) {
	var newval = val;
	
	if val > max {
		newval = min;
	} else if val < min {
		newval = max
	}
	
	return newval;
}

function draw_rectangle_outline(x1, y1, x2, y2, color, outline_color, outline_width){
	draw_set_color(color)
	draw_rectangle(x1, y1, x2, y2, false)
	
	draw_set_color(outline_color)
	draw_rectangle(x1, y1, x2, y2, true)
	
	var i=0
	
	//i have to use a do loop here
	do{
		i++
		draw_rectangle(x1-i,y1-i,x2+i,y2+i,true)
	}until(i = outline_width)
	draw_set_color(c_white)
}

function getLocal(rawString){
	ini_open("res/strings.ini") //Open strings file
	
	var str = ini_read_string("strings", rawString, rawString) //Look for the listing for the rawString and replace it with the proper text. If it isn't found show rawString instead as a fallback
	
	ini_close() //Close the strings file.
	
	return str //Return the defined string.
}