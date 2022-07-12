/// @description Define stage and shit

//Define variables locally
plrA = persist.battleConf.plrA
plrB = persist.battleConf.plrB
against = persist.battleConf.against

//Define base struct (LONG!)
battle = {
	stage:{}
	plrA:{
		char: persist.battleConf.plrA,
		charName: "",
		charSpr: undefined,
		HP: 1,
		attacks:{
			1:{
				name: undefined,
				desc: undefined,
				winPercent: undefined,
				damage: undefined,
				winMSG: "",
				failMSG: ""
			},
			2:{
				name: undefined,
				desc: undefined,
				winPercent: undefined,
				damage: undefined,
				winMSG: "",
				failMSG: ""
			},
			3:{
				name: undefined,
				desc: undefined,
				winPercent: undefined,
				damage: undefined,
				winMSG: "",
				failMSG: ""
			},
			4:{
				name: undefined,
				desc: undefined,
				winPercent: undefined,
				damage: undefined,
				winMSG: "",
				failMSG: ""
			},
		}
	},
	plrB:{
		char: persist.battleConf.plrB,
		charName: "",
		charSpr: undefined,
		HP: 1,
		attacks:{
			1:{
				name: undefined,
				desc: undefined,
				winPercent: undefined,
				damage: undefined,
				winMSG: "",
				failMSG: ""
			},
			2:{
				name: undefined,
				desc: undefined,
				winPercent: undefined,
				damage: undefined,
				winMSG: "",
				failMSG: ""
			},
			3:{
				name: undefined,
				desc: undefined,
				winPercent: undefined,
				damage: undefined,
				winMSG: "",
				failMSG: ""
			},
			4:{
				name: undefined,
				desc: undefined,
				winPercent: undefined,
				damage: undefined,
				winMSG: "",
				failMSG: ""
			},
		}
	},
	against:{
		char: persist.battleConf.against,
		HP: 1,
		charName: "",
		charSpr: undefined,
		HP: 1,
		attacks:{
			1:{
				name: undefined,
				desc: undefined,
				winPercent: undefined,
				damage: undefined,
				winMSG: "",
				failMSG: ""
			},
			2:{
				name: undefined,
				desc: undefined,
				winPercent: undefined,
				damage: undefined,
				winMSG: "",
				failMSG: ""
			},
			3:{
				name: undefined,
				desc: undefined,
				winPercent: undefined,
				damage: undefined,
				winMSG: "",
				failMSG: ""
			},
			4:{
				name: undefined,
				desc: undefined,
				winPercent: undefined,
				damage: undefined,
				winMSG: "",
				failMSG: ""
			},
		}
	}
}

//Load configurations
switch(battle.plrA.char){
	case DIAG_CHAR_LOLGUY: {
		battle.plrA.charName = "Lol Guy"
		battle.plrA.charSpr = spr_lolguy_front
		battle.plrA.HP = 140
		battle.plrA.attacks = {
			1:{
				name: "wowie",
				desc: "youou do damnage",
				winPercent: 85,
				damage: 21,
				winMSG: "u did the damng",
				failMSG: "u failed lolol"
			}
		}
	} break;
}