local u = game:GetService("UserInputService")
local teleportingEnabled = false
local introSaid = false

if introSaid == false then
	print("F = Random Teleport \ SPACE = Infinite Jump \ G = Find Location \ N = Start Random Bang Session \ M = Stop Random Bang Session")
	introSaid = true
end


u.InputBegan:Connect(function(input) 

	-- TELEPORT TO A RANDOM PLAYER IN SERVER
    if input.KeyCode == Enum.KeyCode.F then
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
		
		while teleportingEnabled == true do
			print("hello world")
			humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			wait(0.1)
			
			pl.CFrame = game.Players[Randomplayer].Character.HumanoidRootPart.CFrame
		end	
	end
end)
