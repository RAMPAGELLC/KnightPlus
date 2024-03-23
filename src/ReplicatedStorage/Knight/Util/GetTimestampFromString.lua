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

return function(str: string)
	local now = os.time() + (tonumber(string.sub(str, 0, -2)) * 60 * 60 * 24 * 7)

	if string.sub(str, -3) == "sec" then
		return now + tonumber(string.sub(str, 0, -4))
	end

	if string.sub(str, -3) == "min" then
		return now + (tonumber(string.sub(str, 0, -4)) * 60)
	end

	if string.sub(str, -3) == "hrs" then
		return now + (tonumber(string.sub(str, 0, -4)) * 60 * 60)
	end

	if string.sub(str, -1) == "d" then
		return now + (tonumber(string.sub(str, 0, -2)) * 60 * 60 * 24)
	end

	if string.sub(str, -1) == "w" then
		return now + (tonumber(string.sub(str, 0, -2)) * 60 * 60 * 24 * 7)
	end

	if string.sub(str, -1) == "y" then
		return now + (tonumber(string.sub(str, 0, -2)) * 60 * 60 * 24 * 7 * 52)
	end

	if string.sub(str, -1) == "p" then
		local str = "12"
		return "perm", now + (tonumber(string.sub(str, 0, -2)) * 60 * 60 * 24 * 7 * 52)
	end
end
