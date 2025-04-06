-- scene manager --
local Object = require("object")

local SceneManager = Object:extend("SceneManager")

function SceneManager:__init()
	self.scenes = {}
	self.current = nil
end

function SceneManager:add(name, scene)
	self.scenes[name] = scene
end

function SceneManager:switch(name)
	if self.current ~= name then
		if self.current then
			self.scenes[self.current]:on_exit()
		end
		self.current = name
		self.scenes[self.current]:on_enter()
	end
end

function SceneManager:update()
	self.scenes[self.current]:update()
end

function SceneManager:draw()
	self.scenes[self.current]:draw()
end

return SceneManager
