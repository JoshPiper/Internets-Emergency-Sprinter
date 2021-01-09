AddCSLuaFile()

EMV_DEBUG = false

local name = "Mercedes Sprinter LWB ARU"

local A = "AMBER"
local R = "RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local SW = "S_WHITE"
local G = "GREEN"

local EMV = {}

EMV.Siren = 49

EMV.Color = nil
EMV.Skin = "emvu_skins/merc_sprinter_lwb/livery_police_speed"

EMV.Liveries = {
	["Police"] = {
		["Speed Enforcement"] = "emvu_skins/merc_sprinter_lwb/livery_police_speed",
		["Prison Transport"] = "emvu_skins/merc_sprinter_lwb/livery_prison",
		["SWAT"] = "emvu_skins/merc_sprinter_lwb/livery_swat",
	},
	-- ["EC:FD"] = {
		-- ["EMS"] = "emvu_skins/merc_sprinter_lwb/livery_ems",
	-- },
}

EMV.BodyGroups = {
	{ 9, 2 }, -- Lightbar
	{ 10, 2 }, -- Grilllghts
}

EMV.Props = {
	[1] = {
		Model = "models/tdmcars/emergency/equipment/whelen_cencom.mdl",
		Scale = 1,
		Pos = Vector(0, 73.6, 63.4),
		Ang = Angle(70, -90, 0),
	},
	[2] = {
		Model = "models/tdmcars/emergency/equipment/laptop.mdl",
		Scale = 1,
		Pos = Vector(16.9, 80, 60.8),
		Ang = Angle(-3.4, -160, 7),
	},
	[3] = {
		Model = "models/tdmcars/emergency/equipment/pushbar_wrap.mdl",
		Scale = 1.2,
		Pos = Vector(0, 124, 17),
		Ang = Angle(0, -90, 0),
	},
	[4] = {
		Model = "models/tdmcars/emergency/equipment/pushrod.mdl",
		Scale = 1,
		Pos = Vector(0, 130, 18),
		Ang = Angle(0, -90, 0),
	},
	[5] = {
		Model = "models/tdmcars/emergency/equipment/pushbar.mdl",
		Scale = 1,
		Pos = Vector(0, 135.8, 17.6),
		Ang = Angle(0, -90, 0),
	},
}

EMV.Meta = {
	beacon_rotating = {
		AngleOffset = "R",
		W = 15,
		H = 15,
		Sprite = "sprites/emv/emv_lightglow",
		WMult = 1,
		Scale = 2,
		Speed = 8,
	},
	siren_f = {
		AngleOffset = -90,
		W = 7,
		H = 12,
		Sprite = "sprites/emv/emv_whelen_src",
		Scale = 1.4,
		VisRadius = 0
	},
	siren_w = {
		AngleOffset = -90,
		W = 7,
		H = 12,
		Sprite = "sprites/emv/emv_whelen_src",
		Scale = 1.6,
		VisRadius = 0
	},
	siren_r = {
		AngleOffset = 90,
		W = 7,
		H = 12,
		Sprite = "sprites/emv/emv_whelen_src",
		Scale = 1.4,
		VisRadius = 0
	},
	controlpanel = {
		AngleOffset = 90,
		W = 0.1,
		H = 0.1,
		Sprite = "sprites/emv/emv_lightglow",
		Scale = 0.04,
		VisRadius = 0
	},
	headlight = {
		AngleOffset = -90,
		W = 7,
		H = 7,
		Sprite = "sprites/emv/light_circle",
		Scale = 1.6,
		VisRadius = 0
	},
	headlight_small = {
		AngleOffset = -90,
		W = 3,
		H = 3,
		Sprite = "sprites/emv/light_circle",
		Scale = 0.7,
		VisRadius = 0
	},
	headlight_tiny = {
		AngleOffset = -90,
		W = 1,
		H = 1,
		Sprite = "sprites/emv/emv_lightglow",
		Scale = 0.4,
		VisRadius = 0
	},
	grilllight = {
		AngleOffset = -90,
		W = 16,
		H = 11,
		Sprite = "sprites/emv/emv_lightglow",
		Scale = 1.1,
		WMult = 2,
		VisRadius = 0
	},
}

EMV.Positions = {

-- Lightbar
	-- Lightbar - Front - Central
	[1] = {Vector(-7, 29.2, 111.15 ), Angle(0,0,0), "siren_w" },
	[2] = {Vector(7, 29.2, 111.15 ), Angle(0,0,0), "siren_w" },
	-- Lightbar - Front - Left
	[3] = {Vector(-13.2, 29.2, 111.15 ), Angle(0,0,0), "siren_f" },
	[4] = {Vector(-18.8, 29.2, 111.15 ), Angle(0,0,0), "siren_f" },
	[5] = {Vector(-24.4, 29.2, 111.15 ), Angle(0,0,0), "siren_f" },
	-- Lightbar - Front - Right
	[6] = {Vector(13.2, 29.2, 111.15 ), Angle(0,0,0), "siren_f" },
	[7] = {Vector(18.8, 29.2, 111.15 ), Angle(0,0,0), "siren_f" },
	[8] = {Vector(24.4, 29.2, 111.15 ), Angle(0,0,0), "siren_f" },
	-- Lightbar - Rear - Central
	[9] = {Vector(-7, 26.4, 111.15 ), Angle(0,180,0), "siren_w" },
	[10] = {Vector(7, 26.4, 111.15 ), Angle(0,180,0), "siren_w" },
	-- Lightbar - Rear - Left
	[11] = {Vector(-13.2, 26.4, 111.15 ), Angle(0,0,0), "siren_r" },
	[12] = {Vector(-18.8, 26.4, 111.15 ), Angle(0,0,0), "siren_r" },
	[13] = {Vector(-24.4, 26.4, 111.15 ), Angle(0,0,0), "siren_r" },
	-- Lightbar - Rear - Right
	[14] = {Vector(13.2, 26.4, 111.15 ), Angle(0,0,0), "siren_r" },
	[15] = {Vector(18.8, 26.4, 111.15 ), Angle(0,0,0), "siren_r" },
	[16] = {Vector(24.4, 26.4, 111.15 ), Angle(0,0,0), "siren_r" },

-- Halogens
	-- Left
	[17] = { Vector( -24.6, -140.5, 111 ), Angle(0,0,0), "beacon_rotating" },
	[18] = { Vector( -23.4, -139.9, 111 ), Angle(0,0,0), "beacon_rotating" },
	-- Right
	[19] = { Vector( 24, -140.5, 111 ), Angle(0,0,0), "beacon_rotating" },
	[20] = { Vector( 22.9, -140.5, 111 ), Angle(0,0,0), "beacon_rotating" },

-- Headlights
	[21] = { Vector(-32.8, 123.3, 38.2), Angle(0,0,0), "headlight" },
	[22] = { Vector(32.8, 123.3, 38.2), Angle(0,0,0), "headlight" },

	[23] = { Vector(-27.2, 126, 35.8), Angle(0,0,0), "headlight_small" },
	[24] = { Vector(27.2, 126, 35.8), Angle(0,0,0), "headlight_small" },

	[25] = { Vector(-36.1, 122.9, 41.8), Angle(0,0,0), "headlight_tiny" },
	[26] = { Vector(36.1, 122.9, 41.8), Angle(0,0,0), "headlight_tiny" },

-- Grill Lights
	[27] = { Vector(-11, 133.4, 36.55), Angle(0,5,0), "grilllight" },
	[28] = { Vector(11, 133.4, 36.55), Angle(0,-5,0), "grilllight" },

-- Control Panel Lights
	-- Top Row Lights (x, 73.67, 64.669)
	-- Marker / On
	[29] = { Vector(-3.464, 73.32, 63.765), Angle(0, 0, -20), "controlpanel" },
	[30] = { Vector(-3.51, 73.16, 63.28), Angle(0, 0, -20), "controlpanel" },
	-- Code 1
	[31] = { Vector(-0.473, 73.389, 63.831), Angle(0, 0, -20), "controlpanel" },
	[32] = { Vector(-2.808, 73.16, 63.28), Angle(0, 0, -20), "controlpanel" },
	-- Code 2
	[33] = { Vector(0.433, 73.389, 63.831), Angle(0, 0, -20), "controlpanel" },
	[34] = { Vector(-2.106, 73.16, 63.28), Angle(0, 0, -20), "controlpanel" },
	-- Code 3
	[35] = { Vector(1.341, 73.389, 63.831), Angle(0, 0, -20), "controlpanel" },
	[36] = { Vector(-1.404, 73.16, 63.28), Angle(0, 0, -20), "controlpanel" },

	-- State Indicator Lights
	[37] = { Vector(-3.554, 72.991, 62.73), Angle(0, 0, -20), "controlpanel" },
	[38] = { Vector(-3.25, 72.991, 62.73), Angle(0, 0, -20), "controlpanel" },
	[39] = { Vector(-2.946, 72.991, 62.73), Angle(0, 0, -20), "controlpanel" },
	[40] = { Vector(-2.642, 72.991, 62.73), Angle(0, 0, -20), "controlpanel" },
	[41] = { Vector(-2.338, 72.991, 62.73), Angle(0, 0, -20), "controlpanel" },
	[42] = { Vector(-2.034, 72.991, 62.73), Angle(0, 0, -20), "controlpanel" },
	[43] = { Vector(-1.73, 72.991, 62.73), Angle(0, 0, -20), "controlpanel" },
	[44] = { Vector(-1.426, 72.991, 62.73), Angle(0, 0, -20), "controlpanel" },
}

EMV.Sections = {
	["halogens"] = {
		{{17,B}, {18,B}, {19,B}, {20,B}}
	},
	["lightbar_front_center"] = {
		{{1,W}, {2,W}},
		{{1,W,{16,.5,0}}, {2,W,{16,.5,10}}},
		{{1,W}},
		{{2,W}},
	},
	["lightbar_front_left"] = {
		{{3, B}, {4, B}, {5, B}},
		{{3, R}, {4, R}, {5, R}},
		{{3, B}, {5, B}},
		{{3, R}, {5, R}},
		{{4, B}},
		{{4, R}},
	},
	["lightbar_front_right"] = {
		{{6, B}, {7, B}, {8, B}},
		{{6, R}, {7, R}, {8, R}},
		{{6, B}, {8, B}},
		{{6, R}, {8, R}},
		{{7, B}},
		{{7, R}},
	},
	["lightbar_rear_center"] = {
		{ {9,W}, {10,W}, },
		{ {9,W,{16,.5,0}}, {10,W,{16,.5,10}}, },
		{ {9,W}, },
		{ {10,W}, },
	},
	["lightbar_rear_left"] = {
		{{11, B}, {12, B}, {13, B}},
		{{11, R}, {12, R}, {13, R}},
		{{11, B}, {13, B}},
		{{11, R}, {13, R}},
		{{12, B}},
		{{12, R}},
	},
	["lightbar_rear_right"] = {
		{{14, B}, {15, B}, {16, B}},
		{{14, R}, {15, R}, {16, R}},
		{{14, B}, {16, B}},
		{{14, R}, {16, R}},
		{{15, B}},
		{{15, R}},
	},

	["headlights_main"] = {
		{ {21,SW,{8,.5,0}}, {22,SW,{8,.5,9}}, },
		{ {21,SW}, {22,SW}, },
		{ {21,SW}, },
		{ {22,SW}, },
	},
	["headlights_minor"] = {
		{ {23,SW}, {24,SW}, {25,SW}, {26,SW}, },
		{ {25,SW}, {26,SW}, },
		{ {23,SW}, {24,SW}, },
		{ {23,SW,{16,0,0}}, {24,SW,{16,0,0}}, {25,SW,{16,0,10}}, {26,SW,{16,0,10}}, },
	},
	["grilllights"] = {
		{{27, B}, {28, B}},
		{{27, R}, {28, B}},
		{{27, B}},
		{{28, B}},
		{{27, R}},
		{{28, R}},
		{{27, R}, {28, R}},
	},
	["controlpanel_code"] = {
		{{29, G, {7, 0.9, 0}}, {30, G, {7, 0.9, 0}}},
		{{29, G, {7, 0.9, 0}}, {30, G, {7, 0.9, 0}}, {31, G, {7, 0.9, 0}}, {32, G, {7, 0.9, 0}}, },
		{{29, G, {7, 0.9, 0}}, {30, G, {7, 0.9, 0}}, {32, G, {7, 0.9, 0}}, {33, A, {7, 0.9, 0}}, {34, A, {7, 0.9, 0}}},
		{{29, G, {7, 0.9, 0}}, {30, G, {7, 0.9, 0}}, {32, G, {7, 0.9, 0}}, {34, A, {7, 0.9, 0}}, {35, R, {7, 0.9, 0}}, {36, R, {7, 0.9, 0}}},
	},
	["controlpanel_indicator"] = {
		{{37, A}, {38, A}, {39, A}, {40, A}, {41, A}, {42, A}, {43, A}, {44, A}},
		{{37, A}, {39, A}, {42, A}, {44, A}},
		{{38, A}, {40, A}, {41, A}, {43, A}},
		{{37, A}, {38, A}, {39, A}, {40, A}},
		{{41, A}, {42, A}, {43, A}, {44, A}},
		{{40, A}, {41, A}},
		{{37, A}, {38, A}, {39, A}},
		{{42, A}, {43, A}, {44, A}},
	},
}

EMV.Patterns = {
	["halogens"] = {
		["all"] = {1},
	},
	["grilllights"] = {
		["all_blue"] = {1},
		["all_mix"] = {2},
		["alt_blue"] = {3,0,4,0,0,0,0,0,4,0,3,0,0,0,0,0},
		["alt_mix"] = {5,0,4,0,0,0,0,0,4,0,5,0,0,0,0,0},
		["alt_2_blue"] = {1,1,0,0,3,3,0,0,1,1,0,0,4,4,0,0},
		["alt_2_mix"] = {1,1,0,0,3,3,0,0,7,7,0,0,4,4,0,0,1,1,0,0,6,6,0,0,7,7,0,0,5,5},
	},
	["lightbar_front_center"] = {
		["all"] = {1},
		["flash"] = {3,3,0,0,3,3,0,0,4,4,0,0,4,4,0,0},
		["pulse"] = {1,1,1,1,0,0,0,0},
		["fast"] = {1,0,0,1,0,0}
	},
	["lightbar_front_left"] = {
		["all_blue"] = {1},
		["all_mix"] = {2},
		["flash_blue"] = {1,1,0,0,1,1,0,0,0,0,0,0,0,0,0,0},
		["flash_mix"] = {2,2,0,0,2,2,0,0,0,0,0,0,0,0,0,0},
		["pulse_blue"] = {5,5,5,5,3,3,3,3},
		["pulse_mix"] = {6,6,6,6,4,4,4,4},
		["fast_blue"] = {0,1,1,0,0,0},
		["fast_mix"] = {0,2,2,0,0,0},
	},
	["lightbar_front_right"] = {
		["all_blue"] = {1},
		["all_mix"] = {1},
		["flash_blue"] = {0,0,0,0,0,0,0,0,1,1,0,0,1,1,0,0},
		["flash_mix"] = {0,0,0,0,0,0,0,0,1,1,0,0,1,1,0,0},
		["pulse_blue"] = {5,5,5,5,3,3,3,3},
		["pulse_mix"] = {5,5,5,5,3,3,3,3},
		["fast_blue"] = {0,0,0,0,1,1},
		["fast_mix"] = {0,0,0,0,1,1},
	},
	["lightbar_rear_center"] = {
		["all"] = {1},
		["flash"] = {3,3,0,0,3,3,0,0,4,4,0,0,4,4,0,0},
		["pulse"] = {1,1,1,1,0,0,0,0},
		["fast"] = {1,0,0,1,0,0}
	},
	["lightbar_rear_left"] = {
		["all_blue"] = {1},
		["all_mix"] = {2},
		["flash_blue"] = {1,1,0,0,1,1,0,0,0,0,0,0,0,0,0,0},
		["flash_mix"] = {2,2,0,0,2,2,0,0,0,0,0,0,0,0,0,0},
		["pulse_blue"] = {5,5,5,5,3,3,3,3},
		["pulse_mix"] = {6,6,6,6,4,4,4,4},
		["fast_blue"] = {0,1,1,0,0,0},
		["fast_mix"] = {0,2,2,0,0,0},
	},
	["lightbar_rear_right"] = {
		["all_blue"] = {1},
		["all_mix"] = {1},
		["flash_blue"] = {0,0,0,0,0,0,0,0,1,1,0,0,1,1,0,0},
		["flash_mix"] = {0,0,0,0,0,0,0,0,1,1,0,0,1,1,0,0},
		["pulse_blue"] = {5,5,5,5,3,3,3,3},
		["pulse_mix"] = {5,5,5,5,3,3,3,3},
		["fast_blue"] = {0,0,0,0,1,1},
		["fast_mix"] = {0,0,0,0,1,1},
	},

	["headlights_main"] = {
		["all"] = {2},
		["pulse"] = {1},
		["flash"] = {2,2,0,0,3,3,0,0,4,4,0,0},
	},
	["headlights_minor"] = {
		["all"] = {1},
		["pulse"] = {4},
		["flash"] = {2,2,0,0,3,3,0,0},
	},

	["controlpanel_code"] = {
		["marker"] = {1},
		["code1"] = {2},
		["code2"] = {3},
		["code3"] = {4},
	},
	["controlpanel_indicator"] = {
		["marker"] = {1},
		["code1"] = {2,2,2,2,3,3,3,3},
		["code2"] = {4,4,0,0,4,4,0,0,5,5,0,0,5,5,0,0},
		["code3"] = {6,7,7,6,8,8,6},
	},
}

EMV.Selections = {
	{
		Name = "Grill Lights",
		Options = {
			{Category = "Sprinter", Name = "Blue", Bodygroups = {{10, 1}}},
			{Category = "Sprinter", Name = "Red/Blue", Bodygroups = {{10, 2}}},
			{Name = "None", Bodygroups = {{10, 0}}}
		},
	},
	{
		Name = "Lightbar",
		Options = {
			{Category = "Sprinter", Name = "Blue", Bodygroups = {{9, 1}}},
			{Category = "Sprinter", Name = "Red/Blue", Bodygroups = {{9, 2}}}, -- 29 / 30 // 31 / 32 // 33
			{Category = "Whelen Liberty SX", Name = "Red/Blue", Bodygroups = {{9, 0}}, Auto = {22, 29, 32}},
			{Category = "Whelen Liberty SX", Name = "Blue", Bodygroups = {{9, 0}}, Auto = {23, 28, 29}},
			{Category = "Whelen Liberty SX", Name = "Amber", Bodygroups = {{9, 0}}, Auto = {24, 30, 31}},
			{Category = "Whelen Liberty II", Name = "Red/Blue", Bodygroups = {{9, 0}}, Auto = {25, 29, 32}},
			{Category = "Whelen Liberty II", Name = "Blue", Bodygroups = {{9, 0}}, Auto = {26, 29, 28}},
			{Category = "Whelen Liberty II", Name = "Amber", Bodygroups = {{9, 0}}, Auto = {27, 30, 31}},
			--{Category = "Whelen Liberty SX A", Name = "Red/Blue", Bodygroups = {{9, 0}}, Auto = {33, 30, 31}},
			{Name = "None", Bodygroups = {{9, 0}}}
		},
	},
	{
		Name = "Interior Equipment",
		Options = {
			{Name = "Police", Props = {1, 2}},
			{Name = "None"}
		},
	},
	{
		Name = "Pushbar",
		Options = {
			{Name = "Wraparound", Props = {3}},
			{Name = "Pushrod", Props = {4}},
			{Category = "Pushbar", Name = "Unlit", Props = {5}},
			{Category = "Pushbar", Name = "LED (Blue)", Auto = {2}},
			{Category = "Pushbar", Name = "LED (Red/Blue)", Auto = {1}},
			{Name = "None"}
		},
	},
	{
		Name = "Front Upper Deck",
		Options = {
			{Category = "Split Interior Bar", Name = "Blue", Auto = {3}},
			{Category = "Split Interior Bar", Name = "Red/Blue", Auto = {4}},
			{Category = "Tomar 200s", Name = "Blue", Auto = {5}},
			{Category = "Tomar 200s", Name = "Red/Blue", Auto = {6}},
			{Category = "Tomar 200s", Name = "Blue/White", Auto = {7}},
			{Category = "Tomar 200s", Name = "Red/Blue/White", Auto = {8}},
			{Name = "None"},
		},
	},
	{
		Name = "Front Lower Deck",
		Options = {
			{Category = "Viper Dual", Name = "Blue", Auto = {9}},
			{Category = "Viper Dual", Name = "Red", Auto = {10}},
			{Category = "Viper Dual", Name = "Red/Blue", Auto = {11}},
			{Category = "Viper Single", Name = "Blue", Auto = {12, 13}},
			{Category = "Viper Single", Name = "Red", Auto = {14, 15}},
			{Category = "Viper Single", Name = "Red/Blue", Auto = {12, 15}},
			{Name = "None"},
		},
	},
	{
		Name = "Mirror Lights",
		Options = {
			{Category = "Whelen Ion", Name = "Blue", Auto = {16, 17}},
			{Category = "Whelen Ion", Name = "Red", Auto = {18, 19}},
			{Category = "Whelen Ion", Name = "Red/Blue", Auto = {20, 21}},
			{Name = "None"},
		},
	},
}

EMV.Auto = {
	[1] = {
		ID = "TDM Pushbar LED",
		Scale = 1,
		Pos = Vector(0, 135.8, 17.6),
		Ang = Angle(0, -90, 0),
		Color1 = B,
		Color2 = R,
	},
	[2] = {
		ID = "TDM Pushbar LED",
		Scale = 1,
		Pos = Vector(0, 135.8, 17.6),
		Ang = Angle(0, -90, 0),
		Color1 = B,
		Color2 = B,
	},
	[3] = {
		ID = "TDM Front Interior Lightbar",
		Scale = 1,
		Pos = Vector(0, 67.5, 85.8),
		Ang = Angle(0, 90, 0),
		Color1 = B,
		Color2 = B,
		Color3 = B,
	},
	[4] = {
		ID = "TDM Front Interior Lightbar",
		Scale = 1,
		Pos = Vector(0, 67.5, 85.8),
		Ang = Angle(0, 90, 0),
		Color1 = B,
		Color2 = R,
	},
	[4] = {
		ID = "TDM Front Interior Lightbar",
		Scale = 1,
		Pos = Vector(0, 67.5, 85.8),
		Ang = Angle(0, 90, 0),
		Color1 = B,
		Color2 = R,
	},
	[5] = {
		ID = "Tomar 200S Front",
		Scale = 1,
		Pos = Vector(0, 63, 84.2),
		Ang = Angle(0, 90, 0),
		Color1 = B,
		Color2 = B,
		Color3 = B,
		Color4 = B,
	},
	[6] = {
		ID = "Tomar 200S Front",
		Scale = 1,
		Pos = Vector(0, 63, 84.2),
		Ang = Angle(0, 90, 0),
		Color1 = B,
		Color2 = R,
		Color3 = B,
		Color4 = R,
	},
	[7] = {
		ID = "Tomar 200S Front",
		Scale = 1,
		Pos = Vector(0, 63, 84.2),
		Ang = Angle(0, 90, 0),
		Color1 = B,
		Color2 = B,
		Color3 = W,
		Color4 = W,
	},
	[8] = {
		ID = "Tomar 200S Front",
		Scale = 1,
		Pos = Vector(0, 63, 84.2),
		Ang = Angle(0, 90, 0),
		Color1 = B,
		Color2 = R,
		Color3 = W,
		Color4 = W,
	},
	[9] = {
		ID = "Federal Signal Viper Dual",
		Scale = 1,
		Pos = Vector(0, 97.1, 60),
		Ang = Angle(10, 90, 0),
		Color1 = B,
		Color2 = B,
	},
	[10] = {
		ID = "Federal Signal Viper Dual",
		Scale = 1,
		Pos = Vector(0, 97.1, 60),
		Ang = Angle(10, 90, 0),
		Color1 = R,
		Color2 = R,
	},
	[11] = {
		ID = "Federal Signal Viper Dual",
		Scale = 1,
		Pos = Vector(0, 97.1, 60),
		Ang = Angle(10, 90, 0),
		Color1 = R,
		Color2 = B,
	},
	[12] = {
		ID = "Federal Signal Viper",
		Scale = 1,
		Pos = Vector(4, 97, 60.2),
		Ang = Angle(10, 90, 0),
		Color1 = B,
		Color2 = B,
		Phase = "B",
	},
	[13] = {
		ID = "Federal Signal Viper",
		Scale = 1,
		Pos = Vector(-4, 97, 60.2),
		Ang = Angle(10, 90, 0),
		Color1 = B,
		Color2 = B,
		Phase = "A",
	},
	[14] = {
		ID = "Federal Signal Viper",
		Scale = 1,
		Pos = Vector(4, 97, 60.2),
		Ang = Angle(10, 90, 0),
		Color1 = R,
		Color2 = R,
		Phase = "B",
	},
	[15] = {
		ID = "Federal Signal Viper",
		Scale = 1,
		Pos = Vector(-4, 97, 60.2),
		Ang = Angle(10, 90, 0),
		Color1 = R,
		Color2 = R,
		Phase = "A",
	},
	[16] = {
		ID = "Whelen Ion Trio",
		Scale = 1,
		Pos = Vector(47, 80.5, 63.2),
		Ang = Angle(-2, -12, 0),
		Color1 = B,
		Color2 = B,
		Color3 = B,
		Phase = "A",
	},
	[17] = {
		ID = "Whelen Ion Trio",
		Scale = 1,
		Pos = Vector(-47, 80.5, 63.2),
		Ang = Angle(2, 12, 0),
		Color1 = B,
		Color2 = B,
		Color3 = B,
		Phase = "B",
	},
	[18] = {
		ID = "Whelen Ion Trio",
		Scale = 1,
		Pos = Vector(47, 80.5, 63.2),
		Ang = Angle(-2, -12, 0),
		Color1 = R,
		Color2 = R,
		Color3 = R,
		Phase = "A",
	},
	[19] = {
		ID = "Whelen Ion Trio",
		Scale = 1,
		Pos = Vector(-47, 80.5, 63.2),
		Ang = Angle(2, 12, 0),
		Color1 = R,
		Color2 = R,
		Color3 = R,
		Phase = "B",
	},
	[20] = {
		ID = "Whelen Ion Trio",
		Scale = 1,
		Pos = Vector(47, 80.5, 63.2),
		Ang = Angle(-2, -12, 0),
		Color1 = R,
		Color2 = B,
		Phase = "A",
	},
	[21] = {
		ID = "Whelen Ion Trio",
		Scale = 1,
		Pos = Vector(-47, 80.5, 63.2),
		Ang = Angle(2, 12, 0),
		Color1 = R,
		Color2 = B,
		Phase = "B",
	},
	[22] = {
		ID = "Whelen Liberty SX",
		Scale = 1,
		Pos = Vector(0, 25, 110.7),
		Ang = Angle(0, 90, 0),
	},
	[23] = {
		ID = "Whelen Liberty SX",
		Scale = 1,
		Pos = Vector(0, 25, 110.7),
		Ang = Angle(0, 90, 0),
		Color1 = B,
		Color2 = B,
	},
	[24] = {
		ID = "Whelen Liberty SX",
		Scale = 1,
		Pos = Vector(0, 25, 110.7),
		Ang = Angle(0, 90, 0),
		Color1 = A,
		Color2 = A,
	},
	[25] = {
		ID = "Whelen Liberty II",
		Scale = 1,
		Pos = Vector(0, 25, 110.7),
		Ang = Angle(0, 90, 0),
	},
	[26] = {
		ID = "Whelen Liberty II",
		Scale = 1,
		Pos = Vector(0, 25, 110.7),
		Ang = Angle(0, 90, 0),
		Color1 = B,
		Color2 = B,
	},
	[27] = {
		ID = "Whelen Liberty II",
		Scale = 1,
		Pos = Vector(0, 25, 110.7),
		Ang = Angle(0, 90, 0),
		Color1 = A,
		Color2 = A,
	},
	[28] = {
		ID = "Dome Light Blue",
		Scale = 1,
		Pos = Vector(-24.2, -140.3, 107.1),
		Ang = Angle(0, 0, 0),
	},
	[29] = {
		ID = "Dome Light Blue",
		Scale = 1,
		Pos = Vector(24.2, -140.3, 107.1),
		Ang = Angle(0, 0, 0),
	},
	[30] = {
		ID = "Dome Light Amber",
		Scale = 1,
		Pos = Vector(-24.2, -140.3, 107.1),
		Ang = Angle(0, 0, 0),
	},
	[31] = {
		ID = "Dome Light Amber",
		Scale = 1,
		Pos = Vector(24.2, -140.3, 107.1),
		Ang = Angle(0, 0, 0),
	},
	[32] = {
		ID = "Dome Light Red",
		Scale = 1,
		Pos = Vector(-24.2, -140.3, 107.1),
		Ang = Angle(0, 0, 0),
	},
	[33] = {
		ID = "Whelen Liberty SX A",
		--ID = "",
		Scale = 1,
		Pos = Vector(0, 25, 110.7),
		Ang = Angle(0, 90, 0),
	},
}

EMV.Sequences = {
		Sequences = {
		{
			Name = "CODE 1",
			Stage = "M1",
			Components = {
				["headlights_main"] = "pulse",
				["headlights_minor"] = "pulse",
			},
			BG_Components = {
				["Grilllghts"] = {
					["1"] = {["grilllights"] = "alt_blue"},
					["2"] = {["grilllights"] = "alt_mix"},
				},
				["Lightbar"] = {
					["1"] = {
						["halogens"] = "all",
						["lightbar_front_center"] = "pulse",
						["lightbar_front_left"] = "pulse_blue",
						["lightbar_front_right"] = "pulse_blue",
						["lightbar_rear_center"] = "pulse",
						["lightbar_rear_left"] = "pulse_blue",
						["lightbar_rear_right"] = "pulse_blue",
					},
					["2"] = {
						["halogens"] = "all",
						["lightbar_front_center"] = "pulse",
						["lightbar_front_left"] = "pulse_mix",
						["lightbar_front_right"] = "pulse_mix",
						["lightbar_rear_center"] = "pulse",
						["lightbar_rear_left"] = "pulse_mix",
						["lightbar_rear_right"] = "pulse_mix",
					},
				},
			},
			Selection_Components = {
				[3] = {
					[1] = {
						["controlpanel_code"] = "code1",
						["controlpanel_indicator"] = "code1",
					},
				},
			},
			Disconnect = {1, 2, 3, 4, 5, 6},
		},
		{
			Name = "CODE 2",
			Stage = "M2",
			Components = {
				["headlights_main"] = "pulse",
				["headlights_minor"] = "pulse",
			},
			BG_Components = {
				["Grilllghts"] = {
					["1"] = {["grilllights"] = "alt_blue"},
					["2"] = {["grilllights"] = "alt_mix"},
				},
				["Lightbar"] = {
					["1"] = {
						["halogens"] = "all",
						["lightbar_front_center"] = "flash",
						["lightbar_front_left"] = "flash_blue",
						["lightbar_front_right"] = "flash_blue",
						["lightbar_rear_center"] = "flash",
						["lightbar_rear_left"] = "flash_blue",
						["lightbar_rear_right"] = "flash_blue",
					},
					["2"] = {
						["halogens"] = "all",
						["lightbar_front_center"] = "flash",
						["lightbar_front_left"] = "flash_mix",
						["lightbar_front_right"] = "flash_mix",
						["lightbar_rear_center"] = "flash",
						["lightbar_rear_left"] = "flash_mix",
						["lightbar_rear_right"] = "flash_mix",
					},
				},
			},
			Selection_Components = {
				[3] = {
					[1] = {
						["controlpanel_code"] = "code2",
						["controlpanel_indicator"] = "code2",
					},
				},
			},
			Disconnect = {1, 2, 3, 4, 5, 6},
		},
				{
			Name = "CODE 3",
			Stage = "M3",
			Components = {
				["headlights_main"] = "flash",
				["headlights_minor"] = "flash",
			},
			BG_Components = {
				["Grilllghts"] = {
					["1"] = {["grilllights"] = "alt_2_blue"},
					["2"] = {["grilllights"] = "alt_2_mix"},
				},
				["Lightbar"] = {
					["1"] = {
						["halogens"] = "all",
						["lightbar_front_center"] = "fast",
						["lightbar_front_left"] = "fast_blue",
						["lightbar_front_right"] = "fast_blue",
						["lightbar_rear_center"] = "fast",
						["lightbar_rear_left"] = "fast_blue",
						["lightbar_rear_right"] = "fast_blue",
					},
					["2"] = {
						["halogens"] = "all",
						["lightbar_front_center"] = "fast",
						["lightbar_front_left"] = "fast_mix",
						["lightbar_front_right"] = "fast_mix",
						["lightbar_rear_center"] = "fast",
						["lightbar_rear_left"] = "fast_mix",
						["lightbar_rear_right"] = "fast_mix",
					},
				},
			},
			Selection_Components = {
				[3] = {
					[1] = {
						["controlpanel_code"] = "code3",
						["controlpanel_indicator"] = "code3",
					},
				},
			},
			Disconnect = {1, 2, 3, 4, 5, 6},
		},
	},
}

local PI = {}

PI.Meta = {
	headlight = {
		AngleOffset = -90,
		W = 7,
		H = 7,
		Sprite = "sprites/emv/light_circle",
		Scale = 1.6,
		VisRadius = 0
	},
	headlight_small = {
		AngleOffset = -90,
		W = 3,
		H = 3,
		Sprite = "sprites/emv/light_circle",
		Scale = 0.7,
		VisRadius = 0
	},
	headlight_tiny = {
		AngleOffset = -90,
		W = 1,
		H = 1,
		Sprite = "sprites/emv/emv_lightglow",
		Scale = 0.4,
		VisRadius = 0
	},
	running_side = {
		AngleOffset = -90,
		W = 6,
		H = 9,
		Sprite = "sprites/emv/blank",
		Scale = 0.5,
		VisRadius = 0
	},
	running_rear = {
		AngleOffset = 90,
		W = 9.4,
		H = 5.2,
		Sprite = "sprites/emv/blank",
		Scale = 0.9,
		VisRadius = 0
	},
	tail_running = {
		AngleOffset = 90,
		W = 5.45,
		H = 9,
		Sprite = "sprites/emv/blank",
		Scale = 1.5,
		VisRadius = 0,
	},
	tail_indicator = {
		AngleOffset = 90,
		W = 5.45,
		H = 5,
		Sprite = "sprites/emv/fs_valor",
		Scale = 1.5,
		VisRadius = 0,
	},
	tail_break = {
		AngleOffset = 90,
		W = 5,
		H = 14,
		Sprite = "sprites/emv/blank",
		Scale = 1.8,
		VisRadius = 0,
	},
	tail_reverse = {
		AngleOffset = 90,
		W = 5,
		H = 17,
		Sprite = "sprites/emv/fs_valor",
		Scale = 1.5,
		VisRadius = 0,
	},
	tail_side_running = {
		AngleOffset = 90,
		W = 6.8,
		H = 9,
		Sprite = "sprites/emv/blank",
		Scale = 1,
		VisRadius = 0
	},
	tail_side_indicator = {
		AngleOffset = 90,
		W = 6.6,
		H = 5,
		Sprite = "sprites/emv/fs_valor",
		Scale = 1.5,
		VisRadius = 0,
	},
	tail_side_break = {
		AngleOffset = 90,
		W = 6.4,
		H = 13.5,
		Sprite = "sprites/emv/blank",
		Scale = 1,
		VisRadius = 0,
	},
	tail_side_reverse = {
		AngleOffset = 90,
		W = 6,
		H = 17,
		Sprite = "sprites/emv/fs_valor",
		Scale = 1,
		VisRadius = 0,
	},
	tail_side_break_upper = {
		AngleOffset = 90,
		W = 6.4,
		H = 17.5,
		Sprite = "sprites/emv/blank",
		Scale = 1,
		VisRadius = 0,
	},
	indicator_side = {
		AngleOffset = 90,
		W = 5.4,
		H = 6,
		Sprite = "sprites/emv/blank",
		Scale = 1,
		VisRadius = 0,
	},
}

PI.Positions = {
	-- Headlights
	[1] = {Vector(-32.8, 123.3, 38.2), Angle(0,0,0), "headlight"},
	[2] = {Vector(32.8, 123.3, 38.2), Angle(0,0,0), "headlight"},

	[3] = {Vector(-27.2, 126, 35.8), Angle(0,0,0), "headlight_small"},
	[4] = {Vector(27.2, 126, 35.8), Angle(0,0,0), "headlight_small"},

	[5] = {Vector(-36.1, 122.9, 41.8), Angle(0,0,0), "headlight_tiny"},
	[6] = {Vector(36.1, 122.9, 41.8), Angle(0,0,0), "headlight_tiny"},

	-- Running Lights
		-- Left Side
	[7] = {Vector( -41.96, 36.37, 24.95 ), Angle( 0, 90, -4 ), "running_side"},
	[8] = {Vector( -41.96, -37.17, 25.05 ), Angle( 0, 90, -4.45 ), "running_side"},
	[9] = {Vector( -41.95, -126.55, 25 ), Angle( 0, 90, -4.45 ), "running_side"},
		-- Right Side
	[10] = {Vector( 41.96, 36.37, 24.95 ), Angle( 0, -90, -4 ), "running_side"},
	[11] = {Vector( 41.96, -37.17, 25.05 ), Angle( 0, -90, -4.45 ), "running_side"},
	[12] = {Vector( 41.95, -126.55, 25 ), Angle( 0, -90, -4.45 ), "running_side"},

	-- Tail Lights
		-- Step
	[13] = {Vector( -35.69, -157.45, 17.48 ), Angle( -2, -9.5, -4 ), "running_rear"},
	[14] = {Vector( 35.69, -157.45, 17.48 ), Angle( -2, 9.5, 4 ), "running_rear"},
		-- Running Lights
	[15] = {Vector( 38.88, -154.955, 32.67), Angle( 0, 6.25, 0 ), "tail_running"},
	[16] = {Vector( -38.88, -154.955, 32.67), Angle( 0, -6.25, 0 ), "tail_running"},
		-- Rear Indicators
	[17] = {Vector( 38.95, -154.955, 35.20), Angle( 0, 6.27, 0 ), "tail_indicator"},
	[18] = {Vector( -38.95, -154.955, 35.20), Angle( 0, -6.27, 0 ), "tail_indicator"},
	[19] = {Vector( 39, -154.961, 37.7), Angle( 0, 6.3, 0 ), "tail_indicator"},
	[20] = {Vector( -39, -154.961, 37.7), Angle( 0, -6.3, 0 ), "tail_indicator"},
		-- Low Break
	[21] = {Vector( 38.85, -155, 40.84), Angle( 0, 6.3, 0.3 ), "tail_break"},
	[22] = {Vector( -38.85, -155, 40.84), Angle( 0, -6.3, 0.3 ), "tail_break"},
		-- Reversing Lights
	[23] = {Vector( 38.73, -154.9, 45.74), Angle( -5, 6.3, -2.55 ), "tail_reverse"},
	[24] = {Vector( -38.73, -154.9, 45.74), Angle( 5, -6.3, -2.55 ), "tail_reverse"},
		-- Upper Break
	[25] = {Vector( 38.85, -155.07, 51.5), Angle( -6, 7.5, 0.5 ), "tail_break"},
	[26] = {Vector( -38.85, -155.07, 51.5), Angle( 6, -7.5, 0.5 ), "tail_break"},

	-- Tail Lights (Side)
		-- Running Lights
	[27] = {Vector( 41.74, -150.955, 32.67), Angle( 0, 90, 0 ), "tail_side_running"},
	[28] = {Vector( -41.74, -150.955, 32.67), Angle( 0, -90, 0 ), "tail_side_running"},
		-- Rear Indicators
	[29] = {Vector( 41.74, -151.1, 35.1), Angle( 0, 90, 0 ), "tail_side_indicator"},
	[30] = {Vector( -41.74, -151.1, 35.1), Angle( 0, -90, 0 ), "tail_side_indicator"},
	[31] = {Vector( 41.74, -151.1, 37.7), Angle( 0, 90, 0 ), "tail_side_indicator"},
	[32] = {Vector( -41.74, -151.1, 37.7), Angle( 0, -90, 0 ), "tail_side_indicator"},
		-- Low Break
	[33] = {Vector( 41.74, -151.15, 40.84), Angle( 0, 90, 0 ), "tail_side_break"},
	[34] = {Vector( -41.74, -151.15, 40.84), Angle( 0, -90, 0 ), "tail_side_break"},
		-- Reversing Lights
	[35] = {Vector( 41.48, -151, 45.95), Angle( 0, 90, -5.05 ), "tail_side_reverse"},
	[36] = {Vector( -41.48, -151, 45.95), Angle( 0, -90, -5.05 ), "tail_side_reverse"},
		-- Upper Break
	[37] = {Vector( 41.38, -151.07, 52), Angle( 0, 90, -2 ), "tail_side_break_upper"},
	[38] = {Vector( -41.38, -151.07, 52), Angle( 0, -90, -2 ), "tail_side_break_upper"},

	-- Mirror Indicators
	[39] = {Vector( 51.7, 78.65, 58.3), Angle( -91, 90, -6.3 ), "indicator_side"},
	[40] = {Vector( -51.7, 78.65, 58.3), Angle( -91, -90, -6.3 ), "indicator_side"},
}
PI.States = {}
PI.States.Headlights = {{1, SW, 0.7}, {2, SW, 0.7}, {3, SW, 0.5}, {4, SW, 0.5}, {5, SW, 0.25}, {6, SW, 0.25}}
PI.States.Brakes = {
	{21, R}, {22, R},
	{25, R}, {26, R},
	{33, R}, {34, R},
	{37, R}, {38, R},
}
PI.States.Blink_Left = {
	{18, A}, {20, A},
	{30, A}, {32, A},
	{40, A},
}
PI.States.Blink_Right = {
	{17, A}, {19, A},
	{29, A}, {31, A},
	{39, A},
}
PI.States.Reverse = {
	{23, W}, {24, W},
	{35, W},{36, W},
}
PI.States.Running = {
	{1, SW, 0.7}, {2, SW, 0.7}, {3, SW, 0.5}, {4, SW, 0.5}, {5, SW, 0.25}, {6, SW, 0.25},
	{7, A}, {8, A}, {9, A},
	{10, A}, {11, A}, {12, A},
	{13, A}, {14, A},
	{15, DR}, {16, DR},
	{27, DR},{28, DR},
}

local V = {
	-- Required information
	Name =	name,
	Class = "prop_vehicle_jeep",
	Category = "Internet's Emergency",

	-- Optional information
	Author = "LoneWolfie, Schmal, Doctor Internet",
	Information = "vroom vroom",
	Model =	"models/LoneWolfie/merc_sprinter_lwb.mdl",

	KeyValues = {
		vehiclescript =	"scripts/vehicles/LWCars/merc_sprinter_swb.txt"
	},
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = PI
}

list.Set( "Vehicles", V.Name, V )

if EMVU then EMVU:OverwriteIndex( name, EMV ) end
if Photon then Photon:OverwriteIndex( name, PI ) end