if global.Medo == "escuro" {
	if Obj_lamp.luz == false && Obj_lamp.luz_validada == false && oneTime == false{
		if Obj_lamp.luz_alterada == true {medo--}
		medo+=4
		Obj_lamp.luz_alterada = true
		Obj_lamp.luz_validada = true
		oneTime = true;
	} 
}

if global.Odeia == "gatos" {
	if(collision_circle(x, y, 500, Obj_cat, false, false)){
		if Obj_cat.gato_validado == false {
			medo++
			Obj_cat.gato_validado = true
		} 
	}
}

if global.Gosta == "gatos" {
	if(collision_circle(x, y, 500, Obj_cat, false, false)){
		if Obj_cat.gato_validado == false {
			felicidade++
			Obj_cat.gato_validado = true
		} 
	}
}

if global.Medo == "gatos" {
	if(collision_circle(x, y, 500, Obj_cat, false, false)){
		if Obj_cat.gato_validado == false {
			medo+=2
			Obj_cat.gato_validado = true
		}
	}
}


if global.Medo == "ratos" {
	if(collision_circle(x, y, 500, Obj_rat, false, false)){
		if Obj_rat.rato_validado == false {
			medo+=2
			Obj_rat.rato_validado = true
		}
	}
}

if global.Odeia == "ratos" {
	if(collision_circle(x, y, 500, Obj_rat, false, false)){
		if Obj_rat.rato_validado == false {
			medo++
			Obj_rat.rato_validado = true
		}
	}
}

if global.Gosta == "ratos" {
	if(collision_circle(x, y, 500, Obj_rat, false, false)){
		if Obj_rat.rato_validado == false {
			felicidade++
			Obj_rat.rato_validado = true
		} 
	}
}

if global.Medo == "passaros" {
	if(collision_circle(x, y, 500, Obj_bird, false, false)){
		if Obj_bird.bird_validado == false {
			medo+=2
			Obj_bird.bird_validado = true
		}
	}
}

if global.Odeia == "passaros" {
	if(collision_circle(x, y, 500, Obj_bird, false, false)){
		if Obj_bird.bird_validado == false {
			medo++
			Obj_bird.bird_validado = true
		}
	}
}

if global.Gosta == "passaros" {
	if(collision_circle(x, y, 500, Obj_bird, false, false)){
		if Obj_bird.bird_validado == false {
			felicidade++
			Obj_bird.bird_validado = true
		} 
	}
}
global.status =+ medo
if global.status < 0 {global.status = 0}