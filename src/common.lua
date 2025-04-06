-- debug helper --
function dump(o)
	if type(o) == 'table' then
		local s = '{ '
		for k, v in pairs(o) do
			if type(k) ~= 'number' then
				k = '"' .. k .. '"'
			end
			s = s .. '[' .. k .. '] = ' .. dump(v) .. ','
		end
		return s .. '} '
	else
		return tostring(o)
	end
end

-- print utils --
function cprint(t, y, c)
	local w = print(t, -8, -8)
	local x = (240 - w) / 2
	print(t, x, y, c)
end
