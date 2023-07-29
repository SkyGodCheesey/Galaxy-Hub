if game.GameId == 873703865 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SkyGodCheesey/Galaxy-Hub/main/Westbound.lua", true))()
elseif game.GameId == 65241 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SkyGodCheesey/Galaxy-Hub/main/NDS.lua", true))()
elseif game.GameId == 923621948 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SkyGodCheesey/Galaxy-Hub/main/Texting-Simulator.lua", true))()
elseif game.GameId == 703124385 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SkyGodCheesey/Galaxy-Hub/main/TOH.lua", true))()
elseif game.GameId == 4214708235 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SkyGodCheesey/Galaxy-Hub/main/EverySecondPlusOne.lua", true))()
elseif game.GameId == 598419145 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SkyGodCheesey/Galaxy-Hub/main/OnlyUpBlox.lua", true))()
elseif game.GameId == 2619619496 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SkyGodCheesey/Galaxy-Hub/main/Bedwars.lua", true))()
else
    game:GetService("Players").LocalPlayer:Kick("Game Not Supported")
end
