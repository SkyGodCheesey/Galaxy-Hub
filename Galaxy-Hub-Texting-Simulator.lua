--Galaxy Scripts Texting Simulator
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/UI-Libraries/main/Vynixius/Source.lua"))()
    local Window = Library:AddWindow({
        title = {"Galaxy Hub", "Texting Simulator"},
        theme = {
            Accent = Color3.fromRGB(17, 209, 71)
        },
        key = Enum.KeyCode.RightControl,
        default = true
    })
    if game.PlaceId == 2580982329 then
        if _G.Loaded == true then
            game:GetService("CoreGui")["Vynixius UI Library"]:Destroy()
        end
    end
    _G.Loaded = true
 
--Values
    _G.autoTextAll = true
    _G.autoTextPhone = true
    _G.autoTextComputer = true
    _G.autoTextTablet = true
    _G.autoTextGame = true
    _G.autoSell = true
    _G.autoHack = true

--Functions
    function autoTextAll()
        while _G.autoTextAll == true do
            local A_1 = "Phone"
            local Event = game:GetService("ReplicatedStorage").Events.SendTexts
            Event:FireServer(A_1)
            wait()
            local A_1 = "Computer"
            local Event = game:GetService("ReplicatedStorage").Events.SendTexts
            Event:FireServer(A_1)
            wait()
            local A_1 = "Tablet"
            local Event = game:GetService("ReplicatedStorage").Events.SendTexts
            Event:FireServer(A_1)
            wait()
            local A_1 = "Game"
            local Event = game:GetService("ReplicatedStorage").Events.SendTexts
            Event:FireServer(A_1)
            wait()
        end
    end

    function autoTextPhone()
        while _G.autoTextPhone == true do
            local A_1 = "Phone"
            local Event = game:GetService("ReplicatedStorage").Events.SendTexts
            Event:FireServer(A_1)
            wait()
        end
    end

    function autoTextComputer()
        while _G.autoTextComputer == true do
            local A_1 = "Computer"
            local Event = game:GetService("ReplicatedStorage").Events.SendTexts
            Event:FireServer(A_1)
            wait()
        end
    end

    function autoTextTablet()
        while _G.autoTextTablet == true do
            local A_1 = "Tablet"
            local Event = game:GetService("ReplicatedStorage").Events.SendTexts
            Event:FireServer(A_1)
            wait()
        end
    end

    function autoTextGame()
        while _G.autoTextGame == true do
            local A_1 = "Game"
            local Event = game:GetService("ReplicatedStorage").Events.SendTexts
            Event:FireServer(A_1)
            wait()
        end
    end

    function autoSell()
        while _G.autoSell == true do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-75.3837585, 13.5104322, 1042.20142)
            wait(1)
        end
    end

    function autoHack()
        while _G.autoHack == true do
            local A_1 = 1
            local Event = game:GetService("ReplicatedStorage").Events.HackingTermStart
            Event:FireServer(A_1)

            local A_1 = game:GetService("Workspace").HackingTerminals.Hack1.HackColor.Wedge.Rewards
            local Event = game:GetService("ReplicatedStorage").Events.TerminalReward
            Event:FireServer(A_1)

            local Event = game:GetService("ReplicatedStorage").Events.TerminalReset
            Event:FireServer()

            local A_1 = 2
            local Event = game:GetService("ReplicatedStorage").Events.HackingTermStart
            Event:FireServer(A_1)

            local A_1 = game:GetService("Workspace").HackingTerminals.Hack2.HackColor.Wedge.Rewards
            local Event = game:GetService("ReplicatedStorage").Events.TerminalReward
            Event:FireServer(A_1)

            local Event = game:GetService("ReplicatedStorage").Events.TerminalReset
            Event:FireServer()
    
            local A_1 = 3
            local Event = game:GetService("ReplicatedStorage").Events.HackingTermStart
            Event:FireServer(A_1)

            local A_1 = game:GetService("Workspace").HackingTerminals.Hack3.HackColor.Wedge.Rewards
            local Event = game:GetService("ReplicatedStorage").Events.TerminalReward
            Event:FireServer(A_1)

            local Event = game:GetService("ReplicatedStorage").Events.TerminalReset
            Event:FireServer()

            local A_1 = 4
            local Event = game:GetService("ReplicatedStorage").Events.HackingTermStart
            Event:FireServer(A_1)

            local A_1 = game:GetService("Workspace").HackingTerminals.Hack4.HackColor.Wedge.Rewards
            local Event = game:GetService("ReplicatedStorage").Events.TerminalReward
            Event:FireServer(A_1)

            local Event = game:GetService("ReplicatedStorage").Events.TerminalReset
            Event:FireServer()

            local A_1 = 5
            local Event = game:GetService("ReplicatedStorage").Events.HackingTermStart
            Event:FireServer(A_1)

            local A_1 = game:GetService("Workspace").HackingTerminals.Hack5.HackColor.Wedge.Rewards
            local Event = game:GetService("ReplicatedStorage").Events.TerminalReward
            Event:FireServer(A_1)

            local Event = game:GetService("ReplicatedStorage").Events.TerminalReset
            Event:FireServer()
            wait()
        end
    end

--Home
    local Tab = Window:AddTab("Home", {default = true})
    local Section = Tab:AddSection("Credits + Socials", {default = true})
    local Label = Section:AddLabel("Galaxy Stuff")

    local Button = Section:AddButton("YouTube Channel- Click to copy link", function()
        setclipboard("https://www.youtube.com/channel/UCt1UF4Glun5X_D-qXaJcQtg")
    end)

    local Button = Section:AddButton("Discord Server- Click to copy link", function()
        setclipboard("https://www.discord.gg/PF7Hk4UeTx")
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

--Main
    local Tab = Window:AddTab("Main")

    local Section = Tab:AddSection("Enjoy")

    local Button = Section:AddButton("Auto Redeem Codes", function()
        local A_1 = "759245897875"
                local Event = game:GetService("ReplicatedStorage").Events.SubmitCode
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "emoji"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "texter"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "zingo"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "grinningemoji"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "textinglord"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "sorethumbs"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "specialsuprise"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "specialevent"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "yokaigames"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "meme"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "zingoyt"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "happythursday"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "valentines"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "lovelyhearts"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "rickythefishy"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "droidwars"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "applewars"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "partywcardi"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "bloodyshoes"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "shinynewphone"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "latesttablet"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "sadboi"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "partywcardi"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "pods"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "air"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "wireless"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "100k"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "gamepage"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "hacker"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "instagram"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "onthegram"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "beatsheadphones"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "rainbowpods"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "gamingstation"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "area51"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "alieninvasion"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "gamingdevices"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "yboxone"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "instagaming"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "gameboy"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "classicconsole"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "october"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "instapost"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "ephonepro"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "spookytime"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "sksksksk"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "everythingpro"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "thankyou"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "noobmojifun"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "richnoobmoji"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "funnynoobmoji"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "freeegg"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "lunarnewyear"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "teamdroid"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "teamapple"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "happyeaster"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "eastergram"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "aprilsuprise"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "nuclear"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "halloween"
                Event:FireServer(A_1)
                wait(0.1)
                A_1 = "trickortreat"
                Event:FireServer(A_1)
    end)

    local Button = Section:AddButton("Free Alien Laptop", function()
        local A_1 = "YoureBeingWatched"
        local Event = game:GetService("ReplicatedStorage").Events.EnterPassCode
        Event:FireServer(A_1)
    end)

    local Button = Section:AddButton("Hack Terminals", function()
        local A_1 = 1
        local Event = game:GetService("ReplicatedStorage").Events.HackingTermStart
        Event:FireServer(A_1)

        local A_1 = game:GetService("Workspace").HackingTerminals.Hack1.HackColor.Wedge.Rewards
        local Event = game:GetService("ReplicatedStorage").Events.TerminalReward
        Event:FireServer(A_1)

        local Event = game:GetService("ReplicatedStorage").Events.TerminalReset
        Event:FireServer()

        local A_1 = 2
        local Event = game:GetService("ReplicatedStorage").Events.HackingTermStart
        Event:FireServer(A_1)

        local A_1 = game:GetService("Workspace").HackingTerminals.Hack2.HackColor.Wedge.Rewards
        local Event = game:GetService("ReplicatedStorage").Events.TerminalReward
        Event:FireServer(A_1)

        local Event = game:GetService("ReplicatedStorage").Events.TerminalReset
        Event:FireServer()
 
        local A_1 = 3
        local Event = game:GetService("ReplicatedStorage").Events.HackingTermStart
        Event:FireServer(A_1)

        local A_1 = game:GetService("Workspace").HackingTerminals.Hack3.HackColor.Wedge.Rewards
        local Event = game:GetService("ReplicatedStorage").Events.TerminalReward
        Event:FireServer(A_1)

        local Event = game:GetService("ReplicatedStorage").Events.TerminalReset
        Event:FireServer()

        local A_1 = 4
        local Event = game:GetService("ReplicatedStorage").Events.HackingTermStart
        Event:FireServer(A_1)

        local A_1 = game:GetService("Workspace").HackingTerminals.Hack4.HackColor.Wedge.Rewards
        local Event = game:GetService("ReplicatedStorage").Events.TerminalReward
        Event:FireServer(A_1)

        local Event = game:GetService("ReplicatedStorage").Events.TerminalReset
        Event:FireServer()

        local A_1 = 5
        local Event = game:GetService("ReplicatedStorage").Events.HackingTermStart
        Event:FireServer(A_1)

        local A_1 = game:GetService("Workspace").HackingTerminals.Hack5.HackColor.Wedge.Rewards
        local Event = game:GetService("ReplicatedStorage").Events.TerminalReward
        Event:FireServer(A_1)

        local Event = game:GetService("ReplicatedStorage").Events.TerminalReset
        Event:FireServer()

    end)

    local Button = Section:AddButton("Destroy All Barriers/Doors", function()
        game:GetService("Workspace").Doors:Destroy()
    end)

--Auto Tab
    local Tab = Window:AddTab("Auto Farms")

    local Section = Tab:AddSection("Imagine actually playing the game lmao")

    local Button = Section:AddButton("Sell Texts", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-75.3837585, 13.5104322, 1042.20142)
        game:GetService("Workspace").Doors:Destroy()
    end)

    local Toggle = Section:AddToggle("Auto Sell", {flag = "Toggle_Flag", default = false}, function(bool)
        _G.autoSell = bool
        autoSell()
    end)

    local Toggle = Section:AddToggle("Auto Text All Devices", {flag = "Toggle_Flag", default = false}, function(bool)
        _G.autoTextAll = bool
        autoTextAll()
    end)

    local Toggle = Section:AddToggle("Auto Text Phone", {flag = "Toggle_Flag", default = false}, function(bool)
        _G.autoTextPhone = bool
        autoTextPhone()
    end)

    local Toggle = Section:AddToggle("Auto Text Computer", {flag = "Toggle_Flag", default = false}, function(bool)
        _G.autoTextComputer = bool
        autoTextComputer()
    end)

    local Toggle = Section:AddToggle("Auto Text Tablet", {flag = "Toggle_Flag", default = false},  function(bool)
        _G.autoTextTablet = bool
        autoTextTablet()
    end)

    local Toggle = Section:AddToggle("Auto Text Console", {flag = "Toggle_Flag", default = false}, function(bool)
        _G.autoTextGame = bool
        autoTextGame()
    end)

    local Toggle = Section:AddToggle("Auto Hack Terminals", {flag = "Toggle_Flag", default = false}, function(bool)
        _G.autoHack = bool
        autoHack()
    end)

--Teleports Tab
    local Tab = Window:AddTab("Teleports")

    local Section = Tab:AddSection("Game Pass Areas")

    local Button = Section:AddButton("VIP Area", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-118.209549, 102.685989, -2393.45776)
    end)

    local Button = Section:AddButton("Diamond Haven Area", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-297.759064, -119.550331, -1976.42725)
    end)

    local Button = Section:AddButton("Hat Area", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-295.747375, -119.551704, -2183.08374)
    end)

    local Section = Tab:AddSection("Auto Complete Obbies")

    local Button = Section:AddButton("Auto Finish All Obbies", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7483.5249, -179.140289, 661.924377)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2227.12183, -327.681061, 629.548889)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2073.04858, -305.592682, 641.427368)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2528.72412, -286.102051, 652.032898)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1153.32678, -36.3353424, -1777.61316)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2877.94214, -355.445251, 493.302155)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3779.26147, -86.5126648, -276.645782)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1909.87915, -336.598755, 647.338074)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2691.04956, -288.183044, 644.911987)
        wait(1)
        local Event = game:GetService("ReplicatedStorage").Events.LoadPlayer
        Event:FireServer()
    end)

    local Button = Section:AddButton("5K Text Obby", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7483.5249, -179.140289, 661.924377)
    end)

    local Button = Section:AddButton("25K Text Obby", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2227.12183, -327.681061, 629.548889)
    end)

    local Button = Section:AddButton("100K Text Obby", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2073.04858, -305.592682, 641.427368)
    end)

    local Button = Section:AddButton("1M Text Obby", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2528.72412, -286.102051, 652.032898)
    end)

    local Button = Section:AddButton("100M Text Obby", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1153.32678, -36.3353424, -1777.61316)
    end)

    local Button = Section:AddButton("500M Text Obby", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2877.94214, -355.445251, 493.302155)
    end)

    local Button = Section:AddButton("1B Text Obby", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3779.26147, -86.5126648, -276.645782)
    end)

    local Button = Section:AddButton("10B Text Obby", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1909.87915, -336.598755, 647.338074)
    end)

    local Button = Section:AddButton("100B Text Obby", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2691.04956, -286.183044, 644.911987)
    end)

    local Section = Tab:AddSection("Space Obbies")

    local Button = Section:AddButton("Unlock + Complete All Space Obbies", function()
        local args = {
            [1] = "163245",
            [2] = workspace.Portals.Portal1
        }
        
        game:GetService("ReplicatedStorage").Events.VerifyCode:FireServer(unpack(args))
        wait(0.25)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1426.3479, -162.761566, -2331.72461)
        wait(2)
    
        local args = {
            [1] = "413256",
            [2] = workspace.Portals.Portal2
        }
        
        game:GetService("ReplicatedStorage").Events.VerifyCode:FireServer(unpack(args))
        wait(0.25)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1436.33643, -141.497742, -2080.61475)
        wait(2)

        local args = {
            [1] = "615423",
            [2] = workspace.Portals.Portal3
        }
        
        game:GetService("ReplicatedStorage").Events.VerifyCode:FireServer(unpack(args))
        wait(0.25)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1385.00891, -143.762024, -1810.20215)
    end)

    local Label = Section:AddLabel("Moon")
    local Button = Section:AddButton("Unlock + Complete Moon Obby", function()
        local args = {
            [1] = "163245",
            [2] = workspace.Portals.Portal1
        }
        
        game:GetService("ReplicatedStorage").Events.VerifyCode:FireServer(unpack(args))
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1426.3479, -162.761566, -2331.72461)
    end)

    local Label = Section:AddLabel("Mars")
    local Button = Section:AddButton("Unlock + Complete Mars Obby", function()
        local args = {
            [1] = "413256",
            [2] = workspace.Portals.Portal2
        }
        
        game:GetService("ReplicatedStorage").Events.VerifyCode:FireServer(unpack(args))
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1436.33643, -141.497742, -2080.61475)
    end)
    
    local Label = Section:AddLabel("Star")
    local Button = Section:AddButton("Unlock + Complete Star Obby", function()
        local args = {
            [1] = "615423",
            [2] = workspace.Portals.Portal3
        }
            
        game:GetService("ReplicatedStorage").Events.VerifyCode:FireServer(unpack(args))
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1385.00891, -143.762024, -1810.20215)
    end)
    

--Settings Tab
    local Tab = Window:AddTab("Settings")

    local Section = Tab:AddSection("Customization")

    local Picker = Section:AddPicker("Gui Theme Color", {color = Color3.fromRGB(17, 209, 71)}, function(color)
        Window:SetAccent(color)
    end)

    local Section = Tab:AddSection("Fun Stuff :>")

    local Section = Tab:AddSection("Be Careful Clicking Stuff Here")

    local Button = Section:AddButton("Destroy Gui", function()
        game:GetService("CoreGui")["Vynixius UI Library"]:Destroy()
    end)

    local Button = Section:AddButton("Disconnect From Server", function()
        game:GetService("Players").LocalPlayer:Kick("Player Requested Kick")
    end)
