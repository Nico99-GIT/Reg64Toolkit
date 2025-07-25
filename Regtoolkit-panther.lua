local ts = game:GetService("TeleportService")
local p = game:GetService("Players").LocalPlayer

local spammerDelay = 0.00000000001

local ReGui = loadstring(game:HttpGet('https://raw.githubusercontent.com/depthso/Dear-ReGui/refs/heads/main/ReGui.lua'))()

--[[
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣠⣤⣤⣄⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠤⠖⠊⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠙⠲⢤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⡤⠊⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⡜⠀⠀⠀⠀⠀⠀⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢢⠀⠀⠀⠀⠀⢳⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⣸⠁⠀⠀⠀⠀⠀⠀⠀⠱⡀⠀⠀⠀⠀⠀⠀⠀⡀⠈⠀⡀⠀⠀⠀⠈⡇⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⡏⠀⠀⠀⠀⠀⠀⠀⠀⡰⠁⠀⠀⠀⠀⠀⠀⠀⠘⡆⡜⠁⠀⠀⠀⠀⢧⡀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠸⡀⠀⠀⠀⠀⠀⣀⣤⡂⠀⠇⠱⠀⡀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⢇⠀⠀⠀⠀⠀⠀⠀⠀⠈⢄⡀⢠⣟⢭⣥⣤⠽⡆⠀⡶⣊⣉⣲⣤⢀⡞⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠘⣆⠀⠀⠀⠀⠀⠀⡀⠀⠐⠂⠘⠄⣈⣙⡡⡴⠀⠀⠙⣄⠙⣛⠜⠘⣆⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠈⢦⡀⠀⠀⠀⢸⠁⠀⠀⠀⠀⠀⠀⠄⠊⠀⠀⠀⠀⡸⠛⠀⠀⠀⢸⠆⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠈⠓⠦⢄⣘⣄⠀⠀⠀⠀⠀⠀⠀⡠⠀⠀⠀⠀⣇⡀⠀⠀⣠⠎⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⠁⠈⡟⠒⠲⣄⠀⠀⡰⠇⠖⢄⠀⠀⡹⡇⢀⠎⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡇⠀⠀⡇⠀⠀⠹⠀⡞⠀⠀⢀⠤⣍⠭⡀⢱⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢀⣀⣀⣠⠞⠀⠀⢠⡇⠀⠀⠀⠀⠁⠀⢴⠥⠤⠦⠦⡼⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣀⣤⣴⣶⣿⣿⡟⠁⠀⠋⠀⠀⠀⢸⠁⠀⠀⠀⠀⠀⠀⠀⠑⣠⢤⠐⠁⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⢸⡀⠀⠀⠀⠀⠀⠀⠀⠀⠬⠥⣄⠀⠀⠈⠲⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠙⠦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠈⢳⠀⠀⢀⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠒⠦⠤⢤⣄⣀⣠⠤⢿⣶⣶⣿⣿⣿⣶⣤⡀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡼⠁⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣄⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣦⣤⣤⣀⣀⣀⣀⣀⣀⣀⣤⣤⣤⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀
]]



-- Create GUI window
local Window = ReGui:Window({
	Title = [[⭐ Reg64 Toolkit ⭐ [FREE]]],
	Size = UDim2.fromOffset(300, 200)
})

ReGui.Accent = {
	Light = Color3.fromRGB(255, 165, 79),
	Dark = Color3.fromRGB(180, 85, 30),
	White = Color3.fromRGB(255, 240, 220),
	Gray = Color3.fromRGB(180, 140, 120),
	Black = Color3.fromRGB(15, 19, 24),
	Yellow = Color3.fromRGB(217, 180, 62),
	Orange = Color3.fromRGB(234, 157, 57),
	Green = Color3.fromRGB(130, 188, 91),
	Red = Color3.fromRGB(255, 69, 69),
}

Window:Label({Text=[[⭐ Reg64 Toolkit ⭐
This script is intended for the game: Regular 64]]})

Window:Label({Text=[[The Free Version Of Reg64 Toolkit will no longer get updated]]})

Window:Label({Text="-- Main --"})

Window:Button({
	Text = "ReJoin (WILL KILL SCRIPT)",
	Callback = function()
		ts:Teleport(game.PlaceId, p)
	end,
})

Window:Button({
	Text = "Unlock All Characters",
	Callback = function()
-- Services
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Remote
local Unlock = ReplicatedStorage.Unlock -- RemoteFunction 

Unlock:InvokeServer(
    {
        Name = "Wisple",
        Type = "Character"
    }
)

Unlock:InvokeServer(
    {
        Name = "Chipper",
        Type = "Character"
    }
)

Unlock:InvokeServer(
    {
        Name = "Woompol",
        Type = "Character"
    }
)

Unlock:InvokeServer(
    {
        Name = "Nommer",
        Type = "Character"
    }
)

Unlock:InvokeServer(
    {
        Name = "Servobot",
        Type = "Character"
    }
)

Unlock:InvokeServer(
    {
        Name = "Purrcipi",
        Type = "Character"
    }
)

Unlock:InvokeServer(
    {
        Name = "King Iro",
        Type = "Character"
    }
)

	end,
})

Window:Button({
	Text = "Load Infinite Yield",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end,
})

Window:Label({Text="-- Fun [SS] --"})

-- RGB thread control
getgenv().ToggleOn = false
local RGBThread = nil

Window:Checkbox({
	Value = false,
	Label = "Rainbow Shirt & Hat",
	Callback = function(self, Value: boolean)
		getgenv().ToggleOn = Value
		if Value then
			if RGBThread == nil then
				RGBThread = task.spawn(function()
					local ReplicatedStorage = game:GetService("ReplicatedStorage")
					local Customize = ReplicatedStorage:WaitForChild("Customize")

					local function HSVToRGB(h, s, v)
						local r, g, b
						local i = math.floor(h * 6)
						local f = h * 6 - i
						local p = v * (1 - s)
						local q = v * (1 - f * s)
						local t = v * (1 - (1 - f) * s)
						i = i % 6

						if i == 0 then r, g, b = v, t, p
						elseif i == 1 then r, g, b = q, v, p
						elseif i == 2 then r, g, b = p, v, t
						elseif i == 3 then r, g, b = p, q, v
						elseif i == 4 then r, g, b = t, p, v
						elseif i == 5 then r, g, b = v, p, q end

						return math.floor(r * 255) * 65536 + math.floor(g * 255) * 256 + math.floor(b * 255)
					end

					local hue = 0
					while getgenv().ToggleOn do
						local rgb = HSVToRGB(hue, 1, 1)
						Customize:FireServer(1, 3, rgb)
						Customize:FireServer(1, 2, rgb)
						hue = (hue + 0.01) % 1
						wait(0.05)
					end

					RGBThread = nil -- clear when done
				end)
			end
		end
	end
})

Window:Checkbox({
	Value = false,
	Label = "Rainbow Shoes (CHIPPER / General Overalls) ",
	Callback = function(self, Value: boolean)
		getgenv().ToggleOn = Value

		if Value then
			if RGBThread == nil then
				RGBThread = task.spawn(function()
					local ReplicatedStorage = game:GetService("ReplicatedStorage")
					local Customize = ReplicatedStorage:WaitForChild("Customize")

					local function HSVToRGB(h, s, v)
						local r, g, b
						local i = math.floor(h * 6)
						local f = h * 6 - i
						local p = v * (1 - s)
						local q = v * (1 - f * s)
						local t = v * (1 - (1 - f) * s)
						i = i % 6

						if i == 0 then r, g, b = v, t, p
						elseif i == 1 then r, g, b = q, v, p
						elseif i == 2 then r, g, b = p, v, t
						elseif i == 3 then r, g, b = p, q, v
						elseif i == 4 then r, g, b = t, p, v
						elseif i == 5 then r, g, b = v, p, q end

						return math.floor(r * 255) * 65536 + math.floor(g * 255) * 256 + math.floor(b * 255)
					end

					local hue = 0
					while getgenv().ToggleOn do
						local rgb = HSVToRGB(hue, 1, 1)
						Customize:FireServer(1, 1, rgb)
						hue = (hue + 0.01) % 1
						wait(0.05)
					end

					RGBThread = nil -- clear when done
				end)
			end
		end
	end
})

-- Sound spam toggle
getgenv().SoundSpamOn = false
local SoundSpamThread = nil

Window:Checkbox({
	Value = false,
	Label = "Sound Spammer (slam / Ground Pound Land)",
	Callback = function(self, Value: boolean)
		getgenv().SoundSpamOn = Value

		if Value and SoundSpamThread == nil then
			SoundSpamThread = task.spawn(function()
				local ReplicatedStorage = game:GetService("ReplicatedStorage")
				local DataFeed = ReplicatedStorage:WaitForChild("DataFeed")

				while getgenv().SoundSpamOn do
					DataFeed:FireServer(2, "slam")
					wait(spammerDelay)
				end

				SoundSpamThread = nil
			end)
		end
	end
})

-- Sound spam toggle
getgenv().SoundSpamOn = false
local SoundSpamThread = nil

Window:Checkbox({
	Value = false,
	Label = "Sound Spammer (wah / Single Jump)",
	Callback = function(self, Value: boolean)
		getgenv().SoundSpamOn = Value

		if Value and SoundSpamThread == nil then
			SoundSpamThread = task.spawn(function()
				local ReplicatedStorage = game:GetService("ReplicatedStorage")
				local DataFeed = ReplicatedStorage:WaitForChild("DataFeed")

				while getgenv().SoundSpamOn do
					DataFeed:FireServer(2, "wah")
					wait(spammerDelay)
				end

				SoundSpamThread = nil
			end)
		end
	end
})

Window:Checkbox({
	Value = false,
	Label = "Sound Spammer (hoo / Kick)",
	Callback = function(self, Value: boolean)
		getgenv().SoundSpamOn = Value

		if Value and SoundSpamThread == nil then
			SoundSpamThread = task.spawn(function()
				local ReplicatedStorage = game:GetService("ReplicatedStorage")
				local DataFeed = ReplicatedStorage:WaitForChild("DataFeed")

				while getgenv().SoundSpamOn do
					DataFeed:FireServer(2, "hoo")
					wait(spammerDelay)
				end

				SoundSpamThread = nil
			end)
		end
	end
})

getgenv().BLJAnywhere = false
local BLJAnywhereThread = nil

Window:Label({Text="-- Cheats --"})

Window:Checkbox({
	Label = "BLJ Anywhere",
	Value = false,
	Callback = function(_, val)
		getgenv().BLJAnywhere = val

		if val and not BLJAnywhereThread then
			BLJAnywhereThread = task.spawn(function()
				while getgenv().BLJAnywhere do
					local char = p.Character or p.CharacterAdded:Wait()
					local hrp = char:FindFirstChild("HumanoidRootPart")
					local hum = char:FindFirstChildOfClass("Humanoid")

					if hrp and hum then
						local moveDir = hrp.Velocity.Unit
						local lookDir = hrp.CFrame.LookVector

						local isMovingBackwards = moveDir:Dot(lookDir) < -0.3
						local isAirborne = hum.FloorMaterial == Enum.Material.Air

						if isMovingBackwards and isAirborne then
							hrp.Velocity = Vector3.new(hrp.Velocity.X, -100, hrp.Velocity.Z)
						end
					end

					task.wait(0.01)
				end
				BLJAnywhereThread = nil
			end)
		end
	end
})



Window:Console({
    LineNumbers = true
})


--[[ Optional UI extras
Window:InputText({Label = "string"})
Window:SliderFloat({Label = "float", Minimum = 0.0, Maximum = 1.0})
]]
