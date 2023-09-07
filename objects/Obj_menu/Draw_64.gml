draw_set_font(Font_8bit);

draw_set_color(c_white);

var dist = 60;

var gui_height = display_get_gui_height();
var gui_width = display_get_gui_width();

var x1 = gui_width/2;
var y1 = gui_height/2;

var m_x = device_mouse_x_to_gui(0)
var m_y = device_mouse_y_to_gui(0)

for(var i = 0; i < op_max; i++){

	var y2 =  y1 + (dist * i);
	var x2 =  x1 + (dist * i);

	draw_set_halign(fa_center)

	var string_w = string_width(menuOptions[i]);
	var string_h = string_height(menuOptions[i]);
	
	if(point_in_rectangle(m_x, m_y, (x2/2 - string_w/2)-40, (y2 - string_h/2)-20, (x2/2 + string_w/2)+90, (y2 + string_h/2)+20)){
		index = i;
		if(mouse_check_button_pressed(mb_left)){
			if(index == 0){
				room_goto(gameStart);
			}

			if(index == 1){
				game_end()	
			}
		}
	}
		
	if(index == i){
		draw_set_color(c_purple)
	}else{
		draw_set_color(c_white)
	}

	if(i == 0){
		draw_text(x2/2 - 30, y1 + (dist * i), menuOptions[i]);
	}else if(i == 1){
		draw_text(x2/2 - 63, y1 + (dist * i), menuOptions[i]);	
	}
}

draw_set_font(-1);
