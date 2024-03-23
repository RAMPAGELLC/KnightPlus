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

local UserInputService = game:GetService("UserInputService")

return function(ignore: {Instance}): (Instance|nil, CFrame, Vector3, Enum.Material)
	ignore = ignore or {}
	if workspace:FindFirstChild("Ignore") then table.insert(ignore, workspace:FindFirstChild("Ignore")) end
	
	local pos = UserInputService:GetMouseLocation()
	local camRay = workspace.CurrentCamera:ViewportPointToRay(pos.X, pos.Y, 1)
	local ray = Ray.new(camRay.Origin, camRay.Direction*999)
	local hit, pos, norm, mat = workspace:FindPartOnRayWithIgnoreList(ray, ignore, false, true)
	
	return hit, CFrame.new(pos, pos+ray.Direction), norm, mat
end