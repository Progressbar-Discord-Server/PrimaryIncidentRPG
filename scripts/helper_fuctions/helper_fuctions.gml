//arr - the array to look for
//ind - the index inside the 2d array

function find_longest_string_length_2d(arr, ind){
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

function loop(val,min,max) {
	var newval = val;
	
	if val > max {
		newval = min;
	} else if val < min {
		newval = max
	}
	
	return newval;
}