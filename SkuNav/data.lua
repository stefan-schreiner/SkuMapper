local MODULE_NAME = "SkuNav"
local L = Sku.L
local _G = _G

UNIT_NPC_FLAG_NONE = 0x00000000
UNIT_NPC_FLAG_GOSSIP= 0x00000001
UNIT_NPC_FLAG_QUESTGIVER = 0x00000002
UNIT_NPC_FLAG_UNK1 = 0x00000004
UNIT_NPC_FLAG_UNK2 = 0x00000008
UNIT_NPC_FLAG_TRAINER = 0x00000010
UNIT_NPC_FLAG_TRAINER_CLASS = 0x00000020
UNIT_NPC_FLAG_TRAINER_PROFESSION= 0x00000040
UNIT_NPC_FLAG_VENDOR = 0x00000080
UNIT_NPC_FLAG_VENDOR_AMMO = 0x00000100
UNIT_NPC_FLAG_VENDOR_FOOD = 0x00000200
UNIT_NPC_FLAG_VENDOR_POISON = 0x00000400
UNIT_NPC_FLAG_VENDOR_REAGENT = 0x00000800
UNIT_NPC_FLAG_REPAIR = 0x00001000
UNIT_NPC_FLAG_FLIGHTMASTER = 0x00002000
UNIT_NPC_FLAG_SPIRITHEALER = 0x00004000
UNIT_NPC_FLAG_SPIRITGUIDE = 0x00008000
UNIT_NPC_FLAG_INNKEEPER = 0x00010000
UNIT_NPC_FLAG_BANKER = 0x00020000
UNIT_NPC_FLAG_PETITIONER = 0x00040000
UNIT_NPC_FLAG_TABARDDESIGNER = 0x00080000
UNIT_NPC_FLAG_BATTLEMASTER = 0x00100000
UNIT_NPC_FLAG_AUCTIONEER = 0x00200000
UNIT_NPC_FLAG_STABLEMASTER = 0x00400000
UNIT_NPC_FLAG_GUILD_BANKER = 0x00800000
UNIT_NPC_FLAG_SPELLCLICK = 0x01000000
UNIT_NPC_FLAG_PLAYER_VEHICLE = 0x02000000

SkuNav.NPCRolesToRecognize = {
	["deDE"] = {
		[UNIT_NPC_FLAG_QUESTGIVER] = "Questgeber",
		[UNIT_NPC_FLAG_TRAINER] =  "Trainer",
		[UNIT_NPC_FLAG_TRAINER_CLASS] = "Klassentrainer",
		[UNIT_NPC_FLAG_TRAINER_PROFESSION] = "Berufstrainer",
		[UNIT_NPC_FLAG_VENDOR] = "Händler",
		[UNIT_NPC_FLAG_VENDOR_AMMO] = "Munition",
		[UNIT_NPC_FLAG_VENDOR_FOOD] = "Essen",
		[UNIT_NPC_FLAG_VENDOR_POISON] =  "Gift",
		[UNIT_NPC_FLAG_VENDOR_REAGENT] =  "Reagenzien",
		[UNIT_NPC_FLAG_REPAIR] =  "Reparieren",
		[UNIT_NPC_FLAG_FLIGHTMASTER] = "Flugmeister",
		[UNIT_NPC_FLAG_SPIRITHEALER] =  "Geistheiler",
		[UNIT_NPC_FLAG_INNKEEPER] = "Gastwirt",
		[UNIT_NPC_FLAG_BANKER] =  "Banker",
		[UNIT_NPC_FLAG_AUCTIONEER] =  "Auktionator",
		[UNIT_NPC_FLAG_STABLEMASTER] = "Stallmeister",
	},
	["enUS"] = {
		[UNIT_NPC_FLAG_QUESTGIVER] = "Questgiver",
		[UNIT_NPC_FLAG_TRAINER] =  "Trainer",
		[UNIT_NPC_FLAG_TRAINER_CLASS] = "Class Trainer",
		[UNIT_NPC_FLAG_TRAINER_PROFESSION] = "Profession Trainer",
		[UNIT_NPC_FLAG_VENDOR] = "Merchant",
		[UNIT_NPC_FLAG_VENDOR_AMMO] = "Ammunition",
		[UNIT_NPC_FLAG_VENDOR_FOOD] = "Food",
		[UNIT_NPC_FLAG_VENDOR_POISON] =  "Poison",
		[UNIT_NPC_FLAG_VENDOR_REAGENT] =  "Reagents",
		[UNIT_NPC_FLAG_REPAIR] =  "Repair",
		[UNIT_NPC_FLAG_FLIGHTMASTER] = "Flight Master",
		[UNIT_NPC_FLAG_SPIRITHEALER] =  "Spirit Healer",
		[UNIT_NPC_FLAG_INNKEEPER] = "Innkeeper",
		[UNIT_NPC_FLAG_BANKER] =  "Banker",
		[UNIT_NPC_FLAG_AUCTIONEER] =  "Auctioneer",
		[UNIT_NPC_FLAG_STABLEMASTER] = "Stable Master",
	},
}
