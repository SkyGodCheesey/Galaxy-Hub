--Galaxy Scripts Premium Gui

    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/SkyGodCheesey/Galaxy-Scripts-Premium/main/Vynixius%20Modded%20Library"))()
    local Window = Library:AddWindow({
        title = {"Galaxy Scripts", "Premium"},
        theme = {
            Accent = Color3.fromRGB(151, 32, 212)
        },
        key = Enum.KeyCode.RightControl,
        default = true
    })

--Values/Functions
    local Player = game:GetService("Players").LocalPlayer
    game:GetService("UserInputService").JumpRequest:Connect(function()
        if InfiniteJumpEnabled then
            Player.Character:WaitForChild("Humanoid"):ChangeState("Jumping")
        end
    end)

    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(1)
        vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)

--Home Tab
    local Tab = Window:AddTab("Home", {default = false})

    local Section = Tab:AddSection("Credits + Socials", {default = true})

    local Label = Section:AddLabel("Galaxy Stuff")

    local Button = Section:AddButton("BaconHacks101 Channel- Click to copy link", function()
        setclipboard("https://www.youtube.com/channel/UCt1UF4Glun5X_D-qXaJcQtg")
    end)

    local Button = Section:AddButton("Galaxy Channel- Click to copy link", function()
        setclipboard("https://www.youtube.com/channel/UClgGo0csMKyAV6VeFFIl_PA")
    end)

    local Button = Section:AddButton("Galaxy Discord Server- Click to copy link", function()
        setclipboard("https://www.discord.gg/44ANWfjDHD")
    end)

    local Label = Section:AddLabel("Vynixius")

    local Button = Section:AddButton("Vynixius Discord Server- Click to copy link", function()
        setclipboard("https://discord.gg/vynixius")
    end)

    local Button = Section:AddButton("YouTube Channel- Click to copy link", function()
        setclipboard("https://www.youtube.com/channel/UCesN1dL5oJEOQJBm1ww1gmw")
    end)

--Main Tab
    local Tab = Window:AddTab("Main")

    local Section = Tab:AddSection("Have Fun")

    local Button = Section:AddButton("Player ESP", function()
        loadstring(game:HttpGet("https://pastebin.com/raw/wnPevvmm", true))()
        loadstring(game:HttpGet("https://pastebin.com/raw/KFUmWP7A", true))()
        loadstring(game:HttpGet("https://pastebin.com/raw/bd67RgU9", true))()
    end)

    local Button = Section:AddButton("Free Cam", function()
        loadstring(game:HttpGet("https://pastebin.com/raw/yWcu7n2H", true))()
        game.StarterGui:SetCore("SendNotification", {Title="Free Cam"; Text="Press LeftControl + P"; Duration=5;})
    end)

--Player
local Tab = Window:AddTab("Player")
    
local Section = Tab:AddSection("Become Unstoppable")

local Slider = Section:AddSlider("Walkspeed", 16, 420, 16, {toggleable = false, default = false, flag = "Slider_Flag", fireontoggle = true, fireondrag = true, rounded = true}, function(val, bool)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = val
end)

local Slider = Section:AddSlider("Gravity", 1, 420, 196.2, {toggleable = false, default = false, flag = "Slider_Flag", fireontoggle = true, fireondrag = true, rounded = false}, function(val, bool)
	game:GetService("Workspace").Gravity = val
end)

local Toggle = Section:AddToggle("Infinite Jump", {flag = "Toggle_Flag", default = false}, function(bool)
    InfiniteJumpEnabled = bool
end)

local Toggle = Section:AddToggle("Click TP", {flag = "Toggle_Flag", default = false}, function(bool)
    if _G.WRDClickTeleport == nil then
        _G.WRDClickTeleport = bool
        
        local player = game:GetService("Players").LocalPlayer
        local UserInputService = game:GetService("UserInputService")
        local mouse = player:GetMouse()

        repeat wait() until mouse
        
        UserInputService.InputBegan:Connect(function(input, gameProcessed)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                if _G.WRDClickTeleport and UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                    player.Character:MoveTo(Vector3.new(mouse.Hit.x, mouse.Hit.y, mouse.Hit.z)) 
                end
            end
        end)
    else
        _G.WRDClickTeleport = not _G.WRDClickTeleport
        if _G.WRDClickTeleport then
            game.StarterGui:SetCore("SendNotification", {Title="Click teleport enabled"; Text="Press LeftControl + LeftClick"; Duration=5;})
        else
            game.StarterGui:SetCore("SendNotification", {Title="Click teleport disabled"; Text=""; Duration=5;})
        end
    end
end)

--Settings Tab
    local Tab = Window:AddTab("Settings")

    local Section = Tab:AddSection("Customization")

    local Picker = Section:AddPicker("Gui Theme Color", {color = Color3.fromRGB(151, 32, 212)}, function(color)
        Window:SetAccent(color)
    end)

    local Section = Tab:AddSection("Fun Stuff :>")



    local Section = Tab:AddSection("Be Careful Clicking Stuff Here")

    local Button = Section:AddButton("Destroy Gui", function()
        game:GetService("CoreGui")["Vynixius UI Library"]:Destroy()
    end)

    local Button = Section:AddButton("Disconnect From Server", function()
        game:GetService("Players").LocalPlayer:Kick("-")
    end)