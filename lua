local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Hentai Hub", "GrapeTheme")



-- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")



-- LOCAL PLAYER
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")

PlayerSection:NewSlider("WalkSpeed", "Player go brrrrrr", 500, 16, function(ws) -- 500 (MaxValue) | 16 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = ws
end)

PlayerSection:NewSlider("JumpPower", "Car go space", 500, 50, function(jp) -- 500 (MaxValue) | 50 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = jp 
end)

PlayerSection:NewButton("TpTool", "Its how it sounds, you ratchet dog", function()
    mouse = game.Players.LocalPlayer:GetMouse()
    tool = Instance.new("Tool")
    tool.RequiresHandle = false
    tool.Name = "TpTool"
    tool.Activated:connect(function()
    local pos = mouse.Hit+Vector3.new(0,2.5,0)
    pos = CFrame.new(pos.X,pos.Y,pos.Z)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end)
    tool.Parent = game.Players.LocalPlayer.Backpack
end)

-- for the infinite jump
local m = plr:GetMouse()
local plr = game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')

PlayerSection:NewToggle("Infinite Jump", "Lets you infinitly jump", function(state)
    if state then
        print("Toggle On")
        Humanoid:ChangeState("Jumping")
        wait()
        Humanoid:ChangeState("Seated")
    else
        print("Toggle Off")
    end
end)



-- OTHER
local Other = Window:NewTab("Other")
local OtherSection = Other:NewSection("Other")

OtherSection:NewKeybind("Toggle UI", "For Computers", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)
