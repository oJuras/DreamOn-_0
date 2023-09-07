luz_validada = false
if image_index == 1 {
	image_index = 0
	luz = true
	Obj_light.visible = true
	Obj_floor.visible = true
} else {
		image_index = 1
		luz=false
		Obj_light.visible = false
		Obj_floor.visible = false
	}