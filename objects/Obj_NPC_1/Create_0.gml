Gosta = "gatos"
Odeia = "passaros"
Medo = "escuro"
Nome = "Manuel Gomes"
Idade = "30"
meta = 3
global.npc1 = "global.npc1"

frame = 0;

walkSide = [300, 400, 550, 650]
runnerUp = true;
startWalking = false;
timer = room_speed * 2;

if(global.oneIsDead){
	instance_destroy()
}