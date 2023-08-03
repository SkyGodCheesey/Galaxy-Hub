if game:GetService("Workspace").Lobby and game:GetService("Workspace").Lobby.Queues and game:GetService("Workspace").Lobby.Queues["bedwars_classic"] then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SkyGodCheesey/Galaxy-Hub/main/Bedwars.lua", true))()
elseif game.GameId == 873703865 then
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
elseif game.GameId == 495693931 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SkyGodCheesey/Galaxy-Hub/main/DoomspireBB.lua", true))()
elseif game.GameId == 210851291 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SkyGodCheesey/Galaxy-Hub/main/BABFT.lua", true))()
elseif game.PlaceId == 2248408710 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SkyGodCheesey/Galaxy-Hub/main/DestructionSim.lua", true))()
else
    game:GetService("Players").LocalPlayer:Kick("Game Not Supported")
end
