/// @description Define more battle params

//Define base struct
battle = {
	plrA:{
		char: persist.battleConf.plrA,
		charName: "",
		charSpr: undefined,
		HP: 1,
		baseAttack: 1,
		abilities:[]
	},
	plrB:{
		char: persist.battleConf.plrB,
		charName: "",
		charSpr: undefined,
		HP: 1,
		baseAttack: 1,
		abilities:[]
	},
	against:{
		char: persist.battleConf.against,
		HP: 1,
		charName: "",
		charSpr: undefined,
		HP: 1,
		baseAttack: 1,
		abilities:[]
	}
}

var currvar = battle.plrA
var targvar = "plrA"

//Load configurations
while targvar != "DONE" {
	switch(currvar.char){
		case DIAG_CHAR_LOLGUY: {
			currvar.charName = "Lol Guy"
			currvar.charSpr = spr_placeholder_battle
			currvar.HP = 140
			currvar.baseAttack = 124
			currvar.abilities = [
				{
					name: "wowie",
					desc: "youou do damnage",
					winPercent: 85,
					damage: 21,
					winMSG: "u did the damng",
					failMSG: "u failed lolol"
				}
			]
		} break;
		default: {
			currvar.charName = "Template"
			currvar.charSpr = spr_placeholder_battle
			currvar.HP = 1
			currvar.baseAttack = 124
			currvar.abilities = [
				{
					name: "NOTHING",
					desc: "YOU DO NOTHING",
					winPercent: 0,
					damage: 0,
					winMSG: "hacks",
					failMSG: "exactly."
				}
			]
		} break;
	}
	switch targvar{
		case "plrA": targvar = "plrB"; currvar = battle.plrB break;
		case "plrB": targvar = "against" currvar = battle.against break;
		case "against": targvar = "DONE" break;
	}
}