-- size --
local Object = require("object")

local Size = Object:extend("Size")

function Size:__init(table)
	self.width = table.width or 0
	self.height = table.height or 0
end

return Size
