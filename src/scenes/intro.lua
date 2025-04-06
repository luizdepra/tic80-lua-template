-- intro scene --
require("consts")
require("common")

local Scene = require("scenes.scene")

local IntroScene = Scene:extend("IntroScene")

function IntroScene:__init(table)
	self.super:__init(table)
end

function IntroScene:update()
	if btnp(BUTTONS.A) then
		G.SM:switch("game")
	end
end

function IntroScene:draw()
	cls()
	cprint("Boot Scene", 40, COLORS.YELLOW)
end

return IntroScene
