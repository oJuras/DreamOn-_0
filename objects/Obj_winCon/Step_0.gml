if(global.oneIsDead && global.twoIsDead && global.threeIsDead && global.fourIsDead && oneRun){
	
	global.PosX = Obj_player.x
	global.PosY = Obj_player.y
	instance_create_depth(Obj_player.x, Obj_player.y, depth - 1, Obj_textBoxEnding);
	instance_create_depth(Obj_player.x-35, Obj_player.y - 138, depth - 1, Obj_textLayout);
	oneRun = false;
	Obj_player.canMove = false;
}