if global.status >= global.meta {
	if global.npc == "global.npc1"{
		global.oneIsDead = true;
	}
	
	if global.npc == "global.npc2"{
		global.twoIsDead = true;
	}
	
	if global.npc == "global.npc3"{
		global.threeIsDead = true;
	}
	
	if global.npc == "global.npc4"{
		global.fourIsDead = true;
	}
	
	room_goto(gameStart)

}