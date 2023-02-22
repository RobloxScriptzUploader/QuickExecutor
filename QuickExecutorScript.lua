--[[

		Gui2Lua™
		10zOfficial
		Version 1.0.0

]]


-- Instances

local cool = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextBox = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local Remotes = Instance.new("Folder")
local TextLabel = Instance.new("TextLabel")

-- Properties

cool.Name = "cool"
cool.Parent = game.Workspace.MainModule

Frame.Parent = cool
Frame.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Frame.Size = UDim2.new(0, 745, 0, 452)

UICorner.Parent = Frame

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox.Position = UDim2.new(0.0323566012, 0, 0.16059041, 0)
TextBox.Size = UDim2.new(0, 693, 0, 291)
TextBox.ClearTextOnFocus = false
TextBox.Font = Enum.Font.FredokaOne
TextBox.PlaceholderText = "Put ur stuff here"
TextBox.Text = ""
TextBox.TextColor3 = Color3.new(0, 0, 0)
TextBox.TextSize = 21
TextBox.TextWrapped = true
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top

UICorner_2.Parent = TextBox

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton.Position = UDim2.new(0.0299177673, 0, 0.82677269, 0)
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.Font = Enum.Font.Unknown
TextButton.Text = "Run"
TextButton.TextColor3 = Color3.new(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14
TextButton.TextWrapped = true

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_2.Position = UDim2.new(0.35841006, 0, 0.82677263, 0)
TextButton_2.Size = UDim2.new(0, 200, 0, 50)
TextButton_2.Font = Enum.Font.Unknown
TextButton_2.Text = "Clear"
TextButton_2.TextColor3 = Color3.new(0, 0, 0)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14
TextButton_2.TextWrapped = true

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_3.Position = UDim2.new(0.685260296, 0, 0.82677263, 0)
TextButton_3.Size = UDim2.new(0, 153, 0, 50)
TextButton_3.Font = Enum.Font.Unknown
TextButton_3.Text = "R6"
TextButton_3.TextColor3 = Color3.new(0, 0, 0)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14
TextButton_3.TextWrapped = true

Remotes.Name = "Remotes"
Remotes.Parent = Frame

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(-0.194483638, 0, 0.0566081256, 0)
TextLabel.Size = UDim2.new(0, 498, 0, 47)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "Dev Panel"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true

-- Module Scripts

local fake_module_scripts = {}

do -- TextButton_3.R6
	local script = Instance.new('ModuleScript', TextButton_3)
	script.Name = "R6"
	local function module_script()
		local R6Converter = {}
		function R6Converter.load(Plr)
		Plr = game.Players:WaitForChild(Plr)
		local FalseChar = script:WaitForChild("DefaultCharacter"):Clone()
		local PlayersCharacter = game.Players:GetCharacterAppearanceAsync(Plr.UserId):Clone()
		local FaceID = (Plr.Character:WaitForChild("Head"):FindFirstChild("face") or {Texture = "http://www.roblox.com/asset/?id=144080495"}).Texture
		local Accessories = {}
		FalseChar:WaitForChild("Head"):WaitForChild("face").Texture = FaceID
		FalseChar:SetPrimaryPartCFrame(Plr.Character:WaitForChild("HumanoidRootPart").CFrame)
		for _,Prt in pairs(PlayersCharacter:GetDescendants()) do
		if Prt:IsA("Accessory") or Prt:IsA("Hat") or Prt:IsA("BodyColors") or Prt:IsA("CharacterMesh")or Prt:IsA("Pants") or Prt:IsA("Shirt") or Prt:IsA("ShirtGraphic") or Prt:IsA("Tool") then
		table.insert(Accessories,Prt:Clone())
		end
		end
		
		for _,Prt in pairs(Plr.Character:GetChildren()) do
		Prt:Destroy()
		end
		for _,Prt in pairs(FalseChar:GetChildren()) do
		Prt.Parent = Plr.Character
		end
		for _,Prt in pairs(Accessories) do
		Prt.Parent = Plr.Character
		end
		
		
		end
		
		return R6Converter
		
	end
	fake_module_scripts[script] = module_script
end


-- Scripts

local function RTGD_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Remotes.Execute:FireServer(script.Parent.Parent.TextBox.Text)
	end)
end
coroutine.wrap(RTGD_fake_script)()
local function YQOTII_fake_script() -- TextButton_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton_2)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.TextBox.Text = ""
	end)
end
coroutine.wrap(YQOTII_fake_script)()
local function ECIZ_fake_script() -- TextButton_3.LocalScript 
	local script = Instance.new('LocalScript', TextButton_3)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	script.Parent.MouseButton1Click:Connect(function()
	script.RemoteEvent:FireServer()
	end)
end
coroutine.wrap(ECIZ_fake_script)()
local function PGWDGIS_fake_script() -- nil.Script 
	local script = Instance.new('Script', nil)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	script.Parent.RemoteEvent.OnServerEvent:Connect(function(player)
	require(script.Parent.Parent.R6).load(player.Name)
	end)
end
coroutine.wrap(PGWDGIS_fake_script)()
