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