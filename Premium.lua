


-- Services
local ReGui = loadstring(game:HttpGet('https://raw.githubusercontent.com/depthso/Dear-ReGui/refs/heads/main/ReGui.lua'))()
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

    -- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ClownPopup"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

-- Create ImageLabel
local imageLabel = Instance.new("ImageLabel")
imageLabel.Name = "ClownImage"
imageLabel.Parent = screenGui
imageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
imageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
imageLabel.Size = UDim2.new(0.25, 0, 0.25, 0)
imageLabel.BackgroundTransparency = 1
imageLabel.Image = "rbxassetid://129505940956796"
imageLabel.ScaleType = Enum.ScaleType.Fit

task.delay(2, function()
    screenGui:Destroy()
end)

local whitelist = {
	[9014878864] = true, -- Replace with actual UserIds
	[87654321] = true
}

local Players = game:GetService("Players")
local player = Players.LocalPlayer
while not player do task.wait() player = Players.LocalPlayer end

if whitelist[player.UserId] then

local Window = ReGui:TabsWindow({
Title = "Reg64 Toolkit ",
Size = UDim2.fromOffset(300, 200)
}) --> TabSelector & WindowClass

ReGui.Accent = {
	-- Orange-themed accent colors
	Light = Color3.fromRGB(255, 200, 120),     -- Light orange
	Dark = Color3.fromRGB(180, 85, 30),        -- Dark orange/brown
	White = Color3.fromRGB(255, 240, 220),     -- Warm off-white
	Gray = Color3.fromRGB(200, 150, 120),      -- Warm gray-orange
	Black = Color3.fromRGB(60, 30, 10),        -- Very dark orange-brown
	Yellow = Color3.fromRGB(255, 191, 90),     -- Yellowish orange
	Orange = Color3.fromRGB(234, 157, 57),     -- Classic orange
	Green = Color3.fromRGB(255, 180, 100),     -- Orange-tinted green (optional)
	Red = Color3.fromRGB(255, 100, 70),        -- Reddish orange
}

local MainTab = Window:CreateTab({Name = "Main"})

MainTab:Label({
    Text = "Welcome, " .. player.DisplayName
})

MainTab:Label({
    Text = "You Are A Whitelisted User"
})

MainTab:Button({
	Text = "ReJoin (WILL KILL SCRIPT)",
	Callback = function()
		ts:Teleport(game.PlaceId, p)
	end,
})

MainTab:Button({
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

else
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "Access Denied",
		Text = "You are not whitelisted.",
		Duration = 5
	})
end




