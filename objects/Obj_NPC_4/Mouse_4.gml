instance_destroy(Obj_Bno)
instance_destroy(Obj_Byes)
instance_destroy(Obj_msg)
instance_destroy(Obj_layoutS)
global.player_posX = Obj_player.x
global.player_posY = Obj_player.y
instance_create_depth(room_width/2,room_height/2,depth -1, Obj_msg)
instance_create_depth(Obj_player.x-100,Obj_player.y+130,depth -1,Obj_Byes)
instance_create_depth(Obj_player.x+90,Obj_player.y+130,depth -1,Obj_Bno)
instance_create_depth(Obj_player.x,Obj_player.y-64,depth -1,Obj_layoutS)
 
Obj_player.baseSpeed = 0; 
instance_destroy(Obj_textBox)
instance_destroy(Obj_textLayout)
