-- consts --
local BLACK = 0
local PURPLE = 1
local RED = 2
local ORANGE = 3
local YELLOW = 4
local L_GREEN = 5
local GREEN = 6
local D_GREEN = 7
local D_BLUE = 8
local BLUE = 9
local L_BLUE = 10
local CYAN = 11
local WHITE = 12
local L_GRAY = 13
local GRAY = 14
local D_GRAY = 15

local UP = 0
local DOWN = 1
local LEFT = 2
local RIGHT = 3
local A = 4 -- Z
local B = 5 -- X
local X = 6 -- A
local Y = 7 -- S
local NONE = 99

SCREEN_WIDTH = 240
SCREEN_HEIGHT = 136

TILE_SIZE = 8
SPRITE_SIZE = 8

MAPS_PER_ROW = 8
MAP_WIDTH = 30
MAP_HEIGHT = 17

BUTTONS = {
	A = A,
	B = B,
	X = X,
	Y = Y,
	LEFT = LEFT,
	RIGHT = RIGHT,
	UP = UP,
	DOWN = DOWN,
	NONE = NONE
}

DIRS = {
	[UP] = {
		x = 0,
		y = -1
	},
	[DOWN] = {
		x = 0,
		y = 1
	},
	[LEFT] = {
		x = -1,
		y = 0
	},
	[RIGHT] = {
		x = 1,
		y = 0
	},
	[NONE] = {
		x = 0,
		y = 0
	}
}

COLORS = {
	BLACK = BLACK,
	PURPLE = PURPLE,
	RED = RED,
	ORANGE = ORANGE,
	YELLOW = YELLOW,
	L_GREEN = L_GREEN,
	GREEN = GREEN,
	D_GREEN = D_GREEN,
	D_BLUE = D_BLUE,
	BLUE = BLUE,
	L_BLUE = L_BLUE,
	CYAN = CYAN,
	WHITE = WHITE,
	L_GRAY = L_GRAY,
	GRAY = GRAY,
	D_GRAY = D_GRAY
}
