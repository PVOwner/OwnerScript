local GUI = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Key = Instance.new("ImageLabel")
local Text = Instance.new("TextLabel")
local VerifyFrame = Instance.new("Frame")
local KeyBox = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local VerifyButton = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local UICorner_4 = Instance.new("UICorner")
local UICorner_5 = Instance.new("UICorner")
local GuiRemoval = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")



GUI.Name = "GUI"
GUI.Parent = game.CoreGui

Main.Name = "Main"
Main.Parent = GUI
Main.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Main.BorderColor3 = Color3.fromRGB(27, 42, 53)
Main.Position = UDim2.new(0.413353175, 0, 0.441176474, 0)
Main.Size = UDim2.new(0.172441572, 0, 0.117647059, 0)

UICorner.Parent = Main

Key.Name = "Key"
Key.Parent = Main
Key.BackgroundTransparency = 1.000
Key.Position = UDim2.new(0.435148925, 0, 0.115340024, 0)
Key.Size = UDim2.new(0.128056228, 0, 0.338304013, 0)
Key.ZIndex = 2
Key.Image = "rbxassetid://3926307971"
Key.ImageColor3 = Color3.fromRGB(255, 38, 38)
Key.ImageRectOffset = Vector2.new(44, 324)
Key.ImageRectSize = Vector2.new(36, 36)

Text.Name = "Text"
Text.Parent = Main
Text.BackgroundColor3 = Color3.fromRGB(26, 26, 2)
Text.BackgroundTransparency = 1.000
Text.BorderColor3 = Color3.fromRGB(26, 26, 26)
Text.Position = UDim2.new(0.0327102803, 0, 0.370000005, 0)
Text.Size = UDim2.new(0.934579492, 0, 0.5, 0)
Text.Font = Enum.Font.SourceSansSemibold
Text.Text = "Key Required"
Text.TextColor3 = Color3.fromRGB(255, 255, 255)
Text.TextSize = 35.000
Text.TextWrapped = true

VerifyFrame.Name = "Verify Frame"
VerifyFrame.Parent = GUI
VerifyFrame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
VerifyFrame.Position = UDim2.new(0.388749182, 0, 0.569411755, 0)
VerifyFrame.Size = UDim2.new(0.222401291, 0, 0.15529412, 0)

KeyBox.Name = "Key Box"
KeyBox.Parent = VerifyFrame
KeyBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
KeyBox.Position = UDim2.new(0.216714069, 0, 0.0933334902, 0)
KeyBox.Size = UDim2.new(0.552679658, 0, 0.298396379, 0)
KeyBox.Font = Enum.Font.SourceSansSemibold
KeyBox.PlaceholderColor3 = Color3.fromRGB(80, 80, 80)
KeyBox.PlaceholderText = "Key"
KeyBox.Text = "hi"
KeyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyBox.TextScaled = true
KeyBox.TextSize = 14.000
KeyBox.TextWrapped = true

UICorner_2.Parent = KeyBox

if identifyexecutor() == "Synapse X" then
	request = syn.request
elseif identifyexecutor() == "Krnl" then
	request = http_request
else
	request = request
end

local suskey = request({Url = "https://pastebin.com/raw/du8VADN2",Method = "GET"}).Body

VerifyButton.Name = "Verify Button"
VerifyButton.Parent = VerifyFrame
VerifyButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
VerifyButton.Position = UDim2.new(0.13767235, 0, 0.491583407, 0)
VerifyButton.Size = UDim2.new(0.724637687, 0, 0.378787875, 0)
VerifyButton.Font = Enum.Font.SourceSansSemibold
VerifyButton.Text = "Verify Key"
VerifyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
VerifyButton.TextSize = 34.000
VerifyButton.MouseButton1Down:connect(function()
	if KeyBox.Text == suskey then
		local TweenService = game:GetService("TweenService")
		local key = game.CoreGui.GUI.Main.Key 
		local info = TweenInfo.new(0.6, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, false)

		local tween = TweenService:Create(key, info, {ImageColor3 = Color3.fromRGB(106, 255, 106)})

		tween:Play()
		
		game.StarterGui:SetCore("SendNotification", {Title = "Correct Key", Text = "Welcome", Icon = "rbxassetid://12206884774", Duration = 4})

		wait(7)

		GUI.Parent = nil

loadstring(game:HttpGet('https://freenote.biz/raw/oEqiZLeB1D'))()

	end
end)

UICorner_3.Parent = VerifyButton

UICorner_4.Parent = VerifyFrame
