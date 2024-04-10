local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Hentai Hub", "GrapeTheme")


-- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Movement")


-- LOCAL PLAYER
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")

PlayerSection:NewSlider("WalkSpeed", "Player go brrrrrr", 500, 16, function(ws) -- 500 (MaxValue) | 16 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = ws
end)

PlayerSection:NewSlider("JumpPower", "Car go space", 500, 50, function(jp) -- 500 (MaxValue) | 50 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = jp 
end)


-- OTHER
local Other = Window:NewTab("Other")
local OtherSection = Other:NewSection("Other")
