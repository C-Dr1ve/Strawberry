-- Instances: 28 | Scripts: 6 | Modules: 0 | Tags: 0
local G2L = {};

-- StarterGui.Strawberry
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["IgnoreGuiInset"] = true;
G2L["1"]["DisplayOrder"] = 2147483647;
G2L["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
G2L["1"]["Name"] = [[Strawberry]];
G2L["1"]["ResetOnSpawn"] = false;


-- StarterGui.Strawberry.Main
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(255, 47, 85);
G2L["2"]["Size"] = UDim2.new(1, 0, 0, 75);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Name"] = [[Main]];
G2L["2"]["BackgroundTransparency"] = 0.35;


-- StarterGui.Strawberry.Main.TopBar
G2L["3"] = Instance.new("Frame", G2L["2"]);
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(255, 53, 56);
G2L["3"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["Name"] = [[TopBar]];
G2L["3"]["BackgroundTransparency"] = 0.65;


-- StarterGui.Strawberry.Main.TopBar.Title
G2L["4"] = Instance.new("TextLabel", G2L["3"]);
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["TextSize"] = 14;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4"]["BackgroundTransparency"] = 1;
G2L["4"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["Text"] = [[🍓Strawberry V7.5 (By Saji n C:\Drive)]];
G2L["4"]["Name"] = [[Title]];


-- StarterGui.Strawberry.Main.CommandBar
G2L["5"] = Instance.new("TextBox", G2L["2"]);
G2L["5"]["Visible"] = false;
G2L["5"]["Name"] = [[CommandBar]];
G2L["5"]["PlaceholderColor3"] = Color3.fromRGB(226, 226, 226);
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["TextWrapped"] = true;
G2L["5"]["TextSize"] = 14;
G2L["5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["RichText"] = true;
G2L["5"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["5"]["AnchorPoint"] = Vector2.new(1, 1);
G2L["5"]["ClearTextOnFocus"] = false;
G2L["5"]["PlaceholderText"] = [[(type command here) use help and settings commands for more info and Alt to toggle cmd bar, mobile cannot toggle]];
G2L["5"]["Size"] = UDim2.new(1, -10, 1, -40);
G2L["5"]["Position"] = UDim2.new(1, -5, 1, -5);
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["Text"] = [[]];
G2L["5"]["BackgroundTransparency"] = 0.75;


-- StarterGui.Strawberry.Main.CommandBar.UICorner
G2L["6"] = Instance.new("UICorner", G2L["5"]);
G2L["6"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.Strawberry.Main.CommandBar.MobileExecute
G2L["7"] = Instance.new("TextButton", G2L["5"]);
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["TextSize"] = 14;
G2L["7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 156, 158);
G2L["7"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["7"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["7"]["Size"] = UDim2.new(0.1, 0, 1, 0);
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["Text"] = [[Execute]];
G2L["7"]["Name"] = [[MobileExecute]];
G2L["7"]["Visible"] = false;
G2L["7"]["Position"] = UDim2.new(1, 0, 0.5, 0);


-- StarterGui.Strawberry.Main.CommandBar.MobileExecute.UICorner
G2L["8"] = Instance.new("UICorner", G2L["7"]);



-- StarterGui.Strawberry.Main.ScanMessage
G2L["9"] = Instance.new("TextLabel", G2L["2"]);
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["TextSize"] = 17;
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["BackgroundTransparency"] = 1;
G2L["9"]["RichText"] = true;
G2L["9"]["AnchorPoint"] = Vector2.new(1, 1);
G2L["9"]["Size"] = UDim2.new(1, 0, 1, -30);
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["Text"] = [[Scanning game for vulnerabilities <font transparency="0.5">(0/0) remotes scanned</font>]];
G2L["9"]["Name"] = [[ScanMessage]];
G2L["9"]["Position"] = UDim2.new(1, 0, 1, 0);


-- StarterGui.Strawberry.Main.TweenIn
G2L["a"] = Instance.new("LocalScript", G2L["2"]);
G2L["a"]["Name"] = [[TweenIn]];


-- StarterGui.Strawberry.Main.Scanner
G2L["b"] = Instance.new("LocalScript", G2L["2"]);
G2L["b"]["Name"] = [[Scanner]];


-- StarterGui.Strawberry.Main.Remote
G2L["c"] = Instance.new("ObjectValue", G2L["2"]);
G2L["c"]["Name"] = [[Remote]];


-- StarterGui.Strawberry.Main.Toggle
G2L["d"] = Instance.new("LocalScript", G2L["2"]);
G2L["d"]["Enabled"] = false;
G2L["d"]["Name"] = [[Toggle]];
G2L["d"]["Disabled"] = true;


-- StarterGui.Strawberry.Main.CommandManager
G2L["e"] = Instance.new("LocalScript", G2L["2"]);
G2L["e"]["Name"] = [[CommandManager]];


-- StarterGui.Strawberry.Help
G2L["f"] = Instance.new("Frame", G2L["1"]);
G2L["f"]["Visible"] = false;
G2L["f"]["BorderSizePixel"] = 0;
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(255, 54, 125);
G2L["f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["f"]["Size"] = UDim2.new(0, 450, 0, 300);
G2L["f"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f"]["Name"] = [[Help]];
G2L["f"]["BackgroundTransparency"] = 0.5;


-- StarterGui.Strawberry.Help.Close
G2L["10"] = Instance.new("TextButton", G2L["f"]);
G2L["10"]["BorderSizePixel"] = 0;
G2L["10"]["TextSize"] = 14;
G2L["10"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
G2L["10"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["10"]["BackgroundTransparency"] = 0.7;
G2L["10"]["Size"] = UDim2.new(0, 25, 0, 30);
G2L["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10"]["Text"] = [[X]];
G2L["10"]["Name"] = [[Close]];


-- StarterGui.Strawberry.Help.Close.Function
G2L["11"] = Instance.new("LocalScript", G2L["10"]);
G2L["11"]["Name"] = [[Function]];


-- StarterGui.Strawberry.Help.TopBar
G2L["12"] = Instance.new("TextLabel", G2L["f"]);
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["TextSize"] = 14;
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["12"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12"]["BackgroundTransparency"] = 1;
G2L["12"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12"]["Text"] = [[Commands/Help]];
G2L["12"]["Name"] = [[TopBar]];


-- StarterGui.Strawberry.Help.Holder
G2L["13"] = Instance.new("ScrollingFrame", G2L["f"]);
G2L["13"]["Active"] = true;
G2L["13"]["BorderSizePixel"] = 0;
G2L["13"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13"]["Name"] = [[Holder]];
G2L["13"]["AnchorPoint"] = Vector2.new(1, 1);
G2L["13"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["13"]["Size"] = UDim2.new(1, 0, 1, -40);
G2L["13"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13"]["Position"] = UDim2.new(1, 0, 1, -5);
G2L["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13"]["ScrollBarThickness"] = 7;
G2L["13"]["BackgroundTransparency"] = 1;


-- StarterGui.Strawberry.Help.Holder.UIListLayout
G2L["14"] = Instance.new("UIListLayout", G2L["13"]);
G2L["14"]["Padding"] = UDim.new(0, 5);
G2L["14"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Strawberry.Help.Holder.Command
G2L["15"] = Instance.new("TextLabel", G2L["13"]);
G2L["15"]["BorderSizePixel"] = 0;
G2L["15"]["TextSize"] = 14;
G2L["15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["15"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15"]["BackgroundTransparency"] = 1;
G2L["15"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["15"]["Visible"] = false;
G2L["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15"]["Text"] = [[Command - hi]];
G2L["15"]["Name"] = [[Command]];


-- StarterGui.Strawberry.Settings
G2L["16"] = Instance.new("Frame", G2L["1"]);
G2L["16"]["Visible"] = false;
G2L["16"]["BorderSizePixel"] = 0;
G2L["16"]["BackgroundColor3"] = Color3.fromRGB(255, 54, 125);
G2L["16"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["16"]["Size"] = UDim2.new(0, 450, 0, 300);
G2L["16"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16"]["Name"] = [[Settings]];
G2L["16"]["BackgroundTransparency"] = 0.5;


-- StarterGui.Strawberry.Settings.Close
G2L["17"] = Instance.new("TextButton", G2L["16"]);
G2L["17"]["BorderSizePixel"] = 0;
G2L["17"]["TextSize"] = 14;
G2L["17"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
G2L["17"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["17"]["BackgroundTransparency"] = 0.7;
G2L["17"]["Size"] = UDim2.new(0, 25, 0, 30);
G2L["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17"]["Text"] = [[X]];
G2L["17"]["Name"] = [[Close]];


-- StarterGui.Strawberry.Settings.Close.Function
G2L["18"] = Instance.new("LocalScript", G2L["17"]);
G2L["18"]["Name"] = [[Function]];


-- StarterGui.Strawberry.Settings.TopBar
G2L["19"] = Instance.new("TextLabel", G2L["16"]);
G2L["19"]["BorderSizePixel"] = 0;
G2L["19"]["TextSize"] = 14;
G2L["19"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["19"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19"]["BackgroundTransparency"] = 1;
G2L["19"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["19"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19"]["Text"] = [[Settings]];
G2L["19"]["Name"] = [[TopBar]];


-- StarterGui.Strawberry.Settings.Holder
G2L["1a"] = Instance.new("ScrollingFrame", G2L["16"]);
G2L["1a"]["Active"] = true;
G2L["1a"]["BorderSizePixel"] = 0;
G2L["1a"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a"]["Name"] = [[Holder]];
G2L["1a"]["AnchorPoint"] = Vector2.new(1, 1);
G2L["1a"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["1a"]["Size"] = UDim2.new(1, 0, 1, -40);
G2L["1a"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a"]["Position"] = UDim2.new(1, 0, 1, -5);
G2L["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a"]["ScrollBarThickness"] = 7;
G2L["1a"]["BackgroundTransparency"] = 1;


-- StarterGui.Strawberry.Settings.Holder.UIListLayout
G2L["1b"] = Instance.new("UIListLayout", G2L["1a"]);
G2L["1b"]["Padding"] = UDim.new(0, 5);
G2L["1b"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Strawberry.Settings.Holder.Command
G2L["1c"] = Instance.new("TextLabel", G2L["1a"]);
G2L["1c"]["BorderSizePixel"] = 0;
G2L["1c"]["TextSize"] = 14;
G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["1c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c"]["BackgroundTransparency"] = 1;
G2L["1c"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c"]["Text"] = [[uhh i was too lazy to code this next uptdate ig]];
G2L["1c"]["Name"] = [[Command]];


-- StarterGui.Strawberry.Main.TweenIn
local function C_a()
local script = G2L["a"];
	if not _G.StrawberryEnabled then
		_G.StrawberryEnabled = true
	else
		script.Parent.Parent:Destroy()
	end
	
	local TweenService = game:GetService("TweenService")
	
	script.Parent.Position = UDim2.new(0, 0, -1, 0)
	local Info = TweenInfo.new(1.5, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
	local Tween = TweenService:Create(script.Parent, Info, {Position = UDim2.new(0, 0, 0, 0)})
	Tween:Play()
	
end;
task.spawn(C_a);
-- StarterGui.Strawberry.Main.Scanner
local function C_b()
local script = G2L["b"];
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local TweenService = game:GetService("TweenService")
	
	local ScanMessage = script.Parent.ScanMessage
	local ScanSafeTime = 0.25
	local RemoteValue = script.Parent.Remote
	
	local function IsBackdoored(remote)
		local function testfire(item)
			pcall(function()
				remote:FireServer(item)		
			end)
		end
		
		local function isDestroyed(obj)
			return obj == nil or obj.Parent == nil
		end
		
		local testpart = game.Players.LocalPlayer:FindFirstChild("StarterGear")
		if not testpart then
			return false
		end
		
		testfire(testpart)
		task.wait(ScanSafeTime)
		if isDestroyed(testpart) then
			return true
		else
			return false
		end
	end
	
	local function ScanLocation(location)
		local count = 0
		for i, v in pairs(location:GetDescendants()) do
			if v:IsA("RemoteEvent") then
				count += 1
				ScanMessage.Text = 'Scanning '..location.Name..' for vulnerabilities <font transparency="0.5">(0/'..count..') remotes scanned</font>'
			end
		end
		
		local scancount = 0
		for i, v in pairs(location:GetDescendants()) do
			if v:IsA("RemoteEvent") then
				scancount += 1
				ScanMessage.Text = 'Scanning '..location.Name..' for vulnerabilities <font transparency="0.5">('..scancount..'/'..count..') remotes scanned</font>'
				if IsBackdoored(v) then
					return v
				end
			end
		end
		
		return nil
	end
	
	local function TweenOut()
		local Info = TweenInfo.new(1.5, Enum.EasingStyle.Linear, Enum.EasingDirection.In)
		local Tween = TweenService:Create(script.Parent, Info, {Position = UDim2.new(0, 0, -1, 0)})
		Tween:Play()
	end
	
	local function TweenIn()
		local Info = TweenInfo.new(1.5, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
		local Tween = TweenService:Create(script.Parent, Info, {Position = UDim2.new(0, 0, 0, 0)})
		Tween:Play()
	end
	
	local ScanResult = ScanLocation(ReplicatedStorage)
	if ScanResult ~= nil then
		ScanMessage.Text = 'Vulnerable remote found! <font transparency="0.5">('..ScanResult:GetFullName()..')</font>'
		RemoteValue.Value = ScanResult
		local GUIValue = Instance.new("ObjectValue")
		GUIValue.Parent = game.Players.LocalPlayer
		GUIValue.Name = "StrawberryHook"
		GUIValue.Value = ScanResult
		task.wait(4)
		TweenOut()
		task.wait(1.5)
		script.Parent.CommandBar.Visible = true
		ScanMessage.Visible = false
		TweenIn()
		task.wait(1.5)
		script.Parent.Toggle.Enabled = true
	else
		ScanMessage.Text = 'No backdoor found!'
		task.wait(5)
		TweenOut()
	end
	
end;
task.spawn(C_b);
-- StarterGui.Strawberry.Main.CommandManager
local function C_e()
local script = G2L["e"];
	local Players = game:GetService("Players")
	local LocalPlayer = Players.LocalPlayer
	local UserInputService = game:GetService("UserInputService")
	local RunService = game:GetService("RunService")
	local CommandBar = script.Parent.CommandBar
	
	if UserInputService.TouchEnabled then
		script.Parent.CommandBar.MobileExecute.Visible = true
	end
	
	local registry = {}
	
	local curplayers = {}
	local slocked = false
	
	local function getTargets(target)
		target = target:lower()
		local results = {}
		if target == "all" then
			for _, plr in ipairs(Players:GetPlayers()) do
				table.insert(results, plr)
			end
		elseif target == "others" then
			for _, plr in ipairs(Players:GetPlayers()) do
				if plr ~= LocalPlayer then
					table.insert(results, plr)
				end
			end
		elseif target == "me" then
			table.insert(results, LocalPlayer)
		elseif target ~= "" then
			local plr = Players:FindFirstChild(target)
			if plr then
				table.insert(results, plr)
			end
		end
		return results
	end
	
	local function addCommand(name, description, callback)
		name = name:lower()
		registry[name] = { description = description; callback = callback }
	end
	
	local function delete(instance)
		script.Parent.Remote.Value:FireServer(instance)
	end
	
	local flySpeed = 50
	local flyLoop
	
	addCommand("settings", "Show all settings", function()
		script.Parent.Parent.Settings.Visible = true
	end)
	
	addCommand("help", "Show all commands", function()
		script.Parent.Parent.Help.Visible = true
	end)
	
	addCommand("fly", "Start flying", function()
		local character = LocalPlayer.Character
		if not character then return end
		local hum = character:FindFirstChildOfClass("Humanoid")
		local hrp = character:FindFirstChild("HumanoidRootPart")
		if not hum or not hrp then return end
		hum.PlatformStand = true
		hrp.Anchored = true
		if flyLoop then flyLoop:Disconnect() end
		flyLoop = RunService.Heartbeat:Connect(function(deltaTime)
			local moveDir = hum.MoveDirection * (flySpeed * deltaTime)
			local hrpCF = hrp.CFrame
			local cameraCF = workspace.CurrentCamera.CFrame
			local cameraOffset = hrpCF:ToObjectSpace(cameraCF).Position + hum.CameraOffset
			cameraCF = cameraCF * CFrame.new(-cameraOffset.X, -cameraOffset.Y, -cameraOffset.Z + 1)
			local cameraPos = cameraCF.Position
			local hrpPos = hrpCF.Position
			local objectSpaceVelocity = CFrame.new(cameraPos, Vector3.new(hrpPos.X, cameraPos.Y, hrpPos.Z)):VectorToObjectSpace(moveDir)
			hrp.CFrame = CFrame.new(hrpPos) * (cameraCF - cameraPos) * CFrame.new(objectSpaceVelocity)
		end)
	end)
	
	addCommand("unfly", "Stop flying", function()
		if flyLoop then
			flyLoop:Disconnect()
			flyLoop = nil
		end
		local character = LocalPlayer.Character
		if not character then return end
		local hum = character:FindFirstChildOfClass("Humanoid")
		local hrp = character:FindFirstChild("HumanoidRootPart")
		if hum then hum.PlatformStand = false end
		if hrp then hrp.Anchored = false end
	end)
	
	addCommand("flyspeed", "Set fly speed", function(args)
		local newSpeed = tonumber(args)
		if newSpeed and newSpeed > 0 then
			flySpeed = newSpeed
			CommandBar.Text = "Fly speed set to " .. flySpeed
		else
			CommandBar.Text = "Invalid speed value"
		end
		CommandBar:CaptureFocus()
		task.delay(2, function()
			CommandBar.Text = ""
			CommandBar:ReleaseFocus()
		end)
	end)
	
	addCommand("kick", "Kick a player or group", function(target)
		if target == "" then
			CommandBar.Text = "Usage: kick [playername|all|others|me]"
			CommandBar:CaptureFocus()
			task.delay(3, function()
				CommandBar.Text = ""
				CommandBar:ReleaseFocus()
			end)
			return
		end
		local toKick = getTargets(target)
		if #toKick == 0 then
			CommandBar.Text = "Player not found: " .. target
			CommandBar:CaptureFocus()
			task.delay(3, function()
				CommandBar.Text = ""
				CommandBar:ReleaseFocus()
			end)
			return
		end
		for _, plr in ipairs(toKick) do
			delete(plr)
		end
		CommandBar.Text = "Kick request sent: " .. target
		CommandBar:CaptureFocus()
		task.delay(2, function()
			CommandBar.Text = ""
			CommandBar:ReleaseFocus()
		end)
	end)
	
	addCommand("bald", "Bald a player or group", function(target)
		if target == "" then
			CommandBar.Text = "Usage: bald [playername|all|others|me]"
			CommandBar:CaptureFocus()
			task.delay(3, function()
				CommandBar.Text = ""
				CommandBar:ReleaseFocus()
			end)
			return
		end
		local toBald = getTargets(target)
		if #toBald == 0 then
			CommandBar.Text = "Player not found: " .. target
			CommandBar:CaptureFocus()
			task.delay(3, function()
				CommandBar.Text = ""
				CommandBar:ReleaseFocus()
			end)
			return
		end
		for _, plr in ipairs(toBald) do
			for _, v in pairs(plr.Character:GetChildren()) do
				if v:IsA("Accessory") then
					delete(v)
				end
			end
		end
		CommandBar.Text = "Bald request sent: " .. target
		CommandBar:CaptureFocus()
		task.delay(2, function()
			CommandBar.Text = ""
			CommandBar:ReleaseFocus()
		end)
	end)
	
	addCommand("naked", "Strip down a players clothes", function(target)
		if target == "" then
			CommandBar.Text = "Usage: naked [playername|all|others|me]"
			CommandBar:CaptureFocus()
			task.delay(3, function()
				CommandBar.Text = ""
				CommandBar:ReleaseFocus()
			end)
			return
		end
		local toNaked = getTargets(target)
		if #toNaked == 0 then
			CommandBar.Text = "Player not found: " .. target
			CommandBar:CaptureFocus()
			task.delay(3, function()
				CommandBar.Text = ""
				CommandBar:ReleaseFocus()
			end)
			return
		end
		for _, plr in ipairs(toNaked) do
			for _, v in pairs(plr.Character:GetChildren()) do
				if v:IsA("Accessory") or v:IsA("Clothing") then
					delete(v)
				end
			end
		end
		CommandBar.Text = "Naked request sent: " .. target
		CommandBar:CaptureFocus()
		task.delay(2, function()
			CommandBar.Text = ""
			CommandBar:ReleaseFocus()
		end)
	end)
	
	addCommand("kill", "kills the player(s)", function(target)
		if target == "" then
			CommandBar.Text = "Usage: kill [playername|all|others|me]"
			CommandBar:CaptureFocus()
			task.delay(3, function()
				CommandBar.Text = ""
				CommandBar:ReleaseFocus()
			end)
			return
		end
		local toKill = getTargets(target)
		if #toKill == 0 then
			CommandBar.Text = "Player not found: " .. target
			CommandBar:CaptureFocus()
			task.delay(3, function()
				CommandBar.Text = ""
				CommandBar:ReleaseFocus()
			end)
			return
		end
		for _, plr in ipairs(toKill) do
			plr.Character.Humanoid.Health = 0
		end
		CommandBar.Text = "Kill request sent: " .. target
		CommandBar:CaptureFocus()
		task.delay(2, function()
			CommandBar.Text = ""
			CommandBar:ReleaseFocus()
		end)
	end)
	
	local bannedplayers = {}
	addCommand("ban", "server bans the player(s)", function(target)
		if target == "" then
			CommandBar.Text = "Usage: ban [playername|all|others|me]"
			CommandBar:CaptureFocus()
			task.delay(3, function()
				CommandBar.Text = ""
				CommandBar:ReleaseFocus()
			end)
			return
		end
		local toBan = getTargets(target)
		if #toBan == 0 then
			CommandBar.Text = "Player not found: " .. target
			CommandBar:CaptureFocus()
			task.delay(3, function()
				CommandBar.Text = ""
				CommandBar:ReleaseFocus()
			end)
			return
		end
		for _, plr in ipairs(toBan) do
			table.insert(bannedplayers, plr.UserId)
			delete(plr)
		end
		CommandBar.Text = "Ban request sent: " .. target
		CommandBar:CaptureFocus()
		task.delay(2, function()
			CommandBar.Text = ""
			CommandBar:ReleaseFocus()
		end)
	end)
	
	addCommand("blockhead (r6 only)", "blockheads the player(s)", function(target)
		if target == "" then
			CommandBar.Text = "Usage: blockhead [playername|all|others|me]"
			CommandBar:CaptureFocus()
			task.delay(3, function()
				CommandBar.Text = ""
				CommandBar:ReleaseFocus()
			end)
			return
		end
		local toFunction = getTargets(target)
		if #toFunction == 0 then
			CommandBar.Text = "Player not found: " .. target
			CommandBar:CaptureFocus()
			task.delay(3, function()
				CommandBar.Text = ""
				CommandBar:ReleaseFocus()
			end)
			return
		end
		for _, plr in ipairs(toFunction) do
			delete(plr.Character.Head:FindFirstChildWhichIsA("SpecialMesh"))
		end
		CommandBar.Text = "Blockhead request sent: " .. target
		CommandBar:CaptureFocus()
		task.delay(2, function()
			CommandBar.Text = ""
			CommandBar:ReleaseFocus()
		end)
	end)
	
	addCommand("breakscripts", "Breaks the games scripts", function()
		for i, v in pairs(game:GetDescendants()) do
			if v:IsA("Script") then
				delete(v)
			end
			if v:IsA("ModuleScript") then
				delete(v)
			end
		end
	end)
	
	addCommand("breakterrain", "Breaks the games terrain loading", function()
		delete(workspace.Terrain)
	end)
	
	addCommand("breakspawns", "Removes all spawnlocations", function()
		for i, v in pairs(workspace:GetDescendants()) do
			if v:IsA("SpawnLocation") then
				delete(v)
			end
		end
	end)
	
	addCommand("brickify", "brickifys the player(s)", function(target)
		if target == "" then
			CommandBar.Text = "Usage: brickify [playername|all|others|me]"
			CommandBar:CaptureFocus()
			task.delay(3, function()
				CommandBar.Text = ""
				CommandBar:ReleaseFocus()
			end)
			return
		end
		local toFunction = getTargets(target)
		if #toFunction == 0 then
			CommandBar.Text = "Player not found: " .. target
			CommandBar:CaptureFocus()
			task.delay(3, function()
				CommandBar.Text = ""
				CommandBar:ReleaseFocus()
			end)
			return
		end
		for _, plr in ipairs(toFunction) do
			delete(plr.Character.Humanoid)
		end
		CommandBar.Text = "Brickify request sent: " .. target
		CommandBar:CaptureFocus()
		task.delay(2, function()
			CommandBar.Text = ""
			CommandBar:ReleaseFocus()
		end)
	end)
	
	addCommand("cancelanims", "stops a player(s) animation from playing", function(target)
		if target == "" then
			CommandBar.Text = "Usage: cancelanims [playername|all|others|me]"
			CommandBar:CaptureFocus()
			task.delay(3, function()
				CommandBar.Text = ""
				CommandBar:ReleaseFocus()
			end)
			return
		end
		local toFunction = getTargets(target)
		if #toFunction == 0 then
			CommandBar.Text = "Player not found: " .. target
			CommandBar:CaptureFocus()
			task.delay(3, function()
				CommandBar.Text = ""
				CommandBar:ReleaseFocus()
			end)
			return
		end
		for _, plr in ipairs(toFunction) do
			delete(plr.Character.Animate)
			delete(plr.Character.Humanoid.Animator)
		end
		CommandBar.Text = "CancelAnim request sent: " .. target
		CommandBar:CaptureFocus()
		task.delay(2, function()
			CommandBar.Text = ""
			CommandBar:ReleaseFocus()
		end)
	end)
	
	addCommand("copyusertool", "Gives you a tool to copy players usernames", function()
		local Players = game:GetService("Players")
		local player = Players.LocalPlayer
		local mouse = player:GetMouse()
	
		local tool = Instance.new("Tool")
		tool.Name = "Copy User Tool"
		tool.RequiresHandle = false
		tool.Parent = player:WaitForChild("Backpack")
	
		local equipped = false
	
		tool.Equipped:Connect(function()
			equipped = true
		end)
	
		tool.Unequipped:Connect(function()
			equipped = false
		end)
	
		mouse.Button1Down:Connect(function()
			if not equipped then return end
	
			local target = mouse.Target
			if target then
				if target.Parent:FindFirstChild("Humanoid") then
					local plr = game.Players:GetPlayerFromCharacter(target.Parent)
					setclipboard(plr.Name)
					toclipboard(plr.Name)
				end
			end
		end)
	end)
	
	addCommand("deletetool", "Gives you a tool that can delete anything", function()
		local Players = game:GetService("Players")
		local player = Players.LocalPlayer
		local mouse = player:GetMouse()
	
		local tool = Instance.new("Tool")
		tool.Name = "Delete Tool"
		tool.RequiresHandle = false
		tool.Parent = player:WaitForChild("Backpack")
	
		local equipped = false
	
		tool.Equipped:Connect(function()
			equipped = true
		end)
	
		tool.Unequipped:Connect(function()
			equipped = false
		end)
	
		mouse.Button1Down:Connect(function()
			if not equipped then return end
	
			local target = mouse.Target
			if target then
				delete(target)
			end
		end)
	end)
	
	addCommand("goto", "teleports you to a given player", function(target)
		if target == "" then
			CommandBar.Text = "Usage: goto [playername]"
			CommandBar:CaptureFocus()
			task.delay(3, function()
				CommandBar.Text = ""
				CommandBar:ReleaseFocus()
			end)
			return
		end
		local playertarget = game.Players:FindFirstChild(target)
		if not playertarget then
			CommandBar.Text = "Player not found: " .. target
			CommandBar:CaptureFocus()
			task.delay(3, function()
				CommandBar.Text = ""
				CommandBar:ReleaseFocus()
			end)
			return
		end
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = playertarget.Character.HumanoidRootPart.CFrame
		CommandBar.Text = "goto request sent: " .. target
		CommandBar:CaptureFocus()
		task.delay(2, function()
			CommandBar.Text = ""
			CommandBar:ReleaseFocus()
		end)
	end)
	
	addCommand("korblox", "removes a player(s) right leg", function(target)
		if target == "" then
			CommandBar.Text = "Usage: korblox [playername|all|others|me]"
			CommandBar:CaptureFocus()
			task.delay(3, function()
				CommandBar.Text = ""
				CommandBar:ReleaseFocus()
			end)
			return
		end
		local toFunction = getTargets(target)
		if #toFunction == 0 then
			CommandBar.Text = "Player not found: " .. target
			CommandBar:CaptureFocus()
			task.delay(3, function()
				CommandBar.Text = ""
				CommandBar:ReleaseFocus()
			end)
			return
		end
		for _, player in ipairs(toFunction) do
			if player and player.Character and player.Character:FindFirstChild("Head") then
				local character = player.Character
				if character:FindFirstChild("Torso") then
					local limbs = {"Right Leg"}
					for _, limb in ipairs(limbs) do
						local part = character:FindFirstChild(limb)
						if part then delete(part) end
					end
				elseif character:FindFirstChild("UpperTorso") then
					local limbs = {
						"RightUpperLeg", "RightLowerLeg", "RightLeg"
					}
					for _, limb in ipairs(limbs) do
						local part = character:FindFirstChild(limb)
						if part then delete(part) end
					end
				end
			end
		end
		CommandBar.Text = "Korblox request sent: " .. target
		CommandBar:CaptureFocus()
		task.delay(2, function()
			CommandBar.Text = ""
			CommandBar:ReleaseFocus()
		end)
	end)
	
	addCommand("nolimbs", "removes a player(s) limbs", function(target)
		if target == "" then
			CommandBar.Text = "Usage: nolimbs [playername|all|others|me]"
			CommandBar:CaptureFocus()
			task.delay(3, function()
				CommandBar.Text = ""
				CommandBar:ReleaseFocus()
			end)
			return
		end
		local toFunction = getTargets(target)
		if #toFunction == 0 then
			CommandBar.Text = "Player not found: " .. target
			CommandBar:CaptureFocus()
			task.delay(3, function()
				CommandBar.Text = ""
				CommandBar:ReleaseFocus()
			end)
			return
		end
		for _, player in ipairs(toFunction) do
			if player and player.Character and player.Character:FindFirstChild("Head") then
				local character = player.Character
				if character:FindFirstChild("Torso") then
					local limbs = {"Left Arm", "Left Leg", "Right Arm", "Right Leg"}
					for _, limb in ipairs(limbs) do
						local part = character:FindFirstChild(limb)
						if part then delete(part) end
					end
				elseif character:FindFirstChild("UpperTorso") then
					local limbs = {
						"LeftUpperArm", "LeftLowerArm", "LeftArm",
						"LeftUpperLeg", "LeftLowerLeg", "LeftLeg",
						"RightUpperArm", "RightLowerArm", "RightArm",
						"RightUpperLeg", "RightLowerLeg", "RightLeg"
					}
					for _, limb in ipairs(limbs) do
						local part = character:FindFirstChild(limb)
						if part then delete(part) end
					end
				end
			end
		end
		CommandBar.Text = "Nolimbs request sent: " .. target
		CommandBar:CaptureFocus()
		task.delay(2, function()
			CommandBar.Text = ""
			CommandBar:ReleaseFocus()
		end)
	end)
	
	addCommand("nuke", "deletes everything in workspace", function()
		for i, v in pairs(workspace:GetDescendants()) do
			if v.Name == "Camera" then return end
			if v.Name == "Terrain" then return end
			delete(v)
		end
	end)
	
	addCommand("punish", "removes a player(s) character", function(target)
		if target == "" then
			CommandBar.Text = "Usage: punish [playername|all|others|me]"
			CommandBar:CaptureFocus()
			task.delay(3, function()
				CommandBar.Text = ""
				CommandBar:ReleaseFocus()
			end)
			return
		end
		local toFunction = getTargets(target)
		if #toFunction == 0 then
			CommandBar.Text = "Player not found: " .. target
			CommandBar:CaptureFocus()
			task.delay(3, function()
				CommandBar.Text = ""
				CommandBar:ReleaseFocus()
			end)
			return
		end
		for _, player in ipairs(toFunction) do
			if player and player.Character and player.Character:FindFirstChild("Head") then
				delete(player.Character)
			end
		end
		CommandBar.Text = "Punish request sent: " .. target
		CommandBar:CaptureFocus()
		task.delay(2, function()
			CommandBar.Text = ""
			CommandBar:ReleaseFocus()
		end)
	end)
	
	addCommand("ragdoll", "makes a player fall and unable to move", function(target)
		if target == "" then
			CommandBar.Text = "Usage: ragdoll [playername|all|others|me]"
			CommandBar:CaptureFocus()
			task.delay(3, function()
				CommandBar.Text = ""
				CommandBar:ReleaseFocus()
			end)
			return
		end
		local toFunction = getTargets(target)
		if #toFunction == 0 then
			CommandBar.Text = "Player not found: " .. target
			CommandBar:CaptureFocus()
			task.delay(3, function()
				CommandBar.Text = ""
				CommandBar:ReleaseFocus()
			end)
			return
		end
		for _, player in ipairs(toFunction) do
			if player and player.Character and player.Character:FindFirstChild("Head") then
				delete(player.Character.HumanoidRootPart)
			end
		end
		CommandBar.Text = "Ragdoll request sent: " .. target
		CommandBar:CaptureFocus()
		task.delay(2, function()
			CommandBar.Text = ""
			CommandBar:ReleaseFocus()
		end)
	end)
	
	addCommand("removeface", "removes the face of a player", function(target)
		if target == "" then
			CommandBar.Text = "Usage: removeface [playername|all|others|me]"
			CommandBar:CaptureFocus()
			task.delay(3, function()
				CommandBar.Text = ""
				CommandBar:ReleaseFocus()
			end)
			return
		end
		local toFunction = getTargets(target)
		if #toFunction == 0 then
			CommandBar.Text = "Player not found: " .. target
			CommandBar:CaptureFocus()
			task.delay(3, function()
				CommandBar.Text = ""
				CommandBar:ReleaseFocus()
			end)
			return
		end
		for _, player in ipairs(toFunction) do
			if player and player.Character and player.Character:FindFirstChild("Head") then
				for _, v in pairs(player.Character.Head:GetChildren()) do
					if v:IsA("Decal") then
						delete(v)
					end
				end
			end
		end
		CommandBar.Text = "Removeface request sent: " .. target
		CommandBar:CaptureFocus()
		task.delay(2, function()
			CommandBar.Text = ""
			CommandBar:ReleaseFocus()
		end)
	end)
	
	addCommand("removetools", "clears the backpack of a player", function(target)
		if target == "" then
			CommandBar.Text = "Usage: removetools [playername|all|others|me]"
			CommandBar:CaptureFocus()
			task.delay(3, function()
				CommandBar.Text = ""
				CommandBar:ReleaseFocus()
			end)
			return
		end
		local toFunction = getTargets(target)
		if #toFunction == 0 then
			CommandBar.Text = "Player not found: " .. target
			CommandBar:CaptureFocus()
			task.delay(3, function()
				CommandBar.Text = ""
				CommandBar:ReleaseFocus()
			end)
			return
		end
		for _, player in ipairs(toFunction) do
			for _, v in pairs(player.Backpack:GetChildren()) do
				if v:IsA("Tool") then
					delete(v)
				end
			end
		end
		CommandBar.Text = "Removetools request sent: " .. target
		CommandBar:CaptureFocus()
		task.delay(2, function()
			CommandBar.Text = ""
			CommandBar:ReleaseFocus()
		end)
	end)
	
	addCommand("disablesounds", "removes all sounds in workspace", function()
		for i, v in pairs(workspace:GetDescendants()) do
			if v:IsA("Sound") then
				delete(v)
			end
		end
	end)
	
	addCommand("disablelighting", "removes all lighting", function()
		for i, v in ipairs(game.Lighting:GetDescendants()) do
			delete(v)
		end
		task.wait()
		for _, v in ipairs(workspace:GetDescendants()) do
			if v:IsA("Light") then
				delete(v)
			end
		end
	end)
	
	addCommand("removeplayerui", "removes players ui", function(target)
		if target == "" then
			CommandBar.Text = "Usage: removeplayerui [playername|all|others|me]"
			CommandBar:CaptureFocus()
			task.delay(3, function()
				CommandBar.Text = ""
				CommandBar:ReleaseFocus()
			end)
			return
		end
		local toFunction = getTargets(target)
		if #toFunction == 0 then
			CommandBar.Text = "Player not found: " .. target
			CommandBar:CaptureFocus()
			task.delay(3, function()
				CommandBar.Text = ""
				CommandBar:ReleaseFocus()
			end)
			return
		end
		for _, player in ipairs(toFunction) do
			if player and player.Character and player.Character:FindFirstChild("Head") then
				for _, v in pairs(player.PlayerGui:GetChildren()) do
					delete(v)
				end
			end
		end
		CommandBar.Text = "RemovePlayerUI request sent: " .. target
		CommandBar:CaptureFocus()
		task.delay(2, function()
			CommandBar.Text = ""
			CommandBar:ReleaseFocus()
		end)
	end)
	
	addCommand("removewaist", "removes players waist", function(target)
		if target == "" then
			CommandBar.Text = "Usage: removewaist [playername|all|others|me]"
			CommandBar:CaptureFocus()
			task.delay(3, function()
				CommandBar.Text = ""
				CommandBar:ReleaseFocus()
			end)
			return
		end
		local toFunction = getTargets(target)
		if #toFunction == 0 then
			CommandBar.Text = "Player not found: " .. target
			CommandBar:CaptureFocus()
			task.delay(3, function()
				CommandBar.Text = ""
				CommandBar:ReleaseFocus()
			end)
			return
		end
		for _, player in ipairs(toFunction) do
			if player and player.Character and player.Character:FindFirstChild("Head") then
				local waist = player.Character:FindFirstChild("UpperTorso") and player.Character.UpperTorso:FindFirstChild("Waist")
				if waist then
					delete(waist)
				end
			end
		end
		CommandBar.Text = "RemoveWaist request sent: " .. target
		CommandBar:CaptureFocus()
		task.delay(2, function()
			CommandBar.Text = ""
			CommandBar:ReleaseFocus()
		end)
	end)
	
	addCommand("serverlock", "prevents new players from joining", function()
		coroutine.wrap(function()
			slocked = not slocked
			if slocked then
				for _, p in pairs(game:GetService("Players"):GetChildren()) do
					table.insert(curplayers, p.Name)
				end
				game:GetService("Players").PlayerAdded:Connect(function(plr)
					for _, ph in pairs(curplayers) do
						if plr.Name:find(ph) then
							delete(plr)
						end
					end
				end)
				game:GetService("Players").PlayerRemoving:Connect(function(plr)
					for _, ph in pairs(curplayers) do
						if plr.Name:find(ph) then
							table.remove(curplayers, plr.Name)
						end
					end
				end)
			else
				curplayers = {}
			end
		end)()
	end)
	
	addCommand("gui", "Load up the old strawberry gui", function()
		if not game:GetService("RunService"):IsStudio() then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/C-Dr1ve/Strawberry/refs/heads/main/UI_Source/main.lua"))()
		end
	end)
	
	for commandName, commandData in pairs(registry) do
		local commandLabel = script.Parent.Parent.Help.Holder.Command:Clone()
		commandLabel.Text = commandName .. " - " .. commandData.description
		commandLabel.Visible = true
		commandLabel.Parent = script.Parent.Parent.Help.Holder
	end
	
	local function execute(line)
		local cmd, args = line:match("^(%S+)%s*(.*)")
		if not cmd then return end
		cmd = cmd:lower()
		if registry[cmd] then
			registry[cmd].callback(args)
			CommandBar.Text = ""
			CommandBar:ReleaseFocus()
		else
			CommandBar.Text = ("Unknown command: %s"):format(cmd)
			task.delay(3, function()
				CommandBar.Text = ""
				CommandBar:ReleaseFocus()
			end)
		end
	end
	
	coroutine.wrap(function()
		game.Players.PlayerAdded:Connect(function(plr)
			if table.find(bannedplayers, plr.UserId) then
				delete(plr)
			end
		end)
	end)()
	
	CommandBar.FocusLost:Connect(function(enterPressed)
		if enterPressed and CommandBar.Text ~= "" then
			execute(CommandBar.Text)
		end
	end)
	
	script.Parent.CommandBar.MobileExecute.MouseButton1Click:Connect(function()
		if CommandBar.Text ~= "" then
			execute(CommandBar.Text)
		end
	end)
	
	UserInputService.InputBegan:Connect(function(input, processed)
		if processed then return end
		if input.KeyCode == Enum.KeyCode.Semicolon then
			CommandBar:CaptureFocus()
		end
	end)
	
end;
task.spawn(C_e);
-- StarterGui.Strawberry.Help.Close.Function
local function C_11()
local script = G2L["11"];
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Visible = false
	end)
	
end;
task.spawn(C_11);
-- StarterGui.Strawberry.Settings.Close.Function
local function C_18()
local script = G2L["18"];
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Visible = false
	end)
	
end;
task.spawn(C_18);

return G2L["1"], require;
