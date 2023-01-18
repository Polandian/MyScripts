local u = game:GetService("UserInputService")
local teleportingEnabled = false
local introSaid = false
local banging = false
local Players = game:GetService("Players")
local LocalPlayer = game:GetService("Players").LocalPlayer

local mouse = game.Players.LocalPlayer:GetMouse()

if introSaid == false then
		warn(" \n F = Random Teleport \n SPACE = Infinite Jump \n G = Find Location \n N = Start Random Bang Session \n M = Stop Random Bang Session \n Hold CTRL + Click = Teleport to cursor location \n P = Increase Speed + Jump \n Y = Reset")
	introSaid = true
end

local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local humanoid = game.Players.LocalPlayer.Character.Humanoid
local char = game.Players.LocalPlayer.Character


function GetMouseCFrame() -- MOUSE CFRAME FINDER
	return mouse.Hit
end

--INVINCIBILITY
local function Invincibility()
	if LocalPlayer.Character then
     	for i, v in pairs(LocalPlayer.Character:GetChildren()) do
            if v.Name == "hitbox" then
            	v:Destroy()
        	end
    	end
	end
end
humanoid.MaxHealth = 1000000000000000000000
humanoid.Health = 100000000000000000000000
humanoid.HealthDisplayDistance = 500
Invincibility(LocalPlayer)
warn("Invincibility granted")

u.InputBegan:Connect(function(input)
	-- SPEED AND JUMP
	if input.KeyCode == Enum.KeyCode.P then
		humanoid.WalkSpeed = 100
		humanoid.JumpPower = 90
	end
	-- LEFT CTRL TELEPORT
	while u:IsKeyDown(Enum.KeyCode.LeftControl) == true do
		mouseCFrame = GetMouseCFrame()
		wait(0.05)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			wait(0.1)

			pl.CFrame = mouseCFrame
			break
		end
	end

	-- TELEPORT TO A RANDOM PLAYER IN SERVER
    if input.KeyCode == Enum.KeyCode.F then
		if banging == true then
			game.Players.LocalPlayer:Kick("Close the fucking app bitch")
		end

        local Players = game.Players:GetPlayers()
		local nplrs = #Players
		local Randomplayer1 = nil
		if nplrs > 0 then
    		Randomplayer1 = Players[math.random(1, nplrs)]
		end

		local Randomplayer = tostring(Randomplayer1)

		warn(Randomplayer)

		humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
		wait(0.1)

		pl.CFrame = game.Players[Randomplayer].Character.HumanoidRootPart.CFrame
    end

	-- INFINITE JUMP
    if input.KeyCode == Enum.KeyCode.Space then
		local humanoid = game.Players.LocalPlayer.Character.Humanoid
		humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
		wait(0.1)
	end

	-- FIND LOCATION
	if input.KeyCode == Enum.KeyCode.G then
		local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
		warn(pl.CFrame)
	end

	-- TELEPORT TO SPESIFIC LOCATION
	-- if input.KeyCode == Enum.KeyCode.H then
		-- local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
		-- pl.CFrame = CFrame.new(413, 45, 4576)
	-- end

	-- STOPS BANGING SESSION
	if input.KeyCode == Enum.KeyCode.M then
		teleportingEnabled = false
		banging = false
		warn("You stopped teleporting!")
	end

	-- PICKS RANDOM PLAYER TO START BANGING SECTION
    if input.KeyCode == Enum.KeyCode.N then

        local Players = game.Players:GetPlayers()
		local nplrs = #Players
		local Randomplayer1 = nil
		local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
		local humanoid = game.Players.LocalPlayer.Character.Humanoid
		if nplrs > 0 then
    		Randomplayer1 = Players[math.random(1, nplrs)]
		end

		local Randomplayer = tostring(Randomplayer1)

		warn(Randomplayer)

		teleportingEnabled = true
		banging = true
		
		while teleportingEnabled == true do
			humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			wait(0.1)
			
			pl.CFrame = game.Players[Randomplayer].Character.HumanoidRootPart.CFrame
		end	
	end
	-- RESET
	if input.KeyCode == Enum.KeyCode.Y then
		humanoid.Health = humanoid.Health - humanoid.Health
		warn("oof")
	end
end)
