--[[
 _   __      _       _     _   
| | / /     (_)     | |   | |  
| |/ / _ __  _  __ _| |__ | |_ 
|    \| '_ \| |/ _` | '_ \| __|
| |\  \ | | | | (_| | | | | |_ 
\_| \_/_| |_|_|\__, |_| |_|\__|
                __/ |          
               |___/    
 
 (©) Copyright 2024 RAMPAGE Interactive, all rights reserved.
 Written by Metatable (@vq9o), Epicness and contributors.
 License: MIT

 Repository: https://github.com/RAMPAGELLC/knight
 Documentation: https://knight.vq9o.com
]]

local function plural(n)
	return n == 1 and "" or "s"
end

return function(seconds: number)
	local minutes = math.floor(seconds / 60)
	seconds = seconds % 60

	local hours = math.floor(minutes / 60)
	minutes = minutes % 60

	local days = math.floor(hours / 24)
	hours = hours % 24
	
    local s = nil;
	
    if days > 0 then
		s = days .. " day" .. plural(days)
		if hours > 0 then
			s = s .. ", " .. hours .. " hour" .. plural(hours)
		end
	elseif hours > 0 then
		s = hours .. " hour" .. plural(hours)
		if minutes > 0 then
			s = s .. ", " .. minutes .. " minute" .. plural(minutes)
		end
	elseif minutes > 0 then
		s = minutes .. " minute" .. plural(minutes)
		if seconds > 0 then
			s = s .. ", " .. seconds .. " second" .. plural(seconds)
		end
	else
		s = seconds .. " second" .. plural(seconds)
	end
	return s
end
