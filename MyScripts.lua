local u = game:GetService("UserInputService")
local teleportingEnabled = false
local introSaid = false
local banging = false
local swimming = false

local mouse = game.Players.LocalPlayer:GetMouse()

if introSaid == false then
	print(" \n F = Random Teleport \n SPACE = Infinite Jump \n G = Find Location \n N = Start Random Bang Session \n M = Stop Random Bang Session \n Hold LEFTCTRL + Click = Teleport to cursor location \n LEFTALT = Swimming in air")
	introSaid = true
end

local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local humanoid = game.Players.LocalPlayer.Character.Humanoid

function GetMouseCFrame() -- MOUSE CFRAME FINDER
	return mouse.Hit
end

u.InputBegan:Connect(function(input)
	-- LEFT ALT SWIM
	if input.KeyCode == Enum.KeyCode.LeftAlt then
		if swimming == false then
			humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
		end
		if swimming == true then
			humanoid:ChangeState(Enum.HumanoidStateType.None)
		end
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

		print(Randomplayer)

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
		print(pl.CFrame)
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

		print(Randomplayer)

		teleportingEnabled = true
		banging = true
		
		while teleportingEnabled == true do
			humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			wait(0.1)
			
			pl.CFrame = game.Players[Randomplayer].Character.HumanoidRootPart.CFrame
		end	
	end
end)
