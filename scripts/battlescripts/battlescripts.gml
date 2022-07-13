function startBattle(plrA, plrB, against){
	persist.battleConf.plrA = plrA
	persist.battleConf.plrB = plrB
	persist.battleConf.against = against
	persist.battleConf.returnRoom = room
	room_goto(rm_battle)
}