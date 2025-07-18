local notifchecking = true -- Notifies the player when the script is checking a Parent
local backdoored = false
local event

local players = game:GetService("Players")
local rep = game:GetService("ReplicatedStorage")
local lp = players.LocalPlayer

local obvnames = {
	"DeleteCar", "DeletePart", "ClearCar", "ClearPart"
}

local likelynames = {
	"delete", "remove", "destroy", "clean", "clear"
}

local nonlikelynames = {
	"clearlogs", "backfire", "revert",
}

local function notification(title, text, duration)
	pcall(function()
		game.StarterGui:SetCore("SendNotification", {
			Title = title,
			Text = text,
			Duration = duration
		})
	end)
end

local function scan(root, type)
	if notifchecking then
		notification("Strawberry", "Scanning " .. root.Name .. "...", 2)
	end
	if type == "Easy" then
		for _, v in ipairs(root:GetDescendants()) do
			if v:IsA("RemoteEvent") then
				for _, phrase in pairs(obvnames) do
					if v.Name:lower():find(phrase) then
						backdoored = true
						event = v
						notification("Strawberry", "Found a backdoor: " .. v.Name, 2)
						notification("Strawberry", "Make sure testing the commands before logging!", 2)
					end
				end
			end
		end
	else
		for _, v in ipairs(root:GetDescendants()) do
			if v:IsA("RemoteEvent") then
				for _, phrase in pairs(likelynames) do
					if v.Name:lower():find(phrase) then
						for _, nun in pairs(nonlikelynames) do
							if v.Name:lower():find(nun) then else
								backdoored = true
								event = v
								notification("Strawberry", "Found a backdoor: " .. v.Name, 2)
								notification("Strawberry", "Make sure testing the commands before logging!", 2)
								return
							end
						end
					end
				end
			end
		end
	end
end

local function delete(instance)
	if backdoored and event and instance then
		event:FireServer(instance)
	end
end

if not event then
	if notifchecking then notification("Strawberry", "Checking: ReplicatedStorage", 1) end
	scan(rep,"Easy")
end

if not event then
	if notifchecking then notification("Strawberry", "Checking: ReplicatedStorage", 1) end
	scan(rep,"Normal")
end

if not event then
	if notifchecking then notification("Strawberry", "Checking: Workspace", 1) end
	scan(workspace,"Normal")
end

if not event then
	if notifchecking then notification("Strawberry", "Checking: LocalPlayer.PlayerGui", 1) end
	scan(lp:WaitForChild("PlayerGui"),"Normal")
end

if not event then
	if notifchecking then notification("Strawberry", "Checking: Game", 1) end
	scan(game,"Normal")
end

if not event then
	notification("Strawberry", "Couldn't find a remote, sorry", 2)
end

repeat task.wait(1.5) until backdoored 

local G2L = {};

-- StarterGui.Strawberry
G2L["1"] = Instance.new("ScreenGui", game.CoreGui);
G2L["1"]["Name"] = [[Strawberry]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["1"]["ResetOnSpawn"] = false;


-- StarterGui.Strawberry.MainFrame
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(255, 52, 89);
G2L["2"]["Size"] = UDim2.new(0, 300, 0, 350);
G2L["2"]["Position"] = UDim2.new(0.75, 0, 0.5, 0);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Name"] = [[MainFrame]];
G2L["2"]["BackgroundTransparency"] = 0.75;


-- StarterGui.Strawberry.MainFrame.UICorner
G2L["3"] = Instance.new("UICorner", G2L["2"]);
G2L["3"]["CornerRadius"] = UDim.new(0, 10);


-- StarterGui.Strawberry.MainFrame.Shadow
G2L["4"] = Instance.new("ImageLabel", G2L["2"]);
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["4"]["SliceScale"] = 0.095;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["4"]["ImageColor3"] = Color3.fromRGB(153, 153, 153);
G2L["4"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["4"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["4"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["4"]["BackgroundTransparency"] = 1;
G2L["4"]["Name"] = [[Shadow]];
G2L["4"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.Shadow.UIGradient
G2L["5"] = Instance.new("UIGradient", G2L["4"]);
G2L["5"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.Gloss
G2L["6"] = Instance.new("ImageLabel", G2L["2"]);
G2L["6"]["ZIndex"] = -2147483647;
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(67, 67, 67);
G2L["6"]["ImageTransparency"] = 0.1;
G2L["6"]["ImageColor3"] = Color3.fromRGB(153, 153, 153);
G2L["6"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["6"]["Image"] = [[rbxassetid://413422291]];
G2L["6"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["6"]["BackgroundTransparency"] = 1;
G2L["6"]["Name"] = [[Gloss]];
G2L["6"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.Gloss.UICorner
G2L["7"] = Instance.new("UICorner", G2L["6"]);
G2L["7"]["CornerRadius"] = UDim.new(0, 10);


-- StarterGui.Strawberry.MainFrame.Gloss.UIGradient
G2L["8"] = Instance.new("UIGradient", G2L["6"]);
G2L["8"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.UIGradient
G2L["9"] = Instance.new("UIGradient", G2L["2"]);
G2L["9"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.Title
G2L["a"] = Instance.new("TextLabel", G2L["2"]);
G2L["a"]["TextWrapped"] = true;
G2L["a"]["BorderSizePixel"] = 0;
G2L["a"]["TextSize"] = 14;
G2L["a"]["TextScaled"] = true;
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a"]["BackgroundTransparency"] = 1;
G2L["a"]["Size"] = UDim2.new(0, 165, 0, 33);
G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["Text"] = [[Strawberry v3.00]];
G2L["a"]["Name"] = [[Title]];
G2L["a"]["Position"] = UDim2.new(0.22333, 0, 0.02, 0);


-- StarterGui.Strawberry.MainFrame.Exit
G2L["b"] = Instance.new("Frame", G2L["2"]);
G2L["b"]["ZIndex"] = 2;
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["b"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["b"]["Position"] = UDim2.new(0.88, 12, 0.18, -40);
G2L["b"]["Name"] = [[Exit]];
G2L["b"]["BackgroundTransparency"] = 0.5;


-- StarterGui.Strawberry.MainFrame.Exit.UICorner
G2L["c"] = Instance.new("UICorner", G2L["b"]);
G2L["c"]["CornerRadius"] = UDim.new(0, 10);


-- StarterGui.Strawberry.MainFrame.Exit.RE
G2L["d"] = Instance.new("ImageButton", G2L["b"]);
G2L["d"]["BorderSizePixel"] = 0;
G2L["d"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
G2L["d"]["ZIndex"] = 3;
G2L["d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["d"]["Image"] = [[http://www.roblox.com/asset/?id=14219436180]];
G2L["d"]["Size"] = UDim2.new(1, -14, 1, -14);
G2L["d"]["BackgroundTransparency"] = 1;
G2L["d"]["Name"] = [[RE]];
G2L["d"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["d"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.Exit.RE.LocalScript
G2L["e"] = Instance.new("LocalScript", G2L["d"]);



-- StarterGui.Strawberry.MainFrame.Exit.Shadow
G2L["f"] = Instance.new("ImageLabel", G2L["b"]);
G2L["f"]["BorderSizePixel"] = 0;
G2L["f"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["f"]["SliceScale"] = 0.1;
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["f"]["ImageTransparency"] = 0.5;
G2L["f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["f"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["f"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["f"]["BackgroundTransparency"] = 1;
G2L["f"]["Name"] = [[Shadow]];
G2L["f"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.Exit.Shadow.UIGradient
G2L["10"] = Instance.new("UIGradient", G2L["f"]);
G2L["10"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.Exit.UIGradient
G2L["11"] = Instance.new("UIGradient", G2L["b"]);
G2L["11"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.Exit.Anim
G2L["12"] = Instance.new("LocalScript", G2L["b"]);
G2L["12"]["Name"] = [[Anim]];


-- StarterGui.Strawberry.MainFrame.Username
G2L["13"] = Instance.new("TextBox", G2L["2"]);
G2L["13"]["Name"] = [[Username]];
G2L["13"]["BorderSizePixel"] = 0;
G2L["13"]["TextSize"] = 18;
G2L["13"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["13"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["13"]["PlaceholderText"] = [[Username]];
G2L["13"]["Size"] = UDim2.new(0, 183, 0, 30);
G2L["13"]["Position"] = UDim2.new(0.44667, 0, 0, 60);
G2L["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13"]["Text"] = [[]];
G2L["13"]["BackgroundTransparency"] = 1;


-- StarterGui.Strawberry.MainFrame.Username.Anim
G2L["14"] = Instance.new("LocalScript", G2L["13"]);
G2L["14"]["Name"] = [[Anim]];


-- StarterGui.Strawberry.MainFrame.Username.BG
G2L["15"] = Instance.new("Frame", G2L["13"]);
G2L["15"]["BorderSizePixel"] = 0;
G2L["15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15"]["Name"] = [[BG]];
G2L["15"]["BackgroundTransparency"] = 0.5;


-- StarterGui.Strawberry.MainFrame.Username.BG.Shadow
G2L["16"] = Instance.new("ImageLabel", G2L["15"]);
G2L["16"]["BorderSizePixel"] = 0;
G2L["16"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["16"]["SliceScale"] = 0.1;
G2L["16"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["16"]["ImageTransparency"] = 0.5;
G2L["16"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["16"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["16"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["16"]["BackgroundTransparency"] = 1;
G2L["16"]["Name"] = [[Shadow]];
G2L["16"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.Username.BG.Shadow.UIGradient
G2L["17"] = Instance.new("UIGradient", G2L["16"]);
G2L["17"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.Username.BG.UICorner
G2L["18"] = Instance.new("UICorner", G2L["15"]);
G2L["18"]["CornerRadius"] = UDim.new(0, 10);


-- StarterGui.Strawberry.MainFrame.Username.BG.UIGradient
G2L["19"] = Instance.new("UIGradient", G2L["15"]);
G2L["19"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame
G2L["1a"] = Instance.new("ScrollingFrame", G2L["2"]);
G2L["1a"]["Active"] = true;
G2L["1a"]["BorderSizePixel"] = 0;
G2L["1a"]["CanvasSize"] = UDim2.new(0, 0, 4, 0);
G2L["1a"]["CanvasPosition"] = Vector2.new(0, 700);
G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["1a"]["Size"] = UDim2.new(0, 279, 0, 253);
G2L["1a"]["ScrollBarImageColor3"] = Color3.fromRGB(255, 65, 100);
G2L["1a"]["Position"] = UDim2.new(0.50458, 0, 0.60143, 0);
G2L["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a"]["ScrollBarThickness"] = 0;
G2L["1a"]["BackgroundTransparency"] = 1;


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Kill
G2L["1b"] = Instance.new("TextButton", G2L["1a"]);
G2L["1b"]["BorderSizePixel"] = 0;
G2L["1b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b"]["TextSize"] = 18;
G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["1b"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["1b"]["BackgroundTransparency"] = 0.8;
G2L["1b"]["Name"] = [[Kill]];
G2L["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b"]["Text"] = [[Kill]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Kill.UICorner
G2L["1c"] = Instance.new("UICorner", G2L["1b"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Kill.Shadow
G2L["1d"] = Instance.new("ImageLabel", G2L["1b"]);
G2L["1d"]["BorderSizePixel"] = 0;
G2L["1d"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["1d"]["SliceScale"] = 0.1;
G2L["1d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["1d"]["ImageTransparency"] = 0.5;
G2L["1d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["1d"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["1d"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["1d"]["BackgroundTransparency"] = 1;
G2L["1d"]["Name"] = [[Shadow]];
G2L["1d"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Kill.Shadow.UIGradient
G2L["1e"] = Instance.new("UIGradient", G2L["1d"]);
G2L["1e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Kill.ex
G2L["1f"] = Instance.new("LocalScript", G2L["1b"]);
G2L["1f"]["Name"] = [[ex]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.UIGridLayout
G2L["20"] = Instance.new("UIGridLayout", G2L["1a"]);
G2L["20"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["20"]["CellSize"] = UDim2.new(1, -35, 0, 40);
G2L["20"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["20"]["CellPadding"] = UDim2.new(0, 5, 0, 7);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Punish
G2L["21"] = Instance.new("TextButton", G2L["1a"]);
G2L["21"]["BorderSizePixel"] = 0;
G2L["21"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["21"]["TextSize"] = 18;
G2L["21"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["21"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["21"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["21"]["BackgroundTransparency"] = 0.8;
G2L["21"]["Name"] = [[Punish]];
G2L["21"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["21"]["Text"] = [[Punish]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Punish.UICorner
G2L["22"] = Instance.new("UICorner", G2L["21"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Punish.Shadow
G2L["23"] = Instance.new("ImageLabel", G2L["21"]);
G2L["23"]["BorderSizePixel"] = 0;
G2L["23"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["23"]["SliceScale"] = 0.1;
G2L["23"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["23"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["23"]["ImageTransparency"] = 0.5;
G2L["23"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["23"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["23"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["23"]["BackgroundTransparency"] = 1;
G2L["23"]["Name"] = [[Shadow]];
G2L["23"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Punish.Shadow.UIGradient
G2L["24"] = Instance.new("UIGradient", G2L["23"]);
G2L["24"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Punish.LocalScript
G2L["25"] = Instance.new("LocalScript", G2L["21"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Ragdoll
G2L["26"] = Instance.new("TextButton", G2L["1a"]);
G2L["26"]["BorderSizePixel"] = 0;
G2L["26"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["26"]["TextSize"] = 18;
G2L["26"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["26"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["26"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["26"]["BackgroundTransparency"] = 0.8;
G2L["26"]["Name"] = [[Ragdoll]];
G2L["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["26"]["Text"] = [[Ragdoll]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Ragdoll.UICorner
G2L["27"] = Instance.new("UICorner", G2L["26"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Ragdoll.Shadow
G2L["28"] = Instance.new("ImageLabel", G2L["26"]);
G2L["28"]["BorderSizePixel"] = 0;
G2L["28"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["28"]["SliceScale"] = 0.1;
G2L["28"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["28"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["28"]["ImageTransparency"] = 0.5;
G2L["28"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["28"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["28"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["28"]["BackgroundTransparency"] = 1;
G2L["28"]["Name"] = [[Shadow]];
G2L["28"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Ragdoll.Shadow.UIGradient
G2L["29"] = Instance.new("UIGradient", G2L["28"]);
G2L["29"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Ragdoll.LocalScript
G2L["2a"] = Instance.new("LocalScript", G2L["26"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.No-limbs
G2L["2b"] = Instance.new("TextButton", G2L["1a"]);
G2L["2b"]["BorderSizePixel"] = 0;
G2L["2b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2b"]["TextSize"] = 18;
G2L["2b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2b"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["2b"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["2b"]["BackgroundTransparency"] = 0.8;
G2L["2b"]["Name"] = [[No-limbs]];
G2L["2b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2b"]["Text"] = [[No-limbs]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.No-limbs.UICorner
G2L["2c"] = Instance.new("UICorner", G2L["2b"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.No-limbs.Shadow
G2L["2d"] = Instance.new("ImageLabel", G2L["2b"]);
G2L["2d"]["BorderSizePixel"] = 0;
G2L["2d"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["2d"]["SliceScale"] = 0.1;
G2L["2d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2d"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["2d"]["ImageTransparency"] = 0.5;
G2L["2d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2d"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["2d"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["2d"]["BackgroundTransparency"] = 1;
G2L["2d"]["Name"] = [[Shadow]];
G2L["2d"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.No-limbs.Shadow.UIGradient
G2L["2e"] = Instance.new("UIGradient", G2L["2d"]);
G2L["2e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.No-limbs.LocalScript
G2L["2f"] = Instance.new("LocalScript", G2L["2b"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Naked
G2L["30"] = Instance.new("TextButton", G2L["1a"]);
G2L["30"]["BorderSizePixel"] = 0;
G2L["30"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["30"]["TextSize"] = 18;
G2L["30"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["30"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["30"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["30"]["BackgroundTransparency"] = 0.8;
G2L["30"]["Name"] = [[Naked]];
G2L["30"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["30"]["Text"] = [[Naked]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Naked.UICorner
G2L["31"] = Instance.new("UICorner", G2L["30"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Naked.Shadow
G2L["32"] = Instance.new("ImageLabel", G2L["30"]);
G2L["32"]["BorderSizePixel"] = 0;
G2L["32"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["32"]["SliceScale"] = 0.1;
G2L["32"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["32"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["32"]["ImageTransparency"] = 0.5;
G2L["32"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["32"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["32"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["32"]["BackgroundTransparency"] = 1;
G2L["32"]["Name"] = [[Shadow]];
G2L["32"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Naked.Shadow.UIGradient
G2L["33"] = Instance.new("UIGradient", G2L["32"]);
G2L["33"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Naked.LocalScript
G2L["34"] = Instance.new("LocalScript", G2L["30"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Kick
G2L["35"] = Instance.new("TextButton", G2L["1a"]);
G2L["35"]["BorderSizePixel"] = 0;
G2L["35"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["35"]["TextSize"] = 18;
G2L["35"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["35"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["35"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["35"]["BackgroundTransparency"] = 0.8;
G2L["35"]["Name"] = [[Kick]];
G2L["35"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["35"]["Text"] = [[Kick]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Kick.UICorner
G2L["36"] = Instance.new("UICorner", G2L["35"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Kick.Shadow
G2L["37"] = Instance.new("ImageLabel", G2L["35"]);
G2L["37"]["BorderSizePixel"] = 0;
G2L["37"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["37"]["SliceScale"] = 0.1;
G2L["37"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["37"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["37"]["ImageTransparency"] = 0.5;
G2L["37"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["37"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["37"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["37"]["BackgroundTransparency"] = 1;
G2L["37"]["Name"] = [[Shadow]];
G2L["37"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Kick.Shadow.UIGradient
G2L["38"] = Instance.new("UIGradient", G2L["37"]);
G2L["38"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Kick.LocalScript
G2L["39"] = Instance.new("LocalScript", G2L["35"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Delete Tool
G2L["3a"] = Instance.new("TextButton", G2L["1a"]);
G2L["3a"]["BorderSizePixel"] = 0;
G2L["3a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3a"]["TextSize"] = 18;
G2L["3a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3a"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["3a"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["3a"]["BackgroundTransparency"] = 0.8;
G2L["3a"]["Name"] = [[Delete Tool]];
G2L["3a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3a"]["Text"] = [[Delete Tool (ONLY YOU)]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Delete Tool.UICorner
G2L["3b"] = Instance.new("UICorner", G2L["3a"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Delete Tool.Shadow
G2L["3c"] = Instance.new("ImageLabel", G2L["3a"]);
G2L["3c"]["BorderSizePixel"] = 0;
G2L["3c"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["3c"]["SliceScale"] = 0.1;
G2L["3c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3c"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["3c"]["ImageTransparency"] = 0.5;
G2L["3c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["3c"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["3c"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["3c"]["BackgroundTransparency"] = 1;
G2L["3c"]["Name"] = [[Shadow]];
G2L["3c"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Delete Tool.Shadow.UIGradient
G2L["3d"] = Instance.new("UIGradient", G2L["3c"]);
G2L["3d"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Delete Tool.LocalScript
G2L["3e"] = Instance.new("LocalScript", G2L["3a"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Blockhead
G2L["3f"] = Instance.new("TextButton", G2L["1a"]);
G2L["3f"]["BorderSizePixel"] = 0;
G2L["3f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3f"]["TextSize"] = 18;
G2L["3f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3f"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["3f"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["3f"]["BackgroundTransparency"] = 0.8;
G2L["3f"]["Name"] = [[Blockhead]];
G2L["3f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3f"]["Text"] = [[Blockhead (R6)]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Blockhead.UICorner
G2L["40"] = Instance.new("UICorner", G2L["3f"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Blockhead.Shadow
G2L["41"] = Instance.new("ImageLabel", G2L["3f"]);
G2L["41"]["BorderSizePixel"] = 0;
G2L["41"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["41"]["SliceScale"] = 0.1;
G2L["41"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["41"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["41"]["ImageTransparency"] = 0.5;
G2L["41"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["41"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["41"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["41"]["BackgroundTransparency"] = 1;
G2L["41"]["Name"] = [[Shadow]];
G2L["41"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Blockhead.Shadow.UIGradient
G2L["42"] = Instance.new("UIGradient", G2L["41"]);
G2L["42"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Blockhead.LocalScript
G2L["43"] = Instance.new("LocalScript", G2L["3f"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Waist
G2L["44"] = Instance.new("TextButton", G2L["1a"]);
G2L["44"]["BorderSizePixel"] = 0;
G2L["44"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["44"]["TextSize"] = 18;
G2L["44"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["44"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["44"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["44"]["BackgroundTransparency"] = 0.8;
G2L["44"]["Name"] = [[Waist]];
G2L["44"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["44"]["Text"] = [[Delete Waist (R15)]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Waist.UICorner
G2L["45"] = Instance.new("UICorner", G2L["44"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Waist.Shadow
G2L["46"] = Instance.new("ImageLabel", G2L["44"]);
G2L["46"]["BorderSizePixel"] = 0;
G2L["46"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["46"]["SliceScale"] = 0.1;
G2L["46"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["46"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["46"]["ImageTransparency"] = 0.5;
G2L["46"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["46"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["46"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["46"]["BackgroundTransparency"] = 1;
G2L["46"]["Name"] = [[Shadow]];
G2L["46"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Waist.Shadow.UIGradient
G2L["47"] = Instance.new("UIGradient", G2L["46"]);
G2L["47"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Waist.LocalScript
G2L["48"] = Instance.new("LocalScript", G2L["44"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Brickify
G2L["49"] = Instance.new("TextButton", G2L["1a"]);
G2L["49"]["BorderSizePixel"] = 0;
G2L["49"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["49"]["TextSize"] = 18;
G2L["49"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["49"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["49"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["49"]["BackgroundTransparency"] = 0.8;
G2L["49"]["Name"] = [[Brickify]];
G2L["49"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["49"]["Text"] = [[Brickify]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Brickify.UICorner
G2L["4a"] = Instance.new("UICorner", G2L["49"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Brickify.Shadow
G2L["4b"] = Instance.new("ImageLabel", G2L["49"]);
G2L["4b"]["BorderSizePixel"] = 0;
G2L["4b"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["4b"]["SliceScale"] = 0.1;
G2L["4b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4b"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["4b"]["ImageTransparency"] = 0.5;
G2L["4b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["4b"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["4b"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["4b"]["BackgroundTransparency"] = 1;
G2L["4b"]["Name"] = [[Shadow]];
G2L["4b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Brickify.Shadow.UIGradient
G2L["4c"] = Instance.new("UIGradient", G2L["4b"]);
G2L["4c"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Brickify.LocalScript
G2L["4d"] = Instance.new("LocalScript", G2L["49"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Goto
G2L["4e"] = Instance.new("TextButton", G2L["1a"]);
G2L["4e"]["BorderSizePixel"] = 0;
G2L["4e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4e"]["TextSize"] = 18;
G2L["4e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4e"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["4e"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["4e"]["BackgroundTransparency"] = 0.8;
G2L["4e"]["Name"] = [[Goto]];
G2L["4e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4e"]["Text"] = [[Goto]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Goto.UICorner
G2L["4f"] = Instance.new("UICorner", G2L["4e"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Goto.Shadow
G2L["50"] = Instance.new("ImageLabel", G2L["4e"]);
G2L["50"]["BorderSizePixel"] = 0;
G2L["50"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["50"]["SliceScale"] = 0.1;
G2L["50"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["50"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["50"]["ImageTransparency"] = 0.5;
G2L["50"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["50"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["50"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["50"]["BackgroundTransparency"] = 1;
G2L["50"]["Name"] = [[Shadow]];
G2L["50"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Goto.Shadow.UIGradient
G2L["51"] = Instance.new("UIGradient", G2L["50"]);
G2L["51"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Goto.LocalScript
G2L["52"] = Instance.new("LocalScript", G2L["4e"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Bald
G2L["53"] = Instance.new("TextButton", G2L["1a"]);
G2L["53"]["BorderSizePixel"] = 0;
G2L["53"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["53"]["TextSize"] = 18;
G2L["53"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["53"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["53"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["53"]["BackgroundTransparency"] = 0.8;
G2L["53"]["Name"] = [[Bald]];
G2L["53"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["53"]["Text"] = [[Bald]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Bald.UICorner
G2L["54"] = Instance.new("UICorner", G2L["53"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Bald.Shadow
G2L["55"] = Instance.new("ImageLabel", G2L["53"]);
G2L["55"]["BorderSizePixel"] = 0;
G2L["55"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["55"]["SliceScale"] = 0.1;
G2L["55"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["55"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["55"]["ImageTransparency"] = 0.5;
G2L["55"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["55"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["55"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["55"]["BackgroundTransparency"] = 1;
G2L["55"]["Name"] = [[Shadow]];
G2L["55"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Bald.Shadow.UIGradient
G2L["56"] = Instance.new("UIGradient", G2L["55"]);
G2L["56"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Bald.LocalScript
G2L["57"] = Instance.new("LocalScript", G2L["53"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.SLock
G2L["58"] = Instance.new("TextButton", G2L["1a"]);
G2L["58"]["BorderSizePixel"] = 0;
G2L["58"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["58"]["TextSize"] = 18;
G2L["58"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["58"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["58"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["58"]["BackgroundTransparency"] = 0.8;
G2L["58"]["Name"] = [[SLock]];
G2L["58"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["58"]["Text"] = [[SLock: Off]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.SLock.UICorner
G2L["59"] = Instance.new("UICorner", G2L["58"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.SLock.Shadow
G2L["5a"] = Instance.new("ImageLabel", G2L["58"]);
G2L["5a"]["BorderSizePixel"] = 0;
G2L["5a"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["5a"]["SliceScale"] = 0.1;
G2L["5a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5a"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["5a"]["ImageTransparency"] = 0.5;
G2L["5a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["5a"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["5a"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["5a"]["BackgroundTransparency"] = 1;
G2L["5a"]["Name"] = [[Shadow]];
G2L["5a"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.SLock.Shadow.UIGradient
G2L["5b"] = Instance.new("UIGradient", G2L["5a"]);
G2L["5b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.SLock.LocalScript
G2L["5c"] = Instance.new("LocalScript", G2L["58"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Fling
G2L["5d"] = Instance.new("TextButton", G2L["1a"]);
G2L["5d"]["BorderSizePixel"] = 0;
G2L["5d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5d"]["TextSize"] = 18;
G2L["5d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5d"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["5d"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["5d"]["BackgroundTransparency"] = 0.8;
G2L["5d"]["Name"] = [[Fling]];
G2L["5d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5d"]["Text"] = [[Fling]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Fling.UICorner
G2L["5e"] = Instance.new("UICorner", G2L["5d"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Fling.Shadow
G2L["5f"] = Instance.new("ImageLabel", G2L["5d"]);
G2L["5f"]["BorderSizePixel"] = 0;
G2L["5f"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["5f"]["SliceScale"] = 0.1;
G2L["5f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5f"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["5f"]["ImageTransparency"] = 0.5;
G2L["5f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["5f"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["5f"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["5f"]["BackgroundTransparency"] = 1;
G2L["5f"]["Name"] = [[Shadow]];
G2L["5f"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Fling.Shadow.UIGradient
G2L["60"] = Instance.new("UIGradient", G2L["5f"]);
G2L["60"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Fling.ex
G2L["61"] = Instance.new("LocalScript", G2L["5d"]);
G2L["61"]["Name"] = [[ex]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Flight
G2L["62"] = Instance.new("TextButton", G2L["1a"]);
G2L["62"]["BorderSizePixel"] = 0;
G2L["62"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["62"]["TextSize"] = 18;
G2L["62"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["62"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["62"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["62"]["BackgroundTransparency"] = 0.8;
G2L["62"]["Name"] = [[Flight]];
G2L["62"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["62"]["Text"] = [[Flight]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Flight.UICorner
G2L["63"] = Instance.new("UICorner", G2L["62"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Flight.Shadow
G2L["64"] = Instance.new("ImageLabel", G2L["62"]);
G2L["64"]["BorderSizePixel"] = 0;
G2L["64"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["64"]["SliceScale"] = 0.1;
G2L["64"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["64"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["64"]["ImageTransparency"] = 0.5;
G2L["64"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["64"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["64"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["64"]["BackgroundTransparency"] = 1;
G2L["64"]["Name"] = [[Shadow]];
G2L["64"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Flight.Shadow.UIGradient
G2L["65"] = Instance.new("UIGradient", G2L["64"]);
G2L["65"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Flight.LocalScript
G2L["66"] = Instance.new("LocalScript", G2L["62"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Nuke Game
G2L["67"] = Instance.new("TextButton", G2L["1a"]);
G2L["67"]["BorderSizePixel"] = 0;
G2L["67"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["67"]["TextSize"] = 18;
G2L["67"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["67"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["67"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["67"]["BackgroundTransparency"] = 0.8;
G2L["67"]["Name"] = [[Nuke Game]];
G2L["67"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["67"]["Text"] = [[Nuke Game]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Nuke Game.UICorner
G2L["68"] = Instance.new("UICorner", G2L["67"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Nuke Game.Shadow
G2L["69"] = Instance.new("ImageLabel", G2L["67"]);
G2L["69"]["BorderSizePixel"] = 0;
G2L["69"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["69"]["SliceScale"] = 0.1;
G2L["69"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["69"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["69"]["ImageTransparency"] = 0.5;
G2L["69"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["69"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["69"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["69"]["BackgroundTransparency"] = 1;
G2L["69"]["Name"] = [[Shadow]];
G2L["69"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Nuke Game.Shadow.UIGradient
G2L["6a"] = Instance.new("UIGradient", G2L["69"]);
G2L["6a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Nuke Game.LocalScript
G2L["6b"] = Instance.new("LocalScript", G2L["67"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove Tools
G2L["6c"] = Instance.new("TextButton", G2L["1a"]);
G2L["6c"]["BorderSizePixel"] = 0;
G2L["6c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6c"]["TextSize"] = 18;
G2L["6c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6c"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["6c"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["6c"]["BackgroundTransparency"] = 0.8;
G2L["6c"]["Name"] = [[Remove Tools]];
G2L["6c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6c"]["Text"] = [[Remove Tools]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove Tools.UICorner
G2L["6d"] = Instance.new("UICorner", G2L["6c"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove Tools.Shadow
G2L["6e"] = Instance.new("ImageLabel", G2L["6c"]);
G2L["6e"]["BorderSizePixel"] = 0;
G2L["6e"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["6e"]["SliceScale"] = 0.1;
G2L["6e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6e"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["6e"]["ImageTransparency"] = 0.5;
G2L["6e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["6e"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["6e"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["6e"]["BackgroundTransparency"] = 1;
G2L["6e"]["Name"] = [[Shadow]];
G2L["6e"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove Tools.Shadow.UIGradient
G2L["6f"] = Instance.new("UIGradient", G2L["6e"]);
G2L["6f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove Tools.ex
G2L["70"] = Instance.new("LocalScript", G2L["6c"]);
G2L["70"]["Name"] = [[ex]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Korblox
G2L["71"] = Instance.new("TextButton", G2L["1a"]);
G2L["71"]["BorderSizePixel"] = 0;
G2L["71"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["71"]["TextSize"] = 18;
G2L["71"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["71"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["71"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["71"]["BackgroundTransparency"] = 0.8;
G2L["71"]["Name"] = [[Korblox]];
G2L["71"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["71"]["Text"] = [[Korblox]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Korblox.UICorner
G2L["72"] = Instance.new("UICorner", G2L["71"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Korblox.Shadow
G2L["73"] = Instance.new("ImageLabel", G2L["71"]);
G2L["73"]["BorderSizePixel"] = 0;
G2L["73"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["73"]["SliceScale"] = 0.1;
G2L["73"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["73"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["73"]["ImageTransparency"] = 0.5;
G2L["73"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["73"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["73"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["73"]["BackgroundTransparency"] = 1;
G2L["73"]["Name"] = [[Shadow]];
G2L["73"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Korblox.Shadow.UIGradient
G2L["74"] = Instance.new("UIGradient", G2L["73"]);
G2L["74"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Korblox.LocalScript
G2L["75"] = Instance.new("LocalScript", G2L["71"]);



-- StarterGui.Strawberry.MainFrame.Check
G2L["76"] = Instance.new("Frame", G2L["2"]);
G2L["76"]["ZIndex"] = 2;
G2L["76"]["BorderSizePixel"] = 0;
G2L["76"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["76"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["76"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["76"]["Position"] = UDim2.new(0.783, 10, 0.171, 0);
G2L["76"]["Name"] = [[Check]];
G2L["76"]["BackgroundTransparency"] = 0.5;


-- StarterGui.Strawberry.MainFrame.Check.UICorner
G2L["77"] = Instance.new("UICorner", G2L["76"]);
G2L["77"]["CornerRadius"] = UDim.new(0, 10);


-- StarterGui.Strawberry.MainFrame.Check.RE
G2L["78"] = Instance.new("ImageButton", G2L["76"]);
G2L["78"]["BorderSizePixel"] = 0;
G2L["78"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
G2L["78"]["ZIndex"] = 3;
G2L["78"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["78"]["Image"] = [[http://www.roblox.com/asset/?id=6353957304]];
G2L["78"]["Size"] = UDim2.new(1, -14, 1, -14);
G2L["78"]["BackgroundTransparency"] = 1;
G2L["78"]["Name"] = [[RE]];
G2L["78"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["78"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.Check.RE.Check
G2L["79"] = Instance.new("LocalScript", G2L["78"]);
G2L["79"]["Name"] = [[Check]];


-- StarterGui.Strawberry.MainFrame.Check.Shadow
G2L["7a"] = Instance.new("ImageLabel", G2L["76"]);
G2L["7a"]["BorderSizePixel"] = 0;
G2L["7a"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["7a"]["SliceScale"] = 0.1;
G2L["7a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7a"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["7a"]["ImageTransparency"] = 0.5;
G2L["7a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["7a"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["7a"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["7a"]["BackgroundTransparency"] = 1;
G2L["7a"]["Name"] = [[Shadow]];
G2L["7a"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.Check.Shadow.UIGradient
G2L["7b"] = Instance.new("UIGradient", G2L["7a"]);
G2L["7b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.Check.UIGradient
G2L["7c"] = Instance.new("UIGradient", G2L["76"]);
G2L["7c"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.Check.Anim
G2L["7d"] = Instance.new("LocalScript", G2L["76"]);
G2L["7d"]["Name"] = [[Anim]];


-- StarterGui.Strawberry.MainFrame.UIDragDetector
G2L["7e"] = Instance.new("UIDragDetector", G2L["2"]);



-- StarterGui.Strawberry.MainFrame.Exit.RE.LocalScript
local function C_e()
local script = G2L["e"];
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Parent:Destroy()
	end)
end;
task.spawn(C_e);
-- StarterGui.Strawberry.MainFrame.Exit.Anim
local function C_12()
local script = G2L["12"];
	local button = script.Parent
	
	button.MouseEnter:Connect(function()
		button:TweenSize(UDim2.new(0, 32,0, 32), "Out", "Quad", 0.1, true)
	end)
	button.MouseLeave:Connect(function()
		button:TweenSize(UDim2.new(0, 30,0, 30), "Out", "Quad", 0.1, true)
	end)
end;
task.spawn(C_12);
-- StarterGui.Strawberry.MainFrame.Username.Anim
local function C_14()
local script = G2L["14"];
	local button = script.Parent
	
	button.MouseEnter:Connect(function()
		button:TweenSize(UDim2.new(0, 185,0, 32), "Out", "Quad", 0.1, true)
	end)
	button.MouseLeave:Connect(function()
		button:TweenSize(UDim2.new(0, 183,0, 30), "Out", "Quad", 0.1, true)
	end)
end;
task.spawn(C_14);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Kill.ex
local function C_1f()
local script = G2L["1f"];
	script.Parent.MouseButton1Click:Connect(function()
		local name = script.Parent.Parent.Parent.Username.Text
		local player = game.Players:FindFirstChild(name)
	
		if name ~= "all" and name ~= "others" and name ~= "me" then
			if player and player.Character and player.Character:FindFirstChild("Head") then
				delete(player.Character.Head)
			end
		elseif name == "all" then
			for _, v in pairs(game.Players:GetPlayers()) do
				if v.Character and v.Character:FindFirstChild("Head") then
					delete(v.Character.Head)
				end
			end
		elseif name == "others" then
			local localPlayer = game.Players.LocalPlayer
			for _, v in pairs(game.Players:GetPlayers()) do
				if v ~= localPlayer and v.Character and v.Character:FindFirstChild("Head") then
					delete(v.Character.Head)
				end
			end
		elseif name == "me" then
			local localPlayer = game.Players.LocalPlayer
			if localPlayer.Character and localPlayer.Character:FindFirstChild("Head") then
				delete(localPlayer.Character.Head)
			end
		end
	end)
end;
task.spawn(C_1f);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Punish.LocalScript
local function C_25()
local script = G2L["25"];
	script.Parent.MouseButton1Click:Connect(function()
		local name = script.Parent.Parent.Parent.Username.Text
		local player = game.Players:FindFirstChild(name)
			
		if name ~= "all" and name ~= "others" and name ~= "me" then
			if player and player.Character and player.Character:FindFirstChild("Head") then
				delete(player.Character)
			end
		elseif name == "all" then
			for _, v in pairs(game.Players:GetPlayers()) do
				if v.Character and v.Character:FindFirstChild("Head") then
					delete(v.Character)
				end
			end
		elseif name == "others" then
			local localPlayer = game.Players.LocalPlayer
			for _, v in pairs(game.Players:GetPlayers()) do
				if v ~= localPlayer and v.Character and v.Character:FindFirstChild("Head") then
					delete(v.Character)
				end
			end
		elseif name == "me" then
			local localPlayer = game.Players.LocalPlayer
			if localPlayer.Character and localPlayer.Character:FindFirstChild("Head") then
				delete(game.Players.LocalPlayer.Character)
			end
		end
	end)
end;
task.spawn(C_25);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Ragdoll.LocalScript
local function C_2a()
local script = G2L["2a"];
	script.Parent.MouseButton1Click:Connect(function()
		local name = script.Parent.Parent.Parent.Username.Text
		local player = game.Players:FindFirstChild(name)
		
		if name ~= "all" and name ~= "others" and name ~= "me" then
			if player and player.Character and player.Character:FindFirstChild("Head") then
				delete(player.Character.HumanoidRootPart)
			end
		elseif name == "all" then
			for _, v in pairs(game.Players:GetPlayers()) do
				if v.Character and v.Character:FindFirstChild("Head") then
					delete(v.Character.HumanoidRootPart)
				end
			end
		elseif name == "others" then
			local localPlayer = game.Players.LocalPlayer
			for _, v in pairs(game.Players:GetPlayers()) do
				if v ~= localPlayer and v.Character and v.Character:FindFirstChild("Head") then
					delete(v.Character.HumanoidRootPart)
				end
			end
		elseif name == "me" then
			local localPlayer = game.Players.LocalPlayer
			if localPlayer.Character and localPlayer.Character:FindFirstChild("Head") then
				delete(game.Players.LocalPlayer.Character.HumanoidRootPart)
			end
		end
	end)
end;
task.spawn(C_2a);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.No-limbs.LocalScript
local function C_2f()
local script = G2L["2f"];
	--this was my pain and suffering :')
	
	script.Parent.MouseButton1Click:Connect(function()
		local name = script.Parent.Parent.Parent.Username.Text
		local localPlayer = game.Players.LocalPlayer
		local player = game.Players:FindFirstChild(name)
	
		if name ~= "all" and name ~= "others" and name ~= "me" then
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
	
		elseif name == "all" then
			for _, v in pairs(game.Players:GetPlayers()) do
				local character = v.Character
				if character and character:FindFirstChild("Head") then
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
	
		elseif name == "others" then
			for _, v in pairs(game.Players:GetPlayers()) do
				if v ~= localPlayer then
					local character = v.Character
					if character and character:FindFirstChild("Head") then
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
			end
	
		elseif name == "me" then
			local character = localPlayer and localPlayer.Character
			if character and character:FindFirstChild("Head") then
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
	end)
	
end;
task.spawn(C_2f);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Naked.LocalScript
local function C_34()
local script = G2L["34"];
	local Players = game:GetService("Players")
	local localPlayer = Players.LocalPlayer
	
	script.Parent.MouseButton1Click:Connect(function()
		local name = script.Parent.Parent.Parent.Username.Text
		local player = Players:FindFirstChild(name)
	
		if name ~= "all" and name ~= "others" and name ~= "me" then
			if player and player.Character and player.Character:FindFirstChild("Head") then
				for _, v in pairs(player.Character:GetChildren()) do
					if v:IsA("Shirt") or v:IsA("Pants") or v:IsA("ShirtGraphic") then
						delete(v)
					end
				end
			end
		elseif name == "all" then
			for _, v in pairs(Players:GetPlayers()) do
				if v.Character and v.Character:FindFirstChild("Head") then
					for _, x in pairs(v.Character:GetChildren()) do
						if x:IsA("Shirt") or x:IsA("Pants") or x:IsA("ShirtGraphic") then
							delete(x)
						end
					end
				end
			end
		elseif name == "others" then
			for _, v in pairs(Players:GetPlayers()) do
				if v ~= localPlayer and v.Character and v.Character:FindFirstChild("Head") then
					for _, x in pairs(v.Character:GetChildren()) do
						if x:IsA("Shirt") or x:IsA("Pants") or x:IsA("ShirtGraphic") then
							delete(x)
						end
					end
				end
			end
		elseif name == "me" then
			if localPlayer.Character and localPlayer.Character:FindFirstChild("Head") then
				for _, v in pairs(localPlayer.Character:GetChildren()) do
					if v:IsA("Shirt") or v:IsA("Pants") or v:IsA("ShirtGraphic") then
						delete(v)
					end
				end
			end
		end
	end)
end;
task.spawn(C_34);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Kick.LocalScript
local function C_39()
local script = G2L["39"];
	script.Parent.MouseButton1Click:Connect(function()
		local name = script.Parent.Parent.Parent.Username.Text
		local player = game.Players:FindFirstChild(name)
		
		if name ~= "all" and name ~= "others" and name ~= "me" then
			if player then
				delete(player)
			end
		elseif name == "all" then
			for _, v in pairs(game.Players:GetPlayers()) do
				if v then
					delete(v)
				end
			end
		elseif name == "others" then
			local localPlayer = game.Players.LocalPlayer
			for _, v in pairs(game.Players:GetPlayers()) do
				if v ~= localPlayer then
					delete(v)
				end
			end
		elseif name == "me" then
			local localPlayer = game.Players.LocalPlayer
			if localPlayer then
				delete(game.Players.LocalPlayer)
			end
		end
	end)
end;
task.spawn(C_39);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Delete Tool.LocalScript
local function C_3e()
local script = G2L["3e"];
	script.Parent.MouseButton1Click:Connect(function()
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
end;
task.spawn(C_3e);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Blockhead.LocalScript
local function C_43()
local script = G2L["43"];
	script.Parent.MouseButton1Click:Connect(function()
		local name = script.Parent.Parent.Parent.Username.Text
		local player = game.Players:FindFirstChild(name)
		local character = player.Character
	
		if name ~= "all" and name ~= "others" and name ~= "me" then
			if player and player.Character and player.Character:FindFirstChild("Head") then
				delete(character.Head:FindFirstChildWhichIsA("SpecialMesh"))
			end
		elseif name == "all" then
			for _, v in pairs(game.Players:GetPlayers()) do
				if v.Character and v.Character:FindFirstChild("Head") then
					delete(v.Character.Head:FindFirstChildWhichIsA("SpecialMesh"))
				end
			end
		elseif name == "others" then
			local localPlayer = game.Players.LocalPlayer
			for _, v in pairs(game.Players:GetPlayers()) do
				if v ~= localPlayer and v.Character and v.Character:FindFirstChild("Head") then
					delete(v.Character.Head:FindFirstChildWhichIsA("SpecialMesh"))
				end
			end
		elseif name == "me" then
			local localPlayer = game.Players.LocalPlayer
			if localPlayer.Character and localPlayer.Character:FindFirstChild("Head") then
				delete(localPlayer.Character.Head:FindFirstChildWhichIsA("SpecialMesh"))
			end
		end
	end)
end;
task.spawn(C_43);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Waist.LocalScript
local function C_48()
local script = G2L["48"];
	script.Parent.MouseButton1Click:Connect(function()
		local name = script.Parent.Parent.Parent.Username.Text
		local player = game.Players:FindFirstChild(name)
	
		if name ~= "all" and name ~= "others" and name ~= "me" then
			if player and player.Character and player.Character:FindFirstChild("Head") then
				local waist = player.Character:FindFirstChild("UpperTorso") and player.Character.UpperTorso:FindFirstChild("Waist")
				if waist then
					delete(waist)
				end
			end
		elseif name == "all" then
			for _, v in pairs(game.Players:GetPlayers()) do
				if v.Character and v.Character:FindFirstChild("Head") then
					local waist = v.Character:FindFirstChild("UpperTorso") and v.Character.UpperTorso:FindFirstChild("Waist")
					if waist then
						delete(waist)
					end
				end
			end
		elseif name == "others" then
			local localPlayer = game.Players.LocalPlayer
			for _, v in pairs(game.Players:GetPlayers()) do
				if v ~= localPlayer and v.Character and v.Character:FindFirstChild("Head") then
					local waist = v.Character:FindFirstChild("UpperTorso") and v.Character.UpperTorso:FindFirstChild("Waist")
					if waist then
						delete(waist)
					end
				end
			end
		elseif name == "me" then
			local localPlayer = game.Players.LocalPlayer
			if localPlayer.Character and localPlayer.Character:FindFirstChild("Head") then
				local waist = localPlayer.Character:FindFirstChild("UpperTorso") and localPlayer.Character.UpperTorso:FindFirstChild("Waist")
				if waist then
					delete(waist)
				end
			end
		end
	end)
end;
task.spawn(C_48);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Brickify.LocalScript
local function C_4d()
local script = G2L["4d"];
	script.Parent.MouseButton1Click:Connect(function()
		local name = script.Parent.Parent.Parent.Username.Text
		local player = game.Players:FindFirstChild(name)
	
		if name ~= "all" and name ~= "others" and name ~= "me" then
			if player and player.Character and player.Character:FindFirstChild("Head") then
				delete(player.Character.Humanoid)
			end
		elseif name == "all" then
			for _, v in pairs(game.Players:GetPlayers()) do
				if v.Character and v.Character:FindFirstChild("Head") then
					delete(v.Character.Humanoid)
				end
			end
		elseif name == "others" then
			local localPlayer = game.Players.LocalPlayer
			for _, v in pairs(game.Players:GetPlayers()) do
				if v ~= localPlayer and v.Character and v.Character:FindFirstChild("Head") then
					delete(v.Character.Humanoid)
				end
			end
		elseif name == "me" then
			local localPlayer = game.Players.LocalPlayer
			if localPlayer.Character and localPlayer.Character:FindFirstChild("Head") then
				delete(localPlayer.Character.Humanoid)
			end
		end
	end)
end;
task.spawn(C_4d);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Goto.LocalScript
local function C_52()
local script = G2L["52"];
	script.Parent.MouseButton1Click:Connect(function()
		local name = script.Parent.Parent.Parent.Username.Text
		local player = game.Players:FindFirstChild(name)
	
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(player.Character.HumanoidRootPart.CFrame)
	end)
end;
task.spawn(C_52);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Bald.LocalScript
local function C_57()
local script = G2L["57"];
	local Players = game:GetService("Players")
	local localPlayer = Players.LocalPlayer
	
	script.Parent.MouseButton1Click:Connect(function()
		local name = script.Parent.Parent.Parent.Username.Text
		local player = Players:FindFirstChild(name)
	
		if name ~= "all" and name ~= "others" and name ~= "me" then
			if player and player.Character and player.Character:FindFirstChild("Head") then
				for _, v in pairs(player.Character:GetChildren()) do
					if v:IsA("Accessory") or v:IsA("Pants") or v:IsA("ShirtGraphic") then
						delete(v)
					end
				end
			end
		elseif name == "all" then
			for _, v in pairs(Players:GetPlayers()) do
				if v.Character and v.Character:FindFirstChild("Head") then
					for _, x in pairs(v.Character:GetChildren()) do
						if x:IsA("Accessory") then
							delete(x)
						end
					end
				end
			end
		elseif name == "others" then
			for _, v in pairs(Players:GetPlayers()) do
				if v ~= localPlayer and v.Character and v.Character:FindFirstChild("Head") then
					for _, x in pairs(v.Character:GetChildren()) do
						if x:IsA("Accessory") then
							delete(x)
						end
					end
				end
			end
		elseif name == "me" then
			if localPlayer.Character and localPlayer.Character:FindFirstChild("Head") then
				for _, v in pairs(localPlayer.Character:GetChildren()) do
					if v:IsA("Accessory") then
						delete(v)
					end
				end
			end
		end
	end)
end;
task.spawn(C_57);
local function C_5c()
local script = G2L["5c"];
	local curplayers = {}
	local slocked = false
	script.Parent.MouseButton1Click:Connect(function()
		slocked = not slocked
		if slocked then
			script.Parent.Text = "SLock: On"
			script.Parent.BackgroundColor3 = Color3.fromRGB(0, 255, 60)
			script.Parent.BackgroundTransparency = 0.6
			for _, p in pairs(game:GetService("Players"):GetChildren()) do
				table.insert(curplayers, p.Name)
			end
			game:GetService("Players").PlayerAdded:Connect(function(plr)
				for _, ph in pairs(curplayers) do
					if plr.Name:find(ph) then
						notification("Strawberry", plr.Name..", tried joining!", 1)
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
			script.Parent.Text = "SLock: Off"
			script.Parent.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			script.Parent.BackgroundTransparency = 0.8
			curplayers = {}
		end
	end)
end;
task.spawn(C_5c);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Fling.ex
local function C_61()
local script = G2L["61"];
	script.Parent.MouseButton1Click:Connect(function()
		local lp = game:GetService("Players").LocalPlayer
		local name = script.Parent.Parent.Parent.Username.Text
		local player = game.Players:FindFirstChild(name)
	
		local Target = player.Name
		if Target[1] then
			Target = Target[1]
	
			local Thrust = Instance.new('BodyThrust', lp.Character.HumanoidRootPart)
			Thrust.Force = Vector3.new(9999,9999,9999)
			Thrust.Name = "YeetForce"
			repeat
				lp.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame
				Thrust.Location = Target.Character.HumanoidRootPart.Position
				game:FindService("RunService").Heartbeat:wait()
			until not Target.Character:FindFirstChild("Head")
		else end
	end)
end;
task.spawn(C_61);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Flight.LocalScript
local function C_66()
local script = G2L["66"];
	local flying = false
	local Fly = false
	
	script.Parent.MouseButton1Click:Connect(function()
		if Fly == true then
			Fly = false
			return
		end
		
		Fly = true
		
		local mouse=game.Players.LocalPlayer:GetMouse''
		local localplayer=game.Players.LocalPlayer
		game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
		local torso = game.Players.LocalPlayer.Character.HumanoidRootPart
		local speed=0
		local keys={a=false,d=false,w=false,s=false} 
		local e1
		local e2
		
		local function start()
			local pos = Instance.new("BodyPosition",torso)
			local gyro = Instance.new("BodyGyro",torso)
			pos.Name="EPIXPOS"
			pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
			pos.position = torso.Position
			gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
			gyro.cframe = torso.CFrame
			repeat
				wait()
				localplayer.Character.Humanoid.PlatformStand=true
				local new=gyro.cframe - gyro.cframe.p + pos.position
				if not keys.w and not keys.s and not keys.a and not keys.d then
					speed=1
				end 
				if keys.w then 
					new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
					speed=speed+0.01
				end
				if keys.s then 
					new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
					speed=speed+0.01
				end
				if keys.d then 
					new = new * CFrame.new(speed,0,0)
					speed=speed+0.01
				end
				if keys.a then 
					new = new * CFrame.new(-speed,0,0)
					speed=speed+0.01
				end
				if speed>5 then
					speed=5
				end
				pos.position=new.p
				if keys.w then
					gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*15),0,0)
				elseif keys.s then
					gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*15),0,0)
				else
					gyro.cframe = workspace.CurrentCamera.CoordinateFrame
				end
			until not Fly
			if gyro then gyro:Destroy() end
			if pos then pos:Destroy() end
			flying=false
			localplayer.Character.Humanoid.PlatformStand=false
			speed=0
		end
		e1=mouse.KeyDown:connect(function(key)
			if not torso or not torso.Parent then flying=false e1:disconnect() e2:disconnect() return end
			if key=="w" then
				keys.w=true
			elseif key=="s" then
				keys.s=true
			elseif key=="a" then
				keys.a=true
			elseif key=="d" then
				keys.d=true
			end
		end)
		e2=mouse.KeyUp:connect(function(key)
			if key=="w" then
				keys.w=false
			elseif key=="s" then
				keys.s=false
			elseif key=="a" then
				keys.a=false
			elseif key=="d" then
				keys.d=false
			end
		end)
		start()
	end)
end;
task.spawn(C_66);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Nuke Game.LocalScript
local function C_6b()
local script = G2L["6b"];
	script.Parent.MouseButton1Click:Connect(function()
		for _, v in ipairs(workspace:GetDescendants()) do
			if v:IsA("Camera") or v:IsA("Terrain") then else
				delete(v)
			end
		end
		for _, p in pairs(game:GetService("Players"):GetChildren()) do
			if p:IsA("Player") then
				delete(p.Character)
			end
		end
	end)
end;
task.spawn(C_6b);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove Tools.ex
local function C_70()
local script = G2L["70"];
	script.Parent.MouseButton1Click:Connect(function()
		local name = script.Parent.Parent.Parent.Username.Text
		local player = game.Players:FindFirstChild(name)
	
		if name ~= "all" and name ~= "others" and name ~= "me" then
			if player then
				for _, v in pairs(player.BackPack:GetChildren()) do
					delete(v)
				end
				for _, v in pairs(player.Character:GetChildren()) do
					if v:IsA("Tool") then
						delete(v)
					end
				end
			end
		elseif name == "all" then
			for _, v in pairs(game.Players:GetPlayers()) do
				if v then
					for _, x in pairs(v.BackPack:GetChildren()) do
						delete(x)
					end
					for _, x in pairs(v.Character:GetChildren()) do
						if x:IsA("Tool") then
							delete(x)
						end
					end
				end
			end
		elseif name == "others" then
			local localPlayer = game.Players.LocalPlayer
			for _, v in pairs(game.Players:GetPlayers()) do
				if v ~= localPlayer then
					for _, x in pairs(v.BackPack:GetChildren()) do
						delete(x)
					end
					for _, x in pairs(v.Character:GetChildren()) do
						if x:IsA("Tool") then
							delete(x)
						end
					end
				end
			end
		elseif name == "me" then
			local localPlayer = game.Players.LocalPlayer
			if localPlayer then
				for _, v in pairs(game.Players.LocalPlayer.BackPack:GetChildren()) do
					delete(v)
				end
				for _, v in pairs(localPlayer.Character:GetChildren()) do
					if v:IsA("Tool") then
						delete(v)
					end
				end
			end
		end
	end)
end;
task.spawn(C_70);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Korblox.LocalScript
local function C_75()
local script = G2L["75"];
	--this was my pain and suffering :')
	
	script.Parent.MouseButton1Click:Connect(function()
		local name = script.Parent.Parent.Parent.Username.Text
		local localPlayer = game.Players.LocalPlayer
		local player = game.Players:FindFirstChild(name)
	
		if name ~= "all" and name ~= "others" and name ~= "me" then
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
	
		elseif name == "all" then
			for _, v in pairs(game.Players:GetPlayers()) do
				local character = v.Character
				if character and character:FindFirstChild("Head") then
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
	
		elseif name == "others" then
			for _, v in pairs(game.Players:GetPlayers()) do
				if v ~= localPlayer then
					local character = v.Character
					if character and character:FindFirstChild("Head") then
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
			end
	
		elseif name == "me" then
			local character = localPlayer and localPlayer.Character
			if character and character:FindFirstChild("Head") then
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
	end)
end;
task.spawn(C_75);
-- StarterGui.Strawberry.MainFrame.Check.RE.Check
local function C_79()
local script = G2L["79"];
	local Players = game:GetService("Players")
	local textBox = script.Parent.Parent.Parent.Username
	
	local SPECIAL_KEYWORDS = {
		["all"] = true,
		["others"] = true,
		["me"] = true
	}
	
	local function findMatchingUsername(partial)
		local lowerPartial = partial:lower()
	
		if SPECIAL_KEYWORDS[lowerPartial] then
			return nil
		end
	
		for _, player in ipairs(Players:GetPlayers()) do
			if player.DisplayName:lower():sub(1, #lowerPartial) == lowerPartial then
				return player.Name
			end
		end
		return nil
	end
	
	script.Parent.MouseButton1Click:Connect(function()
		local input = textBox.Text
		task.wait()
	
		if input ~= "" and not SPECIAL_KEYWORDS[input:lower()] then
			local match = findMatchingUsername(input)
			if match and match ~= input then
				textBox.Text = match
			end
		end
	end)
end;
task.spawn(C_79);
-- StarterGui.Strawberry.MainFrame.Check.Anim
local function C_7d()
local script = G2L["7d"];
	local button = script.Parent
	
	button.MouseEnter:Connect(function()
		button:TweenSize(UDim2.new(0, 32,0, 32), "Out", "Quad", 0.1, true)
	end)
	button.MouseLeave:Connect(function()
		button:TweenSize(UDim2.new(0, 30,0, 30), "Out", "Quad", 0.1, true)
	end)
end;
task.spawn(C_7d);

return G2L["1"], require;
