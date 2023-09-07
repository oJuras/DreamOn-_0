draw_set_colour(c_purple);

var m_x = device_mouse_x_to_gui(0)
var m_y = device_mouse_y_to_gui(0)

draw_rectangle(25, room_height/30, 100, room_height/30+75, true);
if(point_in_rectangle(m_x, m_y, 25, room_height/30, 100, room_height/30+75)){
	if(mouse_check_button_pressed(mb_left)){
		if(room != dream_room){
			global.item1 = "None";
			draw_flush();
		}else{
			dragAndDrop(1);
		}
	}
}
if(global.item1 != "None"){
	draw_sprite(global.item1, 1, 25, room_height/30);
}

draw_rectangle(105, room_height/30, 180, room_height/30+75, true);
if(point_in_rectangle(m_x, m_y, 105, room_height/30, 180, room_height/30+75)){
	if(mouse_check_button_pressed(mb_left)){
		if(room != dream_room){
			global.item2 = "None";
			draw_flush();
		}else{
			dragAndDrop(2);
		}
	
	}
}
if(global.item2 != "None"){
	draw_sprite(global.item2, 1, 105, room_height/30);
}

draw_rectangle(185, room_height/30, 260, room_height/30+75, true)
if(point_in_rectangle(m_x, m_y, 185, room_height/30, 260, room_height/30+75)){
	if(mouse_check_button_pressed(mb_left)){
		if(room != dream_room){
			global.item3 = "None";
			draw_flush();
		}else{
			dragAndDrop(3);
		}
	
	}
}
if(global.item3 != "None"){
	draw_sprite(global.item3, 1, 185, room_height/30);
}
