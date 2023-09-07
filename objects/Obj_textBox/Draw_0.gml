draw_text(global.PosX+100,global.PosY,"Nome:  " + global.Nome);
draw_text(global.PosX+100,global.PosY+20,"Idade: " + global.Idade);
draw_text(global.PosX+100,global.PosY+40,"Medo de: " + global.Medo)
draw_text(global.PosX+100,global.PosY+60,"Gosta de: " + global.Gosta)
draw_text(global.PosX+100,global.PosY+80,"Odeia: " + global.Odeia)
draw_set_halign(50)
if global.npc == true {
	draw_flush()
	draw_text(global.PosX+100,global.PosY,"Concluido")
}
