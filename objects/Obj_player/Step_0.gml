
if (side == "left")
	{
		image_xscale = -1;
	}
	if (side == "right")
	{
		image_xscale = 1;
	}

	if(keyboard_check(ord("A")) ^ keyboard_check(ord("D")))
	{
		movingSide = true;
	}else{
		movingSide = false;
	}

	if(keyboard_check(ord("W")) | keyboard_check(ord("S")))
	{
		moving=true;
	}else{
		moving=false;
	}

	if (keyboard_check(ord("A")) && !place_meeting(x-baseSpeed-increaseSpeed,y,Obj_InviBarrier) && !keyboard_check(ord("D")))
	{
		side = "left";
	    x = x - baseSpeed;
		if(!place_meeting(x-increaseSpeed,y,Obj_InviBarrier))
		{
			x = x - increaseSpeed;
		}
	}
	if (keyboard_check(ord("D")) && !place_meeting(x+baseSpeed+increaseSpeed,y,Obj_InviBarrier) && !keyboard_check(ord("A")))
	{
		side = "right";
	    x = x + baseSpeed;
		if(!place_meeting(x+increaseSpeed,y,Obj_InviBarrier))
		{
			x = x + increaseSpeed;
		}
	}
	if (keyboard_check(ord("W")) && !place_meeting(x,y-baseSpeed,Obj_InviBarrier) && !keyboard_check(ord("S")))
	{
		lastVerticalMove = "up";
	    y = y - baseSpeed;
		if(!place_meeting(x,y-increaseSpeed,Obj_InviBarrier))
		{
			y = y - increaseSpeed;
		}	
	}
	if (keyboard_check(ord("S")) && !place_meeting(x,y+baseSpeed,Obj_InviBarrier) && !keyboard_check(ord("W")))
	{
		lastVerticalMove = "down";
	    y = y + baseSpeed;
		if(!place_meeting(x,y+increaseSpeed,Obj_InviBarrier))
		{
			y = y + increaseSpeed;
		}		
	}
	
	var _hor = keyboard_check(vk_right) - keyboard_check(vk_left);
	var _ver = keyboard_check(vk_down) - keyboard_check(vk_up);

	var _viewX = camera_get_view_x(view_camera[0]);
	var _viewY = camera_get_view_y(view_camera[0]);
	var _viewW = camera_get_view_width(view_camera[0]);
	var _viewH = camera_get_view_height(view_camera[0]);
	var _gotoX = x + (_hor * 200) - (_viewW * 0.5);
	var _gotoY = y + (_ver * 150) - (_viewH * 0.5);

	var _newX = lerp(_viewX, _gotoX, 0.1);
	var _newY = lerp(_viewY, _gotoY, 0.1);

	camera_set_view_pos(view_camera[0], _newX, _newY);
	camera_set_view_size(view_camera[0],1000,600)
	

if(movingSide)
{
	image_index = (max(7, image_index % 9));
	//sprite_index = Spr_Player_Side;
}else if(lastVerticalMove == "down")
{
	image_index = (max(1, image_index % 3));
	//sprite_index = Spr_Player_Down;
}else if(lastVerticalMove == "up")
{
	image_index = (max(4, image_index % 6));
	//sprite_index = Spr_Player_Up;
}
