-- game scene --
require("consts")

local Scene = require("scenes.scene")

local GameScene = Scene:extend("GameScene")

function GameScene:__init(table)
	self.super:__init(table)
end

function GameScene:on_enter()
	trace("GameScene:on_enter")
end

function GameScene:update()

end

function GameScene:draw()
	cls()
	cprint("Game Scene", 40, COLORS.RED)
end

return GameScene
