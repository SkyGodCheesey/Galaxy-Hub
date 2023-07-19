local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Galaxy Hub - TOH", HidePremium = false, SaveConfig = true, ConfigFolder = "galaxy-toh"})
-- tabs


local Tab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
local Tab2 = Window:MakeTab({
    Name = "Other",
    Icon = "rbxassetid://4483345998"
})
-- sections
local Section = Tab2:AddSection({
    Name = "Galaxy"
})

local Section = Tab:AddSection({
    Name = "Galaxy"
})

-- funcs
function aw()
    while _G.aw == true do
        local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

humanoidRootPart.CFrame = game:GetService("Workspace").tower.sections.finish.exit.ParticleBrick.CFrame
        wait(.0001)
    end
end
-- values
_G.aw = true
-- buttons

Tab:AddButton({
    Name = "Bypass AC",
    Callback = function()
        gamemt.__namecall = newcclosure(function(...)
            if (getnamecallmethod() == 'Kick') then return nil end
            return oldNc(...)
          end)
      end    
})
Tab:AddButton({
    Name = "Win",
    Callback = function()
        local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

humanoidRootPart.CFrame = game:GetService("Workspace").tower.sections.finish.exit.ParticleBrick.CFrame
        
    end 
})
Tab:AddToggle({
    Name = "AutoWin",
    Default = false,
    Callback = function(Value)
        _G.aw = Value
        aw()
    end 
})
Tab2:AddButton({
Name = "Anti-Afk",
Callback = function()
wait()
game.StarterGui:SetCore("SendNotification", {
Title = "[ System ] Galaxy"; -- the title (ofc)
Text = "Anti AFK | Activated"; -- what the text says (ofc)
Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"; -- the image if u want. 
Duration = 15; -- how long the notification should in secounds
})
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
end
})

-- notifs


OrionLib:MakeNotification({
    Name = "Loaded Galaxy - TOH",
    Content = "1.0.0 | Enjoy",
    Image = "rbxassetid://4483345998",
    Time = 5
})
OrionLib:Init()
