//WARNING: The code is very long.

function punctuationCheck(){
	return string_char_at(targText, textCharPos) = "." || string_char_at(targText, textCharPos) = "," || string_char_at(targText, textCharPos) = "!" || string_char_at(targText, textCharPos) = "?" || string_char_at(targText, textCharPos) = ":" || string_char_at(targText, textCharPos) = ";";
}