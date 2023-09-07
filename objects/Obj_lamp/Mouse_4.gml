luz_validada = false
if image_index == 1 {
	image_index = 0
	luz = true
	Obj_luz.visible = true
	Obj_chao.visible = true
} else {
		image_index = 1
		luz=false
		Obj_luz.visible = false
		Obj_chao.visible = false
	}