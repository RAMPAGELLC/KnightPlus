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

local Players = game:GetService("Players")
local TextService = game:GetService("TextService")

local function getTextObject(message: string, fromPlayerId: number)
	local textObject
	local success, errorMessage = pcall(function()
		textObject = TextService:FilterStringAsync(message, fromPlayerId)
	end)

	if success then
		return textObject
	elseif errorMessage then
		warn("Error generating TextFilterResult:", errorMessage)
	end

	return false
end

local function getFilteredMessage(textObject: TextFilterResult)
	local filteredMessage
	local success, errorMessage = pcall(function()
		filteredMessage = textObject:GetNonChatStringForBroadcastAsync()
	end)

	if success then
		return filteredMessage
	elseif errorMessage then
		warn("Error filtering message:", errorMessage)
	end

	return false
end

return function(from: Player | nil, text: string): string | boolean
	if from == nil then
		from = Players:GetPlayers()[1]
	end
	return getFilteredMessage(getTextObject(text, from.UserId))
end
