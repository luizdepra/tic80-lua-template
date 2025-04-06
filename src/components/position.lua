-- position --
require("consts")

local Object = require("object")

local Position = Object:extend("Position")

function Position:__init(table)
	self.x = table.x or 0
	self.y = table.y or 0
end

function Position:copy()
	return Position:new {
		x = self.x,
		y = self.y
	}
end

function Position:move_to(dir, step_size)
	if step_size == nil then
		step_size = TILE_SIZE
	end

	self.x = self.x + dir.x * step_size
	self.y = self.y + dir.y * step_size
end

return Position
