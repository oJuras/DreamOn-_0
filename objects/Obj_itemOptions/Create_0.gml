firstRun = true;

function dragAndDrop(slot){

	switch(slot){
		case 1:
			spriteToKnow = global.item1;
			global.item1 = "None";
		break;
		
		case 2:
			spriteToKnow = global.item2;
			global.item2 = "None";
		break;
		
		case 3:
			spriteToKnow = global.item3;
			global.item3 = "None";
		break;
	}
	
	switch(spriteToKnow){
		case Spr_rat:
			instance_create_depth(Obj_player.x, Obj_player.y, -1, Obj_rat)
		break;
		
		case Spr_cat:
			instance_create_depth(Obj_player.x, Obj_player.y, -1, Obj_cat)
		break;
		
		case Spr_bird:
			instance_create_depth(Obj_player.x, Obj_player.y, -1, Obj_bird)
		break;
	
	}

}