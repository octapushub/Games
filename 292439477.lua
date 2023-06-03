CMDs[#CMDs + 1] = {NAME = 'game', DESC = 'Get current loaded game script.'}
CMDs[#CMDs + 1] = {NAME = 'esp', DESC = 'Enables the ESP.'}
CMDs[#CMDs + 1] = {NAME = 'noesp', DESC = 'Disables the ESP.'}

reloadCMDS()
addcmd('game',{},function(args, speaker)
    notify('Game', 'The current game script is for Phantom forces.')
end)

ESPenabled = false
CHMSenabled = false

function CreateESPBillboard(adornee)
    local billboard = Instance.new("BillboardGui")
    billboard.Name = "ESP"
    billboard.AlwaysOnTop = true
    billboard.Size = UDim2.new(4, 0, 5.5, 0)
    billboard.StudsOffset = Vector3.new(0, 0, 0)
    billboard.Parent = adornee
    billboard.Adornee = adornee.Torso
    
    local frame = Instance.new("Frame")
    frame.BackgroundColor3 = Color3.fromRGB(128, 0, 0) -- Maroon color
    frame.BackgroundTransparency = 0.75
    frame.BorderSizePixel = 0
    frame.Size = UDim2.new(1, 0, 1, 0)
    
    frame.Parent = billboard
end

function ESP()
	task.spawn(function()
        while true do
		    if ESPenabled then
                local blue = game:GetService("Workspace"):FindFirstChild("Players"):FindFirstChild("Bright blue"):GetChildren()
                for _, child in ipairs(blue) do
                    local success, result = pcall(function()
                        if child:FindFirstChild("ESP") == nil and child.Parent.Parent == game:GetService("Workspace"):FindFirstChild("Players") then
                            CreateESPBillboard(child)
                        end
                    end)
                end
                
                local orange = game:GetService("Workspace"):FindFirstChild("Players"):FindFirstChild("Bright orange"):GetChildren()
                for _, child in ipairs(orange) do
                    local success, result = pcall(function()
                        if child:FindFirstChild("ESP") == nil and child.Parent.Parent == game:GetService("Workspace"):FindFirstChild("Players") then
                            CreateESPBillboard(child)
                        end
                    end)
                end
                
                local dead = game:GetService("Workspace"):FindFirstChild("Ignore"):FindFirstChild("DeadBody"):GetChildren()
                for _, child in ipairs(dead) do
                    if child:FindFirstChild("ESP") then
                        child:FindFirstChild("ESP"):Destroy()
                    end
                end
            elseif CHMSenabled then
                local blue = game:GetService("Workspace"):FindFirstChild("Players"):FindFirstChild("Bright blue"):GetChildren()
                for _, child in ipairs(blue) do
                    local success, result = pcall(function()
                        if child:FindFirstChild("ESP") == nil and child.Parent.Parent == game:GetService("Workspace"):FindFirstChild("Players") then
                            CreateESPBillboard(child)
                        end
                    end)
                end
    
                local orange = game:GetService("Workspace"):FindFirstChild("Players"):FindFirstChild("Bright orange"):GetChildren()
                for _, child in ipairs(orange) do
                    local success, result = pcall(function()
                        if child:FindFirstChild("ESP") == nil and child.Parent.Parent == game:GetService("Workspace"):FindFirstChild("Players") then
                            CreateESPBillboard(child)
                        end
                    end)
                end
                local dead = game:GetService("Workspace"):FindFirstChild("Ignore"):FindFirstChild("DeadBody"):GetChildren()
                for _, child in ipairs(dead) do
                    if child:FindFirstChild("ESP") then
                        child:FindFirstChild("ESP"):Destroy()
                    end
                end
            else
                local blue = game:GetService("Workspace"):FindFirstChild("Players"):FindFirstChild("Bright blue"):GetChildren()
                for _, child in ipairs(blue) do
                    local success, result = pcall(function()
                        if child:FindFirstChild("ESP") then
                            child:FindFirstChild("ESP"):Destroy()
                        end
                    end)
                end
    
                local orange = game:GetService("Workspace"):FindFirstChild("Players"):FindFirstChild("Bright orange"):GetChildren()
                for _, child in ipairs(orange) do
                    local success, result = pcall(function()
                        if child:FindFirstChild("ESP") then
                            child:FindFirstChild("ESP"):Destroy()
                        end
                    end)
                end
                local dead = game:GetService("Workspace"):FindFirstChild("Ignore"):FindFirstChild("DeadBody"):GetChildren()
                for _, child in ipairs(dead) do
                    if child:FindFirstChild("ESP") then
                        child:FindFirstChild("ESP"):Destroy()
                    end
                end
                break
            end
            wait()
        end
	end)
end


addcmd('esp',{},function(args, speaker)
    ESPenabled = true
    ESP()
end)

addcmd('noesp',{'espoff'},function(args, speaker)
    ESPenabled = false
end)
