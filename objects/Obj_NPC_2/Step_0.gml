if (timer > 0) {timer--;}

if (timer == 0)
{
	define = walkSide[random_range(0, 2)];
	startWalking = true;
	timer = room_speed * 2;
}

if(startWalking){
	if(x < define){
		x+=3
		image_index = (max(4, image_index % 7));
	}
	if(x > define){
		x-=3
		image_index = (max(8, image_index % 11));
	}
	if(x == define){
		startWalking = false;
		image_index = (max(0, image_index % 3));
	}
}