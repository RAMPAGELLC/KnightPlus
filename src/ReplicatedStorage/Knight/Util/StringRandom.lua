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

return function(length: number)
	local chars = {
		"q",
		"w",
		"e",
		"r",
		"t",
		"y",
		"u",
		"i",
		"o",
		"p",
		"a",
		"s",
		"d",
		"f",
		"g",
		"h",
		"j",
		"k",
		"l",
		"z",
		"x",
		"c",
		"v",
		"b",
		"n",
		"m",
		"1",
		"2",
		"3",
		"4",
		"5",
		"6",
		"7",
		"8",
		"9",
		"0",
		"X",
		"A",
		"B",
		"V",
		"R",
		"I",
		"O",
		"P",
		"L",
	}
	local str = ""

	for i = 1, length do
		str = str .. chars[math.random(1, #chars)]
	end

	return str
end
