local G2L = {};

-- StarterGui.Strawberry
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["DisplayOrder"] = 1000000000;
G2L["1"]["Name"] = [[Strawberry]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["1"]["ResetOnSpawn"] = false;


-- StarterGui.Strawberry.MainFrame
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(255, 52, 89);
G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2"]["Size"] = UDim2.new(0, 300, 0, 350);
G2L["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
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
G2L["4"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
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
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["6"]["ImageColor3"] = Color3.fromRGB(153, 153, 153);
G2L["6"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["6"]["Image"] = [[rbxassetid://413422291]];
G2L["6"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["6"]["BackgroundTransparency"] = 1;
G2L["6"]["Name"] = [[Gloss]];
G2L["6"]["Position"] = UDim2.new(0.50333, 0, 0.5, 0);


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
G2L["a"]["Text"] = [[🍓Strawberry v5.00]];
G2L["a"]["Name"] = [[Title]];
G2L["a"]["Position"] = UDim2.new(0.22333, 0, 0.02, 0);


-- StarterGui.Strawberry.MainFrame.Username
G2L["b"] = Instance.new("TextBox", G2L["2"]);
G2L["b"]["CursorPosition"] = -1;
G2L["b"]["Name"] = [[Username]];
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["TextSize"] = 18;
G2L["b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["b"]["PlaceholderText"] = [[Username (all,others,me)]];
G2L["b"]["Size"] = UDim2.new(0, 183, 0, 30);
G2L["b"]["Position"] = UDim2.new(0.44667, 0, 0, 60);
G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["Text"] = [[]];
G2L["b"]["BackgroundTransparency"] = 1;


-- StarterGui.Strawberry.MainFrame.Username.Anim
G2L["c"] = Instance.new("LocalScript", G2L["b"]);
G2L["c"]["Name"] = [[Anim]];


-- StarterGui.Strawberry.MainFrame.Username.BG
G2L["d"] = Instance.new("Frame", G2L["b"]);
G2L["d"]["BorderSizePixel"] = 0;
G2L["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d"]["Name"] = [[BG]];
G2L["d"]["BackgroundTransparency"] = 0.5;


-- StarterGui.Strawberry.MainFrame.Username.BG.Shadow
G2L["e"] = Instance.new("ImageLabel", G2L["d"]);
G2L["e"]["BorderSizePixel"] = 0;
G2L["e"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["e"]["SliceScale"] = 0.1;
G2L["e"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["e"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["e"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["e"]["BackgroundTransparency"] = 1;
G2L["e"]["Name"] = [[Shadow]];
G2L["e"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.Username.BG.Shadow.UIGradient
G2L["f"] = Instance.new("UIGradient", G2L["e"]);
G2L["f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.Username.BG.UICorner
G2L["10"] = Instance.new("UICorner", G2L["d"]);
G2L["10"]["CornerRadius"] = UDim.new(0, 10);


-- StarterGui.Strawberry.MainFrame.Username.BG.UIGradient
G2L["11"] = Instance.new("UIGradient", G2L["d"]);
G2L["11"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame
G2L["12"] = Instance.new("ScrollingFrame", G2L["2"]);
G2L["12"]["Active"] = true;
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["12"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["12"]["Size"] = UDim2.new(0, 279, 0, 254);
G2L["12"]["ScrollBarImageColor3"] = Color3.fromRGB(255, 65, 100);
G2L["12"]["Position"] = UDim2.new(0.50458, 0, 0.60286, 0);
G2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12"]["ScrollBarThickness"] = 10;
G2L["12"]["BackgroundTransparency"] = 1;


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.UIGridLayout
G2L["13"] = Instance.new("UIGridLayout", G2L["12"]);
G2L["13"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["13"]["CellSize"] = UDim2.new(1, -35, 0, 40);
G2L["13"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["13"]["CellPadding"] = UDim2.new(0, 5, 0, 10);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.SubTitle
G2L["14"] = Instance.new("TextLabel", G2L["12"]);
G2L["14"]["TextWrapped"] = true;
G2L["14"]["BorderSizePixel"] = 0;
G2L["14"]["TextSize"] = 18;
G2L["14"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["14"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14"]["BackgroundTransparency"] = 1;
G2L["14"]["Size"] = UDim2.new(0, 165, 0, 17);
G2L["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14"]["Text"] = [[.gg/Tp3mBAeUgY]];
G2L["14"]["Name"] = [[SubTitle]];
G2L["14"]["Position"] = UDim2.new(0.22667, 0, 0.06857, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Waist
G2L["15"] = Instance.new("TextButton", G2L["12"]);
G2L["15"]["BorderSizePixel"] = 0;
G2L["15"]["TextSize"] = 18;
G2L["15"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["15"]["BackgroundTransparency"] = 0.8;
G2L["15"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15"]["Text"] = [[Delete Waist (R15)]];
G2L["15"]["Name"] = [[Waist]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Waist.UICorner
G2L["16"] = Instance.new("UICorner", G2L["15"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Waist.Shadow
G2L["17"] = Instance.new("ImageLabel", G2L["15"]);
G2L["17"]["BorderSizePixel"] = 0;
G2L["17"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["17"]["SliceScale"] = 0.1;
G2L["17"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["17"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["17"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["17"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["17"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["17"]["BackgroundTransparency"] = 1;
G2L["17"]["Name"] = [[Shadow]];
G2L["17"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Waist.Shadow.UIGradient
G2L["18"] = Instance.new("UIGradient", G2L["17"]);
G2L["18"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Waist.LocalScript
G2L["19"] = Instance.new("LocalScript", G2L["15"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Bald
G2L["1a"] = Instance.new("TextButton", G2L["12"]);
G2L["1a"]["BorderSizePixel"] = 0;
G2L["1a"]["TextSize"] = 18;
G2L["1a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["1a"]["BackgroundTransparency"] = 0.8;
G2L["1a"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a"]["Text"] = [[Bald]];
G2L["1a"]["Name"] = [[Bald]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Bald.UICorner
G2L["1b"] = Instance.new("UICorner", G2L["1a"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Bald.Shadow
G2L["1c"] = Instance.new("ImageLabel", G2L["1a"]);
G2L["1c"]["BorderSizePixel"] = 0;
G2L["1c"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["1c"]["SliceScale"] = 0.1;
G2L["1c"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["1c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["1c"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["1c"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["1c"]["BackgroundTransparency"] = 1;
G2L["1c"]["Name"] = [[Shadow]];
G2L["1c"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Bald.Shadow.UIGradient
G2L["1d"] = Instance.new("UIGradient", G2L["1c"]);
G2L["1d"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Bald.LocalScript
G2L["1e"] = Instance.new("LocalScript", G2L["1a"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Blockhead
G2L["1f"] = Instance.new("TextButton", G2L["12"]);
G2L["1f"]["BorderSizePixel"] = 0;
G2L["1f"]["TextSize"] = 18;
G2L["1f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["1f"]["BackgroundTransparency"] = 0.8;
G2L["1f"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f"]["Text"] = [[Blockhead (R6)]];
G2L["1f"]["Name"] = [[Blockhead]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Blockhead.UICorner
G2L["20"] = Instance.new("UICorner", G2L["1f"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Blockhead.Shadow
G2L["21"] = Instance.new("ImageLabel", G2L["1f"]);
G2L["21"]["BorderSizePixel"] = 0;
G2L["21"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["21"]["SliceScale"] = 0.1;
G2L["21"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["21"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["21"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["21"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["21"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["21"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["21"]["BackgroundTransparency"] = 1;
G2L["21"]["Name"] = [[Shadow]];
G2L["21"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Blockhead.Shadow.UIGradient
G2L["22"] = Instance.new("UIGradient", G2L["21"]);
G2L["22"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Blockhead.LocalScript
G2L["23"] = Instance.new("LocalScript", G2L["1f"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.BreakSpawn
G2L["24"] = Instance.new("TextButton", G2L["12"]);
G2L["24"]["BorderSizePixel"] = 0;
G2L["24"]["TextSize"] = 18;
G2L["24"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["24"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["24"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["24"]["BackgroundTransparency"] = 0.8;
G2L["24"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["24"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["24"]["Text"] = [[Break Spawnlocations]];
G2L["24"]["Name"] = [[BreakSpawn]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.BreakSpawn.UICorner
G2L["25"] = Instance.new("UICorner", G2L["24"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.BreakSpawn.Shadow
G2L["26"] = Instance.new("ImageLabel", G2L["24"]);
G2L["26"]["BorderSizePixel"] = 0;
G2L["26"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["26"]["SliceScale"] = 0.1;
G2L["26"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["26"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["26"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["26"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["26"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["26"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["26"]["BackgroundTransparency"] = 1;
G2L["26"]["Name"] = [[Shadow]];
G2L["26"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.BreakSpawn.Shadow.UIGradient
G2L["27"] = Instance.new("UIGradient", G2L["26"]);
G2L["27"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.BreakSpawn.LocalScript
G2L["28"] = Instance.new("LocalScript", G2L["24"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Brickify
G2L["29"] = Instance.new("TextButton", G2L["12"]);
G2L["29"]["BorderSizePixel"] = 0;
G2L["29"]["TextSize"] = 18;
G2L["29"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["29"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["29"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["29"]["BackgroundTransparency"] = 0.8;
G2L["29"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["29"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["29"]["Text"] = [[Brickify]];
G2L["29"]["Name"] = [[Brickify]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Brickify.UICorner
G2L["2a"] = Instance.new("UICorner", G2L["29"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Brickify.Shadow
G2L["2b"] = Instance.new("ImageLabel", G2L["29"]);
G2L["2b"]["BorderSizePixel"] = 0;
G2L["2b"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["2b"]["SliceScale"] = 0.1;
G2L["2b"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["2b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2b"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["2b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2b"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["2b"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["2b"]["BackgroundTransparency"] = 1;
G2L["2b"]["Name"] = [[Shadow]];
G2L["2b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Brickify.Shadow.UIGradient
G2L["2c"] = Instance.new("UIGradient", G2L["2b"]);
G2L["2c"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Brickify.LocalScript
G2L["2d"] = Instance.new("LocalScript", G2L["29"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Delete Tool
G2L["2e"] = Instance.new("TextButton", G2L["12"]);
G2L["2e"]["BorderSizePixel"] = 0;
G2L["2e"]["TextSize"] = 18;
G2L["2e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2e"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["2e"]["BackgroundTransparency"] = 0.8;
G2L["2e"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["2e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2e"]["Text"] = [[Delete Tool (cant give to others)]];
G2L["2e"]["Name"] = [[Delete Tool]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Delete Tool.UICorner
G2L["2f"] = Instance.new("UICorner", G2L["2e"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Delete Tool.Shadow
G2L["30"] = Instance.new("ImageLabel", G2L["2e"]);
G2L["30"]["BorderSizePixel"] = 0;
G2L["30"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["30"]["SliceScale"] = 0.1;
G2L["30"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["30"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["30"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["30"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["30"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["30"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["30"]["BackgroundTransparency"] = 1;
G2L["30"]["Name"] = [[Shadow]];
G2L["30"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Delete Tool.Shadow.UIGradient
G2L["31"] = Instance.new("UIGradient", G2L["30"]);
G2L["31"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Delete Tool.LocalScript
G2L["32"] = Instance.new("LocalScript", G2L["2e"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Flight
G2L["33"] = Instance.new("TextButton", G2L["12"]);
G2L["33"]["BorderSizePixel"] = 0;
G2L["33"]["TextSize"] = 18;
G2L["33"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["33"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["33"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["33"]["BackgroundTransparency"] = 0.8;
G2L["33"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["33"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["33"]["Text"] = [[Flight]];
G2L["33"]["Name"] = [[Flight]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Flight.UICorner
G2L["34"] = Instance.new("UICorner", G2L["33"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Flight.Shadow
G2L["35"] = Instance.new("ImageLabel", G2L["33"]);
G2L["35"]["BorderSizePixel"] = 0;
G2L["35"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["35"]["SliceScale"] = 0.1;
G2L["35"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["35"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["35"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["35"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["35"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["35"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["35"]["BackgroundTransparency"] = 1;
G2L["35"]["Name"] = [[Shadow]];
G2L["35"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Flight.Shadow.UIGradient
G2L["36"] = Instance.new("UIGradient", G2L["35"]);
G2L["36"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Flight.LocalScript
G2L["37"] = Instance.new("LocalScript", G2L["33"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Goto
G2L["38"] = Instance.new("TextButton", G2L["12"]);
G2L["38"]["BorderSizePixel"] = 0;
G2L["38"]["TextSize"] = 18;
G2L["38"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["38"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["38"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["38"]["BackgroundTransparency"] = 0.8;
G2L["38"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["38"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["38"]["Text"] = [[Goto]];
G2L["38"]["Name"] = [[Goto]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Goto.UICorner
G2L["39"] = Instance.new("UICorner", G2L["38"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Goto.Shadow
G2L["3a"] = Instance.new("ImageLabel", G2L["38"]);
G2L["3a"]["BorderSizePixel"] = 0;
G2L["3a"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["3a"]["SliceScale"] = 0.1;
G2L["3a"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["3a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3a"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["3a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["3a"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["3a"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["3a"]["BackgroundTransparency"] = 1;
G2L["3a"]["Name"] = [[Shadow]];
G2L["3a"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Goto.Shadow.UIGradient
G2L["3b"] = Instance.new("UIGradient", G2L["3a"]);
G2L["3b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Goto.LocalScript
G2L["3c"] = Instance.new("LocalScript", G2L["38"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Kick
G2L["3d"] = Instance.new("TextButton", G2L["12"]);
G2L["3d"]["BorderSizePixel"] = 0;
G2L["3d"]["TextSize"] = 18;
G2L["3d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3d"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["3d"]["BackgroundTransparency"] = 0.8;
G2L["3d"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["3d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3d"]["Text"] = [[Kick]];
G2L["3d"]["Name"] = [[Kick]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Kick.UICorner
G2L["3e"] = Instance.new("UICorner", G2L["3d"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Kick.Shadow
G2L["3f"] = Instance.new("ImageLabel", G2L["3d"]);
G2L["3f"]["BorderSizePixel"] = 0;
G2L["3f"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["3f"]["SliceScale"] = 0.1;
G2L["3f"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["3f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3f"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["3f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["3f"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["3f"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["3f"]["BackgroundTransparency"] = 1;
G2L["3f"]["Name"] = [[Shadow]];
G2L["3f"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Kick.Shadow.UIGradient
G2L["40"] = Instance.new("UIGradient", G2L["3f"]);
G2L["40"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Kick.LocalScript
G2L["41"] = Instance.new("LocalScript", G2L["3d"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Kill
G2L["42"] = Instance.new("TextButton", G2L["12"]);
G2L["42"]["BorderSizePixel"] = 0;
G2L["42"]["TextSize"] = 18;
G2L["42"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["42"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["42"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["42"]["BackgroundTransparency"] = 0.8;
G2L["42"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["42"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["42"]["Text"] = [[Kill]];
G2L["42"]["Name"] = [[Kill]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Kill.UICorner
G2L["43"] = Instance.new("UICorner", G2L["42"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Kill.Shadow
G2L["44"] = Instance.new("ImageLabel", G2L["42"]);
G2L["44"]["BorderSizePixel"] = 0;
G2L["44"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["44"]["SliceScale"] = 0.1;
G2L["44"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["44"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["44"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["44"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["44"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["44"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["44"]["BackgroundTransparency"] = 1;
G2L["44"]["Name"] = [[Shadow]];
G2L["44"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Kill.Shadow.UIGradient
G2L["45"] = Instance.new("UIGradient", G2L["44"]);
G2L["45"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Kill.ex
G2L["46"] = Instance.new("LocalScript", G2L["42"]);
G2L["46"]["Name"] = [[ex]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Korblox
G2L["47"] = Instance.new("TextButton", G2L["12"]);
G2L["47"]["BorderSizePixel"] = 0;
G2L["47"]["TextSize"] = 18;
G2L["47"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["47"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["47"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["47"]["BackgroundTransparency"] = 0.8;
G2L["47"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["47"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["47"]["Text"] = [[Korblox]];
G2L["47"]["Name"] = [[Korblox]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Korblox.UICorner
G2L["48"] = Instance.new("UICorner", G2L["47"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Korblox.Shadow
G2L["49"] = Instance.new("ImageLabel", G2L["47"]);
G2L["49"]["BorderSizePixel"] = 0;
G2L["49"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["49"]["SliceScale"] = 0.1;
G2L["49"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["49"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["49"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["49"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["49"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["49"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["49"]["BackgroundTransparency"] = 1;
G2L["49"]["Name"] = [[Shadow]];
G2L["49"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Korblox.Shadow.UIGradient
G2L["4a"] = Instance.new("UIGradient", G2L["49"]);
G2L["4a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Korblox.LocalScript
G2L["4b"] = Instance.new("LocalScript", G2L["47"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Naked
G2L["4c"] = Instance.new("TextButton", G2L["12"]);
G2L["4c"]["BorderSizePixel"] = 0;
G2L["4c"]["TextSize"] = 18;
G2L["4c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4c"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["4c"]["BackgroundTransparency"] = 0.8;
G2L["4c"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["4c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4c"]["Text"] = [[Naked]];
G2L["4c"]["Name"] = [[Naked]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Naked.UICorner
G2L["4d"] = Instance.new("UICorner", G2L["4c"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Naked.Shadow
G2L["4e"] = Instance.new("ImageLabel", G2L["4c"]);
G2L["4e"]["BorderSizePixel"] = 0;
G2L["4e"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["4e"]["SliceScale"] = 0.1;
G2L["4e"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["4e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4e"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["4e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["4e"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["4e"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["4e"]["BackgroundTransparency"] = 1;
G2L["4e"]["Name"] = [[Shadow]];
G2L["4e"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Naked.Shadow.UIGradient
G2L["4f"] = Instance.new("UIGradient", G2L["4e"]);
G2L["4f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Naked.LocalScript
G2L["50"] = Instance.new("LocalScript", G2L["4c"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.No-limbs
G2L["51"] = Instance.new("TextButton", G2L["12"]);
G2L["51"]["BorderSizePixel"] = 0;
G2L["51"]["TextSize"] = 18;
G2L["51"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["51"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["51"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["51"]["BackgroundTransparency"] = 0.8;
G2L["51"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["51"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["51"]["Text"] = [[No-limbs]];
G2L["51"]["Name"] = [[No-limbs]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.No-limbs.UICorner
G2L["52"] = Instance.new("UICorner", G2L["51"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.No-limbs.Shadow
G2L["53"] = Instance.new("ImageLabel", G2L["51"]);
G2L["53"]["BorderSizePixel"] = 0;
G2L["53"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["53"]["SliceScale"] = 0.1;
G2L["53"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["53"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["53"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["53"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["53"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["53"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["53"]["BackgroundTransparency"] = 1;
G2L["53"]["Name"] = [[Shadow]];
G2L["53"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.No-limbs.Shadow.UIGradient
G2L["54"] = Instance.new("UIGradient", G2L["53"]);
G2L["54"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.No-limbs.LocalScript
G2L["55"] = Instance.new("LocalScript", G2L["51"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Nuke Game
G2L["56"] = Instance.new("TextButton", G2L["12"]);
G2L["56"]["BorderSizePixel"] = 0;
G2L["56"]["TextSize"] = 18;
G2L["56"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["56"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["56"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["56"]["BackgroundTransparency"] = 0.8;
G2L["56"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["56"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["56"]["Text"] = [[Nuke Game]];
G2L["56"]["Name"] = [[Nuke Game]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Nuke Game.UICorner
G2L["57"] = Instance.new("UICorner", G2L["56"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Nuke Game.Shadow
G2L["58"] = Instance.new("ImageLabel", G2L["56"]);
G2L["58"]["BorderSizePixel"] = 0;
G2L["58"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["58"]["SliceScale"] = 0.1;
G2L["58"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["58"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["58"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["58"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["58"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["58"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["58"]["BackgroundTransparency"] = 1;
G2L["58"]["Name"] = [[Shadow]];
G2L["58"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Nuke Game.Shadow.UIGradient
G2L["59"] = Instance.new("UIGradient", G2L["58"]);
G2L["59"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Nuke Game.LocalScript
G2L["5a"] = Instance.new("LocalScript", G2L["56"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Punish
G2L["5b"] = Instance.new("TextButton", G2L["12"]);
G2L["5b"]["BorderSizePixel"] = 0;
G2L["5b"]["TextSize"] = 18;
G2L["5b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5b"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["5b"]["BackgroundTransparency"] = 0.8;
G2L["5b"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["5b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5b"]["Text"] = [[Punish]];
G2L["5b"]["Name"] = [[Punish]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Punish.UICorner
G2L["5c"] = Instance.new("UICorner", G2L["5b"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Punish.Shadow
G2L["5d"] = Instance.new("ImageLabel", G2L["5b"]);
G2L["5d"]["BorderSizePixel"] = 0;
G2L["5d"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["5d"]["SliceScale"] = 0.1;
G2L["5d"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["5d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5d"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["5d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["5d"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["5d"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["5d"]["BackgroundTransparency"] = 1;
G2L["5d"]["Name"] = [[Shadow]];
G2L["5d"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Punish.Shadow.UIGradient
G2L["5e"] = Instance.new("UIGradient", G2L["5d"]);
G2L["5e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Punish.LocalScript
G2L["5f"] = Instance.new("LocalScript", G2L["5b"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Ragdoll
G2L["60"] = Instance.new("TextButton", G2L["12"]);
G2L["60"]["BorderSizePixel"] = 0;
G2L["60"]["TextSize"] = 18;
G2L["60"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["60"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["60"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["60"]["BackgroundTransparency"] = 0.8;
G2L["60"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["60"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["60"]["Text"] = [[Ragdoll]];
G2L["60"]["Name"] = [[Ragdoll]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Ragdoll.UICorner
G2L["61"] = Instance.new("UICorner", G2L["60"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Ragdoll.Shadow
G2L["62"] = Instance.new("ImageLabel", G2L["60"]);
G2L["62"]["BorderSizePixel"] = 0;
G2L["62"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["62"]["SliceScale"] = 0.1;
G2L["62"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["62"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["62"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["62"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["62"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["62"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["62"]["BackgroundTransparency"] = 1;
G2L["62"]["Name"] = [[Shadow]];
G2L["62"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Ragdoll.Shadow.UIGradient
G2L["63"] = Instance.new("UIGradient", G2L["62"]);
G2L["63"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Ragdoll.LocalScript
G2L["64"] = Instance.new("LocalScript", G2L["60"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove Tools
G2L["65"] = Instance.new("TextButton", G2L["12"]);
G2L["65"]["BorderSizePixel"] = 0;
G2L["65"]["TextSize"] = 18;
G2L["65"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["65"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["65"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["65"]["BackgroundTransparency"] = 0.8;
G2L["65"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["65"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["65"]["Text"] = [[Remove Tools]];
G2L["65"]["Name"] = [[Remove Tools]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove Tools.UICorner
G2L["66"] = Instance.new("UICorner", G2L["65"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove Tools.Shadow
G2L["67"] = Instance.new("ImageLabel", G2L["65"]);
G2L["67"]["BorderSizePixel"] = 0;
G2L["67"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["67"]["SliceScale"] = 0.1;
G2L["67"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["67"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["67"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["67"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["67"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["67"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["67"]["BackgroundTransparency"] = 1;
G2L["67"]["Name"] = [[Shadow]];
G2L["67"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove Tools.Shadow.UIGradient
G2L["68"] = Instance.new("UIGradient", G2L["67"]);
G2L["68"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove Tools.ex
G2L["69"] = Instance.new("LocalScript", G2L["65"]);
G2L["69"]["Name"] = [[ex]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.SLock
G2L["6a"] = Instance.new("TextButton", G2L["12"]);
G2L["6a"]["BorderSizePixel"] = 0;
G2L["6a"]["TextSize"] = 18;
G2L["6a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6a"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["6a"]["BackgroundTransparency"] = 0.8;
G2L["6a"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["6a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6a"]["Text"] = [[ServerLock: Off]];
G2L["6a"]["Name"] = [[SLock]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.SLock.UICorner
G2L["6b"] = Instance.new("UICorner", G2L["6a"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.SLock.Shadow
G2L["6c"] = Instance.new("ImageLabel", G2L["6a"]);
G2L["6c"]["BorderSizePixel"] = 0;
G2L["6c"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["6c"]["SliceScale"] = 0.1;
G2L["6c"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["6c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6c"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["6c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["6c"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["6c"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["6c"]["BackgroundTransparency"] = 1;
G2L["6c"]["Name"] = [[Shadow]];
G2L["6c"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.SLock.Shadow.UIGradient
G2L["6d"] = Instance.new("UIGradient", G2L["6c"]);
G2L["6d"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.SLock.LocalScript
G2L["6e"] = Instance.new("LocalScript", G2L["6a"]);



-- StarterGui.Strawberry.MainFrame.Check
G2L["6f"] = Instance.new("Frame", G2L["2"]);
G2L["6f"]["ZIndex"] = 2;
G2L["6f"]["BorderSizePixel"] = 0;
G2L["6f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["6f"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["6f"]["Position"] = UDim2.new(0.783, 10, 0.171, 0);
G2L["6f"]["Name"] = [[Check]];
G2L["6f"]["BackgroundTransparency"] = 0.5;


-- StarterGui.Strawberry.MainFrame.Check.UICorner
G2L["70"] = Instance.new("UICorner", G2L["6f"]);
G2L["70"]["CornerRadius"] = UDim.new(0, 10);


-- StarterGui.Strawberry.MainFrame.Check.RE
G2L["71"] = Instance.new("ImageButton", G2L["6f"]);
G2L["71"]["BorderSizePixel"] = 0;
G2L["71"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["71"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
G2L["71"]["ZIndex"] = 3;
G2L["71"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["71"]["Image"] = [[http://www.roblox.com/asset/?id=6353957304]];
G2L["71"]["Size"] = UDim2.new(1, -14, 1, -14);
G2L["71"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["71"]["Name"] = [[RE]];
G2L["71"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.Check.RE.Check
G2L["72"] = Instance.new("LocalScript", G2L["71"]);
G2L["72"]["Name"] = [[Check]];


-- StarterGui.Strawberry.MainFrame.Check.Shadow
G2L["73"] = Instance.new("ImageLabel", G2L["6f"]);
G2L["73"]["BorderSizePixel"] = 0;
G2L["73"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
G2L["73"]["SliceScale"] = 0.1;
G2L["73"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["73"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["73"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["73"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["73"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
G2L["73"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["73"]["BackgroundTransparency"] = 1;
G2L["73"]["Name"] = [[Shadow]];
G2L["73"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.Check.Shadow.UIGradient
G2L["74"] = Instance.new("UIGradient", G2L["73"]);
G2L["74"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.Check.UIGradient
G2L["75"] = Instance.new("UIGradient", G2L["6f"]);
G2L["75"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.Check.Anim
G2L["76"] = Instance.new("LocalScript", G2L["6f"]);
G2L["76"]["Name"] = [[Anim]];


-- StarterGui.Strawberry.MainFrame.UIDrag
G2L["77"] = Instance.new("LocalScript", G2L["2"]);
G2L["77"]["Name"] = [[UIDrag]];


-- StarterGui.Strawberry.MainFrame.Username.Anim
local function C_c()
local script = G2L["c"];
	local button = script.Parent
	
	button.MouseEnter:Connect(function()
		button:TweenSize(UDim2.new(0, 185,0, 32), "Out", "Quad", 0.1, true)
	end)
	button.MouseLeave:Connect(function()
		button:TweenSize(UDim2.new(0, 183,0, 30), "Out", "Quad", 0.1, true)
	end)
end;
task.spawn(C_c);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Waist.LocalScript
local function C_19()
local script = G2L["19"];
	local function delete(item)
		game.Players.LocalPlayer.deletebind:Fire(item)
	end
	
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
task.spawn(C_19);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Bald.LocalScript
local function C_1e()
local script = G2L["1e"];
	local function delete(item)
		game.Players.LocalPlayer.deletebind:Fire(item)
	end
	
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
task.spawn(C_1e);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Blockhead.LocalScript
local function C_23()
local script = G2L["23"];
	local function delete(item)
		game.Players.LocalPlayer.deletebind:Fire(item)
	end
	
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
task.spawn(C_23);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.BreakSpawn.LocalScript
local function C_28()
local script = G2L["28"];
	local function delete(item)
		game.Players.LocalPlayer.deletebind:Fire(item)
	end
	
	script.Parent.MouseButton1Click:Connect(function()
		for i, v in ipairs(workspace:GetDescendants()) do
			if v:IsA("SpawnLocation") then
				delete(v)
			end
		end
	end)
end;
task.spawn(C_28);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Brickify.LocalScript
local function C_2d()
local script = G2L["2d"];
	local function delete(item)
		game.Players.LocalPlayer.deletebind:Fire(item)
	end
	
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
task.spawn(C_2d);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Delete Tool.LocalScript
local function C_32()
local script = G2L["32"];
	local function delete(item)
		game.Players.LocalPlayer.deletebind:Fire(item)
	end
	
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
task.spawn(C_32);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Flight.LocalScript
local function C_37()
local script = G2L["37"];
	local function delete(item)
		game.Players.LocalPlayer.deletebind:Fire(item)
	end
	
	flying = false
	Fly = false
	
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
task.spawn(C_37);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Goto.LocalScript
local function C_3c()
local script = G2L["3c"];
	local function delete(item)
		game.Players.LocalPlayer.deletebind:Fire(item)
	end
	
	script.Parent.MouseButton1Click:Connect(function()
		local name = script.Parent.Parent.Parent.Username.Text
		local player = game.Players:FindFirstChild(name)
	
		if player then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame
		end
	end)
	
end;
task.spawn(C_3c);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Kick.LocalScript
local function C_41()
local script = G2L["41"];
	local function delete(item)
		game.Players.LocalPlayer.deletebind:Fire(item)
	end
	
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
task.spawn(C_41);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Kill.ex
local function C_46()
local script = G2L["46"];
	local function delete(item)
		game.Players.LocalPlayer.deletebind:Fire(item)
	end
	
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
task.spawn(C_46);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Korblox.LocalScript
local function C_4b()
local script = G2L["4b"];
	local function delete(item)
		game.Players.LocalPlayer.deletebind:Fire(item)
	end
	
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
task.spawn(C_4b);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Naked.LocalScript
local function C_50()
local script = G2L["50"];
	local function delete(item)
		game.Players.LocalPlayer.deletebind:Fire(item)
	end
	
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
task.spawn(C_50);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.No-limbs.LocalScript
local function C_55()
local script = G2L["55"];
	local function delete(item)
		game.Players.LocalPlayer.deletebind:Fire(item)
	end
	
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
task.spawn(C_55);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Nuke Game.LocalScript
local function C_5a()
local script = G2L["5a"];
	local function delete(item)
		game.Players.LocalPlayer.deletebind:Fire(item)
	end
	
	script.Parent.MouseButton1Click:Connect(function()
		for _, v in ipairs(workspace:GetDescendants()) do
			if v:IsA("BasePart") then
				delete(v)
			end
		end
		for _, v in pairs(game.Players:GetPlayers()) do
			if v.Character and v.Character:FindFirstChild("Head") then
				delete(v.Character.Head)
			end
		end
	end)
end;
task.spawn(C_5a);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Punish.LocalScript
local function C_5f()
local script = G2L["5f"];
	local function delete(item)
		game.Players.LocalPlayer.deletebind:Fire(item)
	end
	
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
task.spawn(C_5f);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Ragdoll.LocalScript
local function C_64()
local script = G2L["64"];
	local function delete(item)
		game.Players.LocalPlayer.deletebind:Fire(item)
	end
	
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
task.spawn(C_64);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove Tools.ex
local function C_69()
local script = G2L["69"];
	local function delete(item)
		game.Players.LocalPlayer.deletebind:Fire(item)
	end
	
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
task.spawn(C_69);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.SLock.LocalScript
local function C_6e()
local script = G2L["6e"];
	local function delete(item)
		game.Players.LocalPlayer.deletebind:Fire(item)
	end
	
	local function notif(msg,dur)
		game.StarterGui:SetCore("SendNotification",{
			Title = "Strawberry";
			Text = tostring(msg);
			Duration = dur or 3;
		});
	end;
	
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
						notif(plr.Name..", tried joining but serverlock kicked!", 3.5)
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
task.spawn(C_6e);
-- StarterGui.Strawberry.MainFrame.Check.RE.Check
local function C_72()
local script = G2L["72"];
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
task.spawn(C_72);
-- StarterGui.Strawberry.MainFrame.Check.Anim
local function C_76()
local script = G2L["76"];
	local button = script.Parent
	
	button.MouseEnter:Connect(function()
		button:TweenSize(UDim2.new(0, 32,0, 32), "Out", "Quad", 0.1, true)
	end)
	button.MouseLeave:Connect(function()
		button:TweenSize(UDim2.new(0, 30,0, 30), "Out", "Quad", 0.1, true)
	end)
end;
task.spawn(C_76);
-- StarterGui.Strawberry.MainFrame.UIDrag
local function C_77()
local script = G2L["77"];
	local UIS = game:GetService('UserInputService')
	local frame = script.Parent
	local dragToggle = nil
	local dragSpeed = 0.25
	local dragStart = nil
	local startPos = nil
	
	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end
	
	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
	
end;
task.spawn(C_77);

return G2L["1"], require;
