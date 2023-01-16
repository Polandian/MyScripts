local u = game:GetService("UserInputService")
local teleportingEnabled = false
local introSaid = false



if introSaid == false then
	print(" \n F = Random Teleport \n SPACE = Infinite Jump \n G = Find Location \n N = Start Random Bang Session \n M = Stop Random Bang Session")
	introSaid = true
end


local names = game.Players:GetPlayers()
for i = 1, #names do names[i] = names[i].Name end

local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local humanoid = game.Players.LocalPlayer.Character.Humanoid


game:GetService("Players").LocalPlayer.Chatted:Connect(function(msg)
	if table.find(names, msg) then
		if msg:match(";teleport ") or msg:match(":tp ") then
			
			if msg:match(names[1]) then
				humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
				wait(0.1)

				pl.CFrame = game.Players[names[1]].Character.HumanoidRootPart.CFrame
			end
			if msg:match(names[2]) then
				humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
				wait(0.1)

				pl.CFrame = game.Players[names[2]].Character.HumanoidRootPart.CFrame
			end
			if msg:match(names[3]) then
				humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
				wait(0.1)

				pl.CFrame = game.Players[names[3]].Character.HumanoidRootPart.CFrame
			end
			if msg:match(names[4]) then
				humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
				wait(0.1)

				pl.CFrame = game.Players[names[4]].Character.HumanoidRootPart.CFrame
			end
			if msg:match(names[5]) then
				humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
				wait(0.1)

				pl.CFrame = game.Players[names[5]].Character.HumanoidRootPart.CFrame
			end
			if msg:match(names[6]) then
				humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
				wait(0.1)

				pl.CFrame = game.Players[names[6]].Character.HumanoidRootPart.CFrame
			end
			if msg:match(names[7]) then
				humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
				wait(0.1)

				pl.CFrame = game.Players[names[7]].Character.HumanoidRootPart.CFrame
			end
			if msg:match(names[8]) then
				humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
				wait(0.1)

				pl.CFrame = game.Players[names[8]].Character.HumanoidRootPart.CFrame
			end
			if msg:match(names[9]) then
				humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
				wait(0.1)

				pl.CFrame = game.Players[names[9]].Character.HumanoidRootPart.CFrame
			end
			if msg:match(names[10]) then
				humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
				wait(0.1)

				pl.CFrame = game.Players[names[10]].Character.HumanoidRootPart.CFrame
			end
			if msg:match(names[11]) then
				humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
				wait(0.1)

				pl.CFrame = game.Players[names[11]].Character.HumanoidRootPart.CFrame
			end
			if msg:match(names[12]) then
				humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
				wait(0.1)

				pl.CFrame = game.Players[names[12]].Character.HumanoidRootPart.CFrame
			end
			if msg:match(names[13]) then
				humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
				wait(0.1)

				pl.CFrame = game.Players[names[13]].Character.HumanoidRootPart.CFrame
			end
			if msg:match(names[14]) then
				humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
				wait(0.1)

				pl.CFrame = game.Players[names[14]].Character.HumanoidRootPart.CFrame
			end
			if msg:match(names[15]) then
				humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
				wait(0.1)

				pl.CFrame = game.Players[names[15]].Character.HumanoidRootPart.CFrame
			end
			if msg:match(names[16]) then
				humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
				wait(0.1)

				pl.CFrame = game.Players[names[16]].Character.HumanoidRootPart.CFrame
			end
		end
	end
end)

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
			humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			wait(0.1)
			
			pl.CFrame = game.Players[Randomplayer].Character.HumanoidRootPart.CFrame
		end	
	end
end)
