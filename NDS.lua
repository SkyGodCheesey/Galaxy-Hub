local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Galaxy Hub - NDS", HidePremium = false, SaveConfig = true, ConfigFolder = "galaxy-nds"})
-- tabs
-- functions
function aw()
    while _G.aw == true do

game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-280, 279, 352))
wait()
end
end
_G.aw = true
local Tab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
-- secctions
local Section = Tab:AddSection({
    Name = "Galaxy"
})
Tab:AddToggle({
    Name = "WIN AUTO",
    Default = false,
    Callback = function(Value)
        _G.aw = Value
        aw()
    end 
})

OrionLib:MakeNotification({
    Name = "Loaded Galaxy - NDS",
    Content = "1.0.0 - Enjoy",
    Image = "rbxassetid://4483345998",
    Time = 5
})
OrionLib:Init()
