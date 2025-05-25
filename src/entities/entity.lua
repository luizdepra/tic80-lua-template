-- entity --
require("consts")

local Object = require("object")
local Size = require("components.size")
local Position = require("components.position")

local Entity = Object:extend("Entity")

function Entity:__init(table)
	self.size = table.size or Size:new {
		width = TILE_SIZE,
		height = TILE_SIZE
	}
	self.position = table.position or Position:new {
		x = 0,
		y = 0
	}
	self.key_color = table.key_color or 0
	self.frame = table.frame or 1
	self.frame_time = table.frame_time or 0
	self.cur_anim = table.cur_anim or nil
	self.anim = table.anim or {}
end

function Entity:update()
	self.frame_time = self.frame_time + 1
	if self.frame_time >= self.anim[self.cur_anim].speed then
		self.frame = self.frame + 1
		if self.frame > #self.anim[self.cur_anim].frames then
			self.frame = 1
		end
		self.frame_time = 0
	end
end

function Entity:draw()
	local sprite = self.anim[self.cur_anim].frames[self.frame]
	spr(sprite, self.position.x, self.position.y, self.key_color)
end

return Entity
