local Strawberry = {};

-- StarterGui.Strawberry
Strawberry["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
Strawberry["1"]["IgnoreGuiInset"] = true;
Strawberry["1"]["DisplayOrder"] = 2147483647;
Strawberry["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
Strawberry["1"]["Name"] = [[Strawberry]];
Strawberry["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
Strawberry["1"]["ResetOnSpawn"] = false;


-- StarterGui.Strawberry.MainFrame
Strawberry["2"] = Instance.new("Frame", Strawberry["1"]);
Strawberry["2"]["BorderSizePixel"] = 0;
Strawberry["2"]["BackgroundColor3"] = Color3.fromRGB(255, 52, 89);
Strawberry["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["2"]["Size"] = UDim2.new(0, 300, 0, 350);
Strawberry["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
Strawberry["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["2"]["Name"] = [[MainFrame]];
Strawberry["2"]["BackgroundTransparency"] = 0.75;


-- StarterGui.Strawberry.MainFrame.UICorner
Strawberry["3"] = Instance.new("UICorner", Strawberry["2"]);
Strawberry["3"]["CornerRadius"] = UDim.new(0, 10);


-- StarterGui.Strawberry.MainFrame.Shadow
Strawberry["4"] = Instance.new("ImageLabel", Strawberry["2"]);
Strawberry["4"]["BorderSizePixel"] = 0;
Strawberry["4"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
Strawberry["4"]["SliceScale"] = 0.095;
Strawberry["4"]["ScaleType"] = Enum.ScaleType.Slice;
Strawberry["4"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
Strawberry["4"]["ImageColor3"] = Color3.fromRGB(153, 153, 153);
Strawberry["4"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["4"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
Strawberry["4"]["Size"] = UDim2.new(1, 18, 1, 18);
Strawberry["4"]["BackgroundTransparency"] = 1;
Strawberry["4"]["Name"] = [[Shadow]];
Strawberry["4"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.Shadow.UIGradient
Strawberry["5"] = Instance.new("UIGradient", Strawberry["4"]);
Strawberry["5"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.Gloss
Strawberry["6"] = Instance.new("ImageLabel", Strawberry["2"]);
Strawberry["6"]["ZIndex"] = -2147483647;
Strawberry["6"]["BorderSizePixel"] = 0;
Strawberry["6"]["BackgroundColor3"] = Color3.fromRGB(67, 67, 67);
Strawberry["6"]["ImageTransparency"] = 0.1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
Strawberry["6"]["ImageColor3"] = Color3.fromRGB(153, 153, 153);
Strawberry["6"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["6"]["Image"] = [[rbxassetid://413422291]];
Strawberry["6"]["Size"] = UDim2.new(1, 0, 1, 0);
Strawberry["6"]["BackgroundTransparency"] = 1;
Strawberry["6"]["Name"] = [[Gloss]];
Strawberry["6"]["Position"] = UDim2.new(0.50333, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.Gloss.UICorner
Strawberry["7"] = Instance.new("UICorner", Strawberry["6"]);
Strawberry["7"]["CornerRadius"] = UDim.new(0, 10);


-- StarterGui.Strawberry.MainFrame.Gloss.UIGradient
Strawberry["8"] = Instance.new("UIGradient", Strawberry["6"]);
Strawberry["8"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.UIGradient
Strawberry["9"] = Instance.new("UIGradient", Strawberry["2"]);
Strawberry["9"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.Title
Strawberry["a"] = Instance.new("TextLabel", Strawberry["2"]);
Strawberry["a"]["TextWrapped"] = true;
Strawberry["a"]["BorderSizePixel"] = 0;
Strawberry["a"]["TextSize"] = 14;
Strawberry["a"]["TextScaled"] = true;
Strawberry["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["a"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
Strawberry["a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["a"]["BackgroundTransparency"] = 1;
Strawberry["a"]["Size"] = UDim2.new(0, 165, 0, 33);
Strawberry["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["a"]["Text"] = [[🍓Strawberry V8 (FE)]];
Strawberry["a"]["Name"] = [[Title]];
Strawberry["a"]["Position"] = UDim2.new(0.22333, 0, 0.02, 0);


-- StarterGui.Strawberry.MainFrame.Username
Strawberry["b"] = Instance.new("TextBox", Strawberry["2"]);
Strawberry["b"]["Name"] = [[Username]];
Strawberry["b"]["BorderSizePixel"] = 0;
Strawberry["b"]["TextSize"] = 18;
Strawberry["b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["b"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
Strawberry["b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["b"]["PlaceholderText"] = [[Username (all,others,me)]];
Strawberry["b"]["Size"] = UDim2.new(0, 183, 0, 30);
Strawberry["b"]["Position"] = UDim2.new(0.44667, 0, 0, 60);
Strawberry["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["b"]["Text"] = [[]];
Strawberry["b"]["BackgroundTransparency"] = 1;


-- StarterGui.Strawberry.MainFrame.Username.Anim
Strawberry["c"] = Instance.new("LocalScript", Strawberry["b"]);
Strawberry["c"]["Name"] = [[Anim]];


-- StarterGui.Strawberry.MainFrame.Username.BG
Strawberry["d"] = Instance.new("Frame", Strawberry["b"]);
Strawberry["d"]["BorderSizePixel"] = 0;
Strawberry["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["d"]["Size"] = UDim2.new(1, 0, 1, 0);
Strawberry["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["d"]["Name"] = [[BG]];
Strawberry["d"]["BackgroundTransparency"] = 0.5;


-- StarterGui.Strawberry.MainFrame.Username.BG.Shadow
Strawberry["e"] = Instance.new("ImageLabel", Strawberry["d"]);
Strawberry["e"]["BorderSizePixel"] = 0;
Strawberry["e"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
Strawberry["e"]["SliceScale"] = 0.1;
Strawberry["e"]["ScaleType"] = Enum.ScaleType.Slice;
Strawberry["e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["e"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
Strawberry["e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["e"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
Strawberry["e"]["Size"] = UDim2.new(1, 18, 1, 18);
Strawberry["e"]["BackgroundTransparency"] = 1;
Strawberry["e"]["Name"] = [[Shadow]];
Strawberry["e"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.Username.BG.Shadow.UIGradient
Strawberry["f"] = Instance.new("UIGradient", Strawberry["e"]);
Strawberry["f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.Username.BG.UICorner
Strawberry["10"] = Instance.new("UICorner", Strawberry["d"]);
Strawberry["10"]["CornerRadius"] = UDim.new(0, 10);


-- StarterGui.Strawberry.MainFrame.Username.BG.UIGradient
Strawberry["11"] = Instance.new("UIGradient", Strawberry["d"]);
Strawberry["11"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame
Strawberry["12"] = Instance.new("ScrollingFrame", Strawberry["2"]);
Strawberry["12"]["Active"] = true;
Strawberry["12"]["BorderSizePixel"] = 0;
Strawberry["12"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
Strawberry["12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["12"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["12"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
Strawberry["12"]["Size"] = UDim2.new(0, 279, 0, 254);
Strawberry["12"]["ScrollBarImageColor3"] = Color3.fromRGB(255, 65, 100);
Strawberry["12"]["Position"] = UDim2.new(0.50458, 0, 0.60286, 0);
Strawberry["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["12"]["ScrollBarThickness"] = 10;
Strawberry["12"]["BackgroundTransparency"] = 1;


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.UIGridLayout
Strawberry["13"] = Instance.new("UIGridLayout", Strawberry["12"]);
Strawberry["13"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
Strawberry["13"]["CellSize"] = UDim2.new(1, -35, 0, 40);
Strawberry["13"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
Strawberry["13"]["CellPadding"] = UDim2.new(0, 5, 0, 10);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.SubTitle
Strawberry["14"] = Instance.new("TextLabel", Strawberry["12"]);
Strawberry["14"]["TextWrapped"] = true;
Strawberry["14"]["BorderSizePixel"] = 0;
Strawberry["14"]["TextSize"] = 18;
Strawberry["14"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["14"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
Strawberry["14"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["14"]["BackgroundTransparency"] = 1;
Strawberry["14"]["RichText"] = true;
Strawberry["14"]["Size"] = UDim2.new(0, 165, 0, 17);
Strawberry["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["14"]["Text"] = [[.gg/Tp3mBAeUgY]];
Strawberry["14"]["Name"] = [[SubTitle]];
Strawberry["14"]["Position"] = UDim2.new(0.22667, 0, 0.06857, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Bald
Strawberry["15"] = Instance.new("TextButton", Strawberry["12"]);
Strawberry["15"]["BorderSizePixel"] = 0;
Strawberry["15"]["TextSize"] = 18;
Strawberry["15"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["15"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["15"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
Strawberry["15"]["BackgroundTransparency"] = 0.8;
Strawberry["15"]["Size"] = UDim2.new(0, 200, 0, 50);
Strawberry["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["15"]["Text"] = [[Bald]];
Strawberry["15"]["Name"] = [[Bald]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Bald.UICorner
Strawberry["16"] = Instance.new("UICorner", Strawberry["15"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Bald.Shadow
Strawberry["17"] = Instance.new("ImageLabel", Strawberry["15"]);
Strawberry["17"]["BorderSizePixel"] = 0;
Strawberry["17"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
Strawberry["17"]["SliceScale"] = 0.1;
Strawberry["17"]["ScaleType"] = Enum.ScaleType.Slice;
Strawberry["17"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["17"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
Strawberry["17"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["17"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
Strawberry["17"]["Size"] = UDim2.new(1, 18, 1, 18);
Strawberry["17"]["BackgroundTransparency"] = 1;
Strawberry["17"]["Name"] = [[Shadow]];
Strawberry["17"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Bald.Shadow.UIGradient
Strawberry["18"] = Instance.new("UIGradient", Strawberry["17"]);
Strawberry["18"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Bald.LocalScript
Strawberry["19"] = Instance.new("LocalScript", Strawberry["15"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Ban
Strawberry["1a"] = Instance.new("TextButton", Strawberry["12"]);
Strawberry["1a"]["BorderSizePixel"] = 0;
Strawberry["1a"]["TextSize"] = 18;
Strawberry["1a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["1a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["1a"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
Strawberry["1a"]["BackgroundTransparency"] = 0.8;
Strawberry["1a"]["Size"] = UDim2.new(0, 200, 0, 50);
Strawberry["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["1a"]["Text"] = [[Server Ban]];
Strawberry["1a"]["Name"] = [[Ban]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Ban.UICorner
Strawberry["1b"] = Instance.new("UICorner", Strawberry["1a"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Ban.Shadow
Strawberry["1c"] = Instance.new("ImageLabel", Strawberry["1a"]);
Strawberry["1c"]["BorderSizePixel"] = 0;
Strawberry["1c"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
Strawberry["1c"]["SliceScale"] = 0.1;
Strawberry["1c"]["ScaleType"] = Enum.ScaleType.Slice;
Strawberry["1c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["1c"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
Strawberry["1c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["1c"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
Strawberry["1c"]["Size"] = UDim2.new(1, 18, 1, 18);
Strawberry["1c"]["BackgroundTransparency"] = 1;
Strawberry["1c"]["Name"] = [[Shadow]];
Strawberry["1c"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Ban.Shadow.UIGradient
Strawberry["1d"] = Instance.new("UIGradient", Strawberry["1c"]);
Strawberry["1d"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Ban.LocalScript
Strawberry["1e"] = Instance.new("LocalScript", Strawberry["1a"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Blockhead
Strawberry["1f"] = Instance.new("TextButton", Strawberry["12"]);
Strawberry["1f"]["BorderSizePixel"] = 0;
Strawberry["1f"]["TextSize"] = 18;
Strawberry["1f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["1f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["1f"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
Strawberry["1f"]["BackgroundTransparency"] = 0.8;
Strawberry["1f"]["Size"] = UDim2.new(0, 200, 0, 50);
Strawberry["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["1f"]["Text"] = [[Blockhead (R6)]];
Strawberry["1f"]["Name"] = [[Blockhead]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Blockhead.UICorner
Strawberry["20"] = Instance.new("UICorner", Strawberry["1f"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Blockhead.Shadow
Strawberry["21"] = Instance.new("ImageLabel", Strawberry["1f"]);
Strawberry["21"]["BorderSizePixel"] = 0;
Strawberry["21"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
Strawberry["21"]["SliceScale"] = 0.1;
Strawberry["21"]["ScaleType"] = Enum.ScaleType.Slice;
Strawberry["21"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["21"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
Strawberry["21"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["21"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
Strawberry["21"]["Size"] = UDim2.new(1, 18, 1, 18);
Strawberry["21"]["BackgroundTransparency"] = 1;
Strawberry["21"]["Name"] = [[Shadow]];
Strawberry["21"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Blockhead.Shadow.UIGradient
Strawberry["22"] = Instance.new("UIGradient", Strawberry["21"]);
Strawberry["22"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Blockhead.LocalScript
Strawberry["23"] = Instance.new("LocalScript", Strawberry["1f"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Break Games Scripts
Strawberry["24"] = Instance.new("TextButton", Strawberry["12"]);
Strawberry["24"]["BorderSizePixel"] = 0;
Strawberry["24"]["TextSize"] = 18;
Strawberry["24"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["24"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["24"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
Strawberry["24"]["BackgroundTransparency"] = 0.8;
Strawberry["24"]["Size"] = UDim2.new(0, 200, 0, 50);
Strawberry["24"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["24"]["Text"] = [[Break Games Scripts]];
Strawberry["24"]["Name"] = [[Break Games Scripts]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Break Games Scripts.UICorner
Strawberry["25"] = Instance.new("UICorner", Strawberry["24"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Break Games Scripts.Shadow
Strawberry["26"] = Instance.new("ImageLabel", Strawberry["24"]);
Strawberry["26"]["BorderSizePixel"] = 0;
Strawberry["26"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
Strawberry["26"]["SliceScale"] = 0.1;
Strawberry["26"]["ScaleType"] = Enum.ScaleType.Slice;
Strawberry["26"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["26"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
Strawberry["26"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["26"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
Strawberry["26"]["Size"] = UDim2.new(1, 18, 1, 18);
Strawberry["26"]["BackgroundTransparency"] = 1;
Strawberry["26"]["Name"] = [[Shadow]];
Strawberry["26"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Break Games Scripts.Shadow.UIGradient
Strawberry["27"] = Instance.new("UIGradient", Strawberry["26"]);
Strawberry["27"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Break Games Scripts.LocalScript
Strawberry["28"] = Instance.new("LocalScript", Strawberry["24"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Break Terrain
Strawberry["29"] = Instance.new("TextButton", Strawberry["12"]);
Strawberry["29"]["BorderSizePixel"] = 0;
Strawberry["29"]["TextSize"] = 18;
Strawberry["29"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["29"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["29"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
Strawberry["29"]["BackgroundTransparency"] = 0.8;
Strawberry["29"]["Size"] = UDim2.new(0, 200, 0, 50);
Strawberry["29"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["29"]["Text"] = [[Break Terrain]];
Strawberry["29"]["Name"] = [[Break Terrain]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Break Terrain.UICorner
Strawberry["2a"] = Instance.new("UICorner", Strawberry["29"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Break Terrain.Shadow
Strawberry["2b"] = Instance.new("ImageLabel", Strawberry["29"]);
Strawberry["2b"]["BorderSizePixel"] = 0;
Strawberry["2b"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
Strawberry["2b"]["SliceScale"] = 0.1;
Strawberry["2b"]["ScaleType"] = Enum.ScaleType.Slice;
Strawberry["2b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["2b"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
Strawberry["2b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["2b"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
Strawberry["2b"]["Size"] = UDim2.new(1, 18, 1, 18);
Strawberry["2b"]["BackgroundTransparency"] = 1;
Strawberry["2b"]["Name"] = [[Shadow]];
Strawberry["2b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Break Terrain.Shadow.UIGradient
Strawberry["2c"] = Instance.new("UIGradient", Strawberry["2b"]);
Strawberry["2c"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Break Terrain.LocalScript
Strawberry["2d"] = Instance.new("LocalScript", Strawberry["29"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.BreakSpawn
Strawberry["2e"] = Instance.new("TextButton", Strawberry["12"]);
Strawberry["2e"]["BorderSizePixel"] = 0;
Strawberry["2e"]["TextSize"] = 18;
Strawberry["2e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["2e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["2e"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
Strawberry["2e"]["BackgroundTransparency"] = 0.8;
Strawberry["2e"]["Size"] = UDim2.new(0, 200, 0, 50);
Strawberry["2e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["2e"]["Text"] = [[Break Spawnlocations]];
Strawberry["2e"]["Name"] = [[BreakSpawn]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.BreakSpawn.UICorner
Strawberry["2f"] = Instance.new("UICorner", Strawberry["2e"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.BreakSpawn.Shadow
Strawberry["30"] = Instance.new("ImageLabel", Strawberry["2e"]);
Strawberry["30"]["BorderSizePixel"] = 0;
Strawberry["30"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
Strawberry["30"]["SliceScale"] = 0.1;
Strawberry["30"]["ScaleType"] = Enum.ScaleType.Slice;
Strawberry["30"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["30"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
Strawberry["30"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["30"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
Strawberry["30"]["Size"] = UDim2.new(1, 18, 1, 18);
Strawberry["30"]["BackgroundTransparency"] = 1;
Strawberry["30"]["Name"] = [[Shadow]];
Strawberry["30"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.BreakSpawn.Shadow.UIGradient
Strawberry["31"] = Instance.new("UIGradient", Strawberry["30"]);
Strawberry["31"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.BreakSpawn.LocalScript
Strawberry["32"] = Instance.new("LocalScript", Strawberry["2e"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Brickify
Strawberry["33"] = Instance.new("TextButton", Strawberry["12"]);
Strawberry["33"]["BorderSizePixel"] = 0;
Strawberry["33"]["TextSize"] = 18;
Strawberry["33"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["33"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["33"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
Strawberry["33"]["BackgroundTransparency"] = 0.8;
Strawberry["33"]["Size"] = UDim2.new(0, 200, 0, 50);
Strawberry["33"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["33"]["Text"] = [[Brickify]];
Strawberry["33"]["Name"] = [[Brickify]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Brickify.UICorner
Strawberry["34"] = Instance.new("UICorner", Strawberry["33"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Brickify.Shadow
Strawberry["35"] = Instance.new("ImageLabel", Strawberry["33"]);
Strawberry["35"]["BorderSizePixel"] = 0;
Strawberry["35"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
Strawberry["35"]["SliceScale"] = 0.1;
Strawberry["35"]["ScaleType"] = Enum.ScaleType.Slice;
Strawberry["35"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["35"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
Strawberry["35"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["35"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
Strawberry["35"]["Size"] = UDim2.new(1, 18, 1, 18);
Strawberry["35"]["BackgroundTransparency"] = 1;
Strawberry["35"]["Name"] = [[Shadow]];
Strawberry["35"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Brickify.Shadow.UIGradient
Strawberry["36"] = Instance.new("UIGradient", Strawberry["35"]);
Strawberry["36"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Brickify.LocalScript
Strawberry["37"] = Instance.new("LocalScript", Strawberry["33"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Cancel Animations
Strawberry["38"] = Instance.new("TextButton", Strawberry["12"]);
Strawberry["38"]["BorderSizePixel"] = 0;
Strawberry["38"]["TextSize"] = 18;
Strawberry["38"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["38"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["38"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
Strawberry["38"]["BackgroundTransparency"] = 0.8;
Strawberry["38"]["Size"] = UDim2.new(0, 200, 0, 50);
Strawberry["38"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["38"]["Text"] = [[Cancel Animations]];
Strawberry["38"]["Name"] = [[Cancel Animations]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Cancel Animations.UICorner
Strawberry["39"] = Instance.new("UICorner", Strawberry["38"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Cancel Animations.Shadow
Strawberry["3a"] = Instance.new("ImageLabel", Strawberry["38"]);
Strawberry["3a"]["BorderSizePixel"] = 0;
Strawberry["3a"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
Strawberry["3a"]["SliceScale"] = 0.1;
Strawberry["3a"]["ScaleType"] = Enum.ScaleType.Slice;
Strawberry["3a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["3a"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
Strawberry["3a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["3a"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
Strawberry["3a"]["Size"] = UDim2.new(1, 18, 1, 18);
Strawberry["3a"]["BackgroundTransparency"] = 1;
Strawberry["3a"]["Name"] = [[Shadow]];
Strawberry["3a"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Cancel Animations.Shadow.UIGradient
Strawberry["3b"] = Instance.new("UIGradient", Strawberry["3a"]);
Strawberry["3b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Cancel Animations.ex
Strawberry["3c"] = Instance.new("LocalScript", Strawberry["38"]);
Strawberry["3c"]["Name"] = [[ex]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Click on player to copy user
Strawberry["3d"] = Instance.new("TextButton", Strawberry["12"]);
Strawberry["3d"]["BorderSizePixel"] = 0;
Strawberry["3d"]["TextSize"] = 18;
Strawberry["3d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["3d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["3d"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
Strawberry["3d"]["BackgroundTransparency"] = 0.8;
Strawberry["3d"]["Size"] = UDim2.new(0, 200, 0, 50);
Strawberry["3d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["3d"]["Text"] = [[Click on player to copy user tool]];
Strawberry["3d"]["Name"] = [[Click on player to copy user]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Click on player to copy user.UICorner
Strawberry["3e"] = Instance.new("UICorner", Strawberry["3d"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Click on player to copy user.Shadow
Strawberry["3f"] = Instance.new("ImageLabel", Strawberry["3d"]);
Strawberry["3f"]["BorderSizePixel"] = 0;
Strawberry["3f"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
Strawberry["3f"]["SliceScale"] = 0.1;
Strawberry["3f"]["ScaleType"] = Enum.ScaleType.Slice;
Strawberry["3f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["3f"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
Strawberry["3f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["3f"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
Strawberry["3f"]["Size"] = UDim2.new(1, 18, 1, 18);
Strawberry["3f"]["BackgroundTransparency"] = 1;
Strawberry["3f"]["Name"] = [[Shadow]];
Strawberry["3f"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Click on player to copy user.Shadow.UIGradient
Strawberry["40"] = Instance.new("UIGradient", Strawberry["3f"]);
Strawberry["40"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Click on player to copy user.LocalScript
Strawberry["41"] = Instance.new("LocalScript", Strawberry["3d"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Copy SS
Strawberry["42"] = Instance.new("TextButton", Strawberry["12"]);
Strawberry["42"]["BorderSizePixel"] = 0;
Strawberry["42"]["TextSize"] = 18;
Strawberry["42"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["42"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["42"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
Strawberry["42"]["BackgroundTransparency"] = 0.8;
Strawberry["42"]["Size"] = UDim2.new(0, 200, 0, 50);
Strawberry["42"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["42"]["Text"] = [[Copy SS Infector]];
Strawberry["42"]["Name"] = [[Copy SS]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Copy SS.UICorner
Strawberry["43"] = Instance.new("UICorner", Strawberry["42"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Copy SS.Shadow
Strawberry["44"] = Instance.new("ImageLabel", Strawberry["42"]);
Strawberry["44"]["BorderSizePixel"] = 0;
Strawberry["44"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
Strawberry["44"]["SliceScale"] = 0.1;
Strawberry["44"]["ScaleType"] = Enum.ScaleType.Slice;
Strawberry["44"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["44"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
Strawberry["44"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["44"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
Strawberry["44"]["Size"] = UDim2.new(1, 18, 1, 18);
Strawberry["44"]["BackgroundTransparency"] = 1;
Strawberry["44"]["Name"] = [[Shadow]];
Strawberry["44"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Copy SS.Shadow.UIGradient
Strawberry["45"] = Instance.new("UIGradient", Strawberry["44"]);
Strawberry["45"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Copy SS.LocalScript
Strawberry["46"] = Instance.new("LocalScript", Strawberry["42"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Delete Tool
Strawberry["47"] = Instance.new("TextButton", Strawberry["12"]);
Strawberry["47"]["BorderSizePixel"] = 0;
Strawberry["47"]["TextSize"] = 18;
Strawberry["47"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["47"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["47"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
Strawberry["47"]["BackgroundTransparency"] = 0.8;
Strawberry["47"]["Size"] = UDim2.new(0, 200, 0, 50);
Strawberry["47"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["47"]["Text"] = [[Delete Tool (cant give to others)]];
Strawberry["47"]["Name"] = [[Delete Tool]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Delete Tool.UICorner
Strawberry["48"] = Instance.new("UICorner", Strawberry["47"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Delete Tool.Shadow
Strawberry["49"] = Instance.new("ImageLabel", Strawberry["47"]);
Strawberry["49"]["BorderSizePixel"] = 0;
Strawberry["49"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
Strawberry["49"]["SliceScale"] = 0.1;
Strawberry["49"]["ScaleType"] = Enum.ScaleType.Slice;
Strawberry["49"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["49"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
Strawberry["49"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["49"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
Strawberry["49"]["Size"] = UDim2.new(1, 18, 1, 18);
Strawberry["49"]["BackgroundTransparency"] = 1;
Strawberry["49"]["Name"] = [[Shadow]];
Strawberry["49"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Delete Tool.Shadow.UIGradient
Strawberry["4a"] = Instance.new("UIGradient", Strawberry["49"]);
Strawberry["4a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Delete Tool.LocalScript
Strawberry["4b"] = Instance.new("LocalScript", Strawberry["47"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Delete All Welds
Strawberry["4c"] = Instance.new("TextButton", Strawberry["12"]);
Strawberry["4c"]["BorderSizePixel"] = 0;
Strawberry["4c"]["TextSize"] = 18;
Strawberry["4c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["4c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["4c"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
Strawberry["4c"]["BackgroundTransparency"] = 0.8;
Strawberry["4c"]["Size"] = UDim2.new(0, 200, 0, 50);
Strawberry["4c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["4c"]["Text"] = [[Delete All Welds]];
Strawberry["4c"]["Name"] = [[Delete All Welds]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Delete All Welds.UICorner
Strawberry["4d"] = Instance.new("UICorner", Strawberry["4c"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Delete All Welds.Shadow
Strawberry["4e"] = Instance.new("ImageLabel", Strawberry["4c"]);
Strawberry["4e"]["BorderSizePixel"] = 0;
Strawberry["4e"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
Strawberry["4e"]["SliceScale"] = 0.1;
Strawberry["4e"]["ScaleType"] = Enum.ScaleType.Slice;
Strawberry["4e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["4e"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
Strawberry["4e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["4e"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
Strawberry["4e"]["Size"] = UDim2.new(1, 18, 1, 18);
Strawberry["4e"]["BackgroundTransparency"] = 1;
Strawberry["4e"]["Name"] = [[Shadow]];
Strawberry["4e"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Delete All Welds.Shadow.UIGradient
Strawberry["4f"] = Instance.new("UIGradient", Strawberry["4e"]);
Strawberry["4f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Delete All Welds.LocalScript
Strawberry["50"] = Instance.new("LocalScript", Strawberry["4c"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Flight
Strawberry["51"] = Instance.new("TextButton", Strawberry["12"]);
Strawberry["51"]["BorderSizePixel"] = 0;
Strawberry["51"]["TextSize"] = 18;
Strawberry["51"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["51"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["51"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
Strawberry["51"]["BackgroundTransparency"] = 0.8;
Strawberry["51"]["Size"] = UDim2.new(0, 200, 0, 50);
Strawberry["51"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["51"]["Text"] = [[Flight (works on you only)]];
Strawberry["51"]["Name"] = [[Flight]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Flight.UICorner
Strawberry["52"] = Instance.new("UICorner", Strawberry["51"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Flight.Shadow
Strawberry["53"] = Instance.new("ImageLabel", Strawberry["51"]);
Strawberry["53"]["BorderSizePixel"] = 0;
Strawberry["53"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
Strawberry["53"]["SliceScale"] = 0.1;
Strawberry["53"]["ScaleType"] = Enum.ScaleType.Slice;
Strawberry["53"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["53"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
Strawberry["53"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["53"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
Strawberry["53"]["Size"] = UDim2.new(1, 18, 1, 18);
Strawberry["53"]["BackgroundTransparency"] = 1;
Strawberry["53"]["Name"] = [[Shadow]];
Strawberry["53"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Flight.Shadow.UIGradient
Strawberry["54"] = Instance.new("UIGradient", Strawberry["53"]);
Strawberry["54"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Flight.LocalScript
Strawberry["55"] = Instance.new("LocalScript", Strawberry["51"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Goto
Strawberry["56"] = Instance.new("TextButton", Strawberry["12"]);
Strawberry["56"]["BorderSizePixel"] = 0;
Strawberry["56"]["TextSize"] = 18;
Strawberry["56"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["56"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["56"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
Strawberry["56"]["BackgroundTransparency"] = 0.8;
Strawberry["56"]["Size"] = UDim2.new(0, 200, 0, 50);
Strawberry["56"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["56"]["Text"] = [[Goto]];
Strawberry["56"]["Name"] = [[Goto]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Goto.UICorner
Strawberry["57"] = Instance.new("UICorner", Strawberry["56"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Goto.Shadow
Strawberry["58"] = Instance.new("ImageLabel", Strawberry["56"]);
Strawberry["58"]["BorderSizePixel"] = 0;
Strawberry["58"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
Strawberry["58"]["SliceScale"] = 0.1;
Strawberry["58"]["ScaleType"] = Enum.ScaleType.Slice;
Strawberry["58"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["58"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
Strawberry["58"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["58"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
Strawberry["58"]["Size"] = UDim2.new(1, 18, 1, 18);
Strawberry["58"]["BackgroundTransparency"] = 1;
Strawberry["58"]["Name"] = [[Shadow]];
Strawberry["58"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Goto.Shadow.UIGradient
Strawberry["59"] = Instance.new("UIGradient", Strawberry["58"]);
Strawberry["59"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Goto.LocalScript
Strawberry["5a"] = Instance.new("LocalScript", Strawberry["56"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Kick
Strawberry["5b"] = Instance.new("TextButton", Strawberry["12"]);
Strawberry["5b"]["BorderSizePixel"] = 0;
Strawberry["5b"]["TextSize"] = 18;
Strawberry["5b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["5b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["5b"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
Strawberry["5b"]["BackgroundTransparency"] = 0.8;
Strawberry["5b"]["Size"] = UDim2.new(0, 200, 0, 50);
Strawberry["5b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["5b"]["Text"] = [[Kick]];
Strawberry["5b"]["Name"] = [[Kick]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Kick.UICorner
Strawberry["5c"] = Instance.new("UICorner", Strawberry["5b"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Kick.Shadow
Strawberry["5d"] = Instance.new("ImageLabel", Strawberry["5b"]);
Strawberry["5d"]["BorderSizePixel"] = 0;
Strawberry["5d"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
Strawberry["5d"]["SliceScale"] = 0.1;
Strawberry["5d"]["ScaleType"] = Enum.ScaleType.Slice;
Strawberry["5d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["5d"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
Strawberry["5d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["5d"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
Strawberry["5d"]["Size"] = UDim2.new(1, 18, 1, 18);
Strawberry["5d"]["BackgroundTransparency"] = 1;
Strawberry["5d"]["Name"] = [[Shadow]];
Strawberry["5d"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Kick.Shadow.UIGradient
Strawberry["5e"] = Instance.new("UIGradient", Strawberry["5d"]);
Strawberry["5e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Kick.LocalScript
Strawberry["5f"] = Instance.new("LocalScript", Strawberry["5b"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Kill
Strawberry["60"] = Instance.new("TextButton", Strawberry["12"]);
Strawberry["60"]["BorderSizePixel"] = 0;
Strawberry["60"]["TextSize"] = 18;
Strawberry["60"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["60"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["60"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
Strawberry["60"]["BackgroundTransparency"] = 0.8;
Strawberry["60"]["Size"] = UDim2.new(0, 200, 0, 50);
Strawberry["60"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["60"]["Text"] = [[Kill]];
Strawberry["60"]["Name"] = [[Kill]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Kill.UICorner
Strawberry["61"] = Instance.new("UICorner", Strawberry["60"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Kill.Shadow
Strawberry["62"] = Instance.new("ImageLabel", Strawberry["60"]);
Strawberry["62"]["BorderSizePixel"] = 0;
Strawberry["62"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
Strawberry["62"]["SliceScale"] = 0.1;
Strawberry["62"]["ScaleType"] = Enum.ScaleType.Slice;
Strawberry["62"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["62"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
Strawberry["62"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["62"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
Strawberry["62"]["Size"] = UDim2.new(1, 18, 1, 18);
Strawberry["62"]["BackgroundTransparency"] = 1;
Strawberry["62"]["Name"] = [[Shadow]];
Strawberry["62"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Kill.Shadow.UIGradient
Strawberry["63"] = Instance.new("UIGradient", Strawberry["62"]);
Strawberry["63"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Kill.ex
Strawberry["64"] = Instance.new("LocalScript", Strawberry["60"]);
Strawberry["64"]["Name"] = [[ex]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Korblox
Strawberry["65"] = Instance.new("TextButton", Strawberry["12"]);
Strawberry["65"]["BorderSizePixel"] = 0;
Strawberry["65"]["TextSize"] = 18;
Strawberry["65"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["65"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["65"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
Strawberry["65"]["BackgroundTransparency"] = 0.8;
Strawberry["65"]["Size"] = UDim2.new(0, 200, 0, 50);
Strawberry["65"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["65"]["Text"] = [[Korblox]];
Strawberry["65"]["Name"] = [[Korblox]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Korblox.UICorner
Strawberry["66"] = Instance.new("UICorner", Strawberry["65"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Korblox.Shadow
Strawberry["67"] = Instance.new("ImageLabel", Strawberry["65"]);
Strawberry["67"]["BorderSizePixel"] = 0;
Strawberry["67"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
Strawberry["67"]["SliceScale"] = 0.1;
Strawberry["67"]["ScaleType"] = Enum.ScaleType.Slice;
Strawberry["67"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["67"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
Strawberry["67"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["67"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
Strawberry["67"]["Size"] = UDim2.new(1, 18, 1, 18);
Strawberry["67"]["BackgroundTransparency"] = 1;
Strawberry["67"]["Name"] = [[Shadow]];
Strawberry["67"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Korblox.Shadow.UIGradient
Strawberry["68"] = Instance.new("UIGradient", Strawberry["67"]);
Strawberry["68"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Korblox.LocalScript
Strawberry["69"] = Instance.new("LocalScript", Strawberry["65"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Naked
Strawberry["6a"] = Instance.new("TextButton", Strawberry["12"]);
Strawberry["6a"]["BorderSizePixel"] = 0;
Strawberry["6a"]["TextSize"] = 18;
Strawberry["6a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["6a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["6a"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
Strawberry["6a"]["BackgroundTransparency"] = 0.8;
Strawberry["6a"]["Size"] = UDim2.new(0, 200, 0, 50);
Strawberry["6a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["6a"]["Text"] = [[Naked]];
Strawberry["6a"]["Name"] = [[Naked]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Naked.UICorner
Strawberry["6b"] = Instance.new("UICorner", Strawberry["6a"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Naked.Shadow
Strawberry["6c"] = Instance.new("ImageLabel", Strawberry["6a"]);
Strawberry["6c"]["BorderSizePixel"] = 0;
Strawberry["6c"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
Strawberry["6c"]["SliceScale"] = 0.1;
Strawberry["6c"]["ScaleType"] = Enum.ScaleType.Slice;
Strawberry["6c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["6c"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
Strawberry["6c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["6c"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
Strawberry["6c"]["Size"] = UDim2.new(1, 18, 1, 18);
Strawberry["6c"]["BackgroundTransparency"] = 1;
Strawberry["6c"]["Name"] = [[Shadow]];
Strawberry["6c"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Naked.Shadow.UIGradient
Strawberry["6d"] = Instance.new("UIGradient", Strawberry["6c"]);
Strawberry["6d"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Naked.LocalScript
Strawberry["6e"] = Instance.new("LocalScript", Strawberry["6a"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.No-limbs
Strawberry["6f"] = Instance.new("TextButton", Strawberry["12"]);
Strawberry["6f"]["BorderSizePixel"] = 0;
Strawberry["6f"]["TextSize"] = 18;
Strawberry["6f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["6f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["6f"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
Strawberry["6f"]["BackgroundTransparency"] = 0.8;
Strawberry["6f"]["Size"] = UDim2.new(0, 200, 0, 50);
Strawberry["6f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["6f"]["Text"] = [[No-limbs]];
Strawberry["6f"]["Name"] = [[No-limbs]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.No-limbs.UICorner
Strawberry["70"] = Instance.new("UICorner", Strawberry["6f"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.No-limbs.Shadow
Strawberry["71"] = Instance.new("ImageLabel", Strawberry["6f"]);
Strawberry["71"]["BorderSizePixel"] = 0;
Strawberry["71"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
Strawberry["71"]["SliceScale"] = 0.1;
Strawberry["71"]["ScaleType"] = Enum.ScaleType.Slice;
Strawberry["71"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["71"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
Strawberry["71"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["71"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
Strawberry["71"]["Size"] = UDim2.new(1, 18, 1, 18);
Strawberry["71"]["BackgroundTransparency"] = 1;
Strawberry["71"]["Name"] = [[Shadow]];
Strawberry["71"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.No-limbs.Shadow.UIGradient
Strawberry["72"] = Instance.new("UIGradient", Strawberry["71"]);
Strawberry["72"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.No-limbs.LocalScript
Strawberry["73"] = Instance.new("LocalScript", Strawberry["6f"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Nuke Game
Strawberry["74"] = Instance.new("TextButton", Strawberry["12"]);
Strawberry["74"]["BorderSizePixel"] = 0;
Strawberry["74"]["TextSize"] = 18;
Strawberry["74"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["74"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["74"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
Strawberry["74"]["BackgroundTransparency"] = 0.8;
Strawberry["74"]["Size"] = UDim2.new(0, 200, 0, 50);
Strawberry["74"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["74"]["Text"] = [[Nuke Game]];
Strawberry["74"]["Name"] = [[Nuke Game]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Nuke Game.UICorner
Strawberry["75"] = Instance.new("UICorner", Strawberry["74"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Nuke Game.Shadow
Strawberry["76"] = Instance.new("ImageLabel", Strawberry["74"]);
Strawberry["76"]["BorderSizePixel"] = 0;
Strawberry["76"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
Strawberry["76"]["SliceScale"] = 0.1;
Strawberry["76"]["ScaleType"] = Enum.ScaleType.Slice;
Strawberry["76"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["76"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
Strawberry["76"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["76"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
Strawberry["76"]["Size"] = UDim2.new(1, 18, 1, 18);
Strawberry["76"]["BackgroundTransparency"] = 1;
Strawberry["76"]["Name"] = [[Shadow]];
Strawberry["76"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Nuke Game.Shadow.UIGradient
Strawberry["77"] = Instance.new("UIGradient", Strawberry["76"]);
Strawberry["77"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Nuke Game.LocalScript
Strawberry["78"] = Instance.new("LocalScript", Strawberry["74"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Punish
Strawberry["79"] = Instance.new("TextButton", Strawberry["12"]);
Strawberry["79"]["BorderSizePixel"] = 0;
Strawberry["79"]["TextSize"] = 18;
Strawberry["79"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["79"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["79"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
Strawberry["79"]["BackgroundTransparency"] = 0.8;
Strawberry["79"]["Size"] = UDim2.new(0, 200, 0, 50);
Strawberry["79"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["79"]["Text"] = [[Punish (delete character)]];
Strawberry["79"]["Name"] = [[Punish]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Punish.UICorner
Strawberry["7a"] = Instance.new("UICorner", Strawberry["79"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Punish.Shadow
Strawberry["7b"] = Instance.new("ImageLabel", Strawberry["79"]);
Strawberry["7b"]["BorderSizePixel"] = 0;
Strawberry["7b"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
Strawberry["7b"]["SliceScale"] = 0.1;
Strawberry["7b"]["ScaleType"] = Enum.ScaleType.Slice;
Strawberry["7b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["7b"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
Strawberry["7b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["7b"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
Strawberry["7b"]["Size"] = UDim2.new(1, 18, 1, 18);
Strawberry["7b"]["BackgroundTransparency"] = 1;
Strawberry["7b"]["Name"] = [[Shadow]];
Strawberry["7b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Punish.Shadow.UIGradient
Strawberry["7c"] = Instance.new("UIGradient", Strawberry["7b"]);
Strawberry["7c"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Punish.LocalScript
Strawberry["7d"] = Instance.new("LocalScript", Strawberry["79"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Ragdoll
Strawberry["7e"] = Instance.new("TextButton", Strawberry["12"]);
Strawberry["7e"]["BorderSizePixel"] = 0;
Strawberry["7e"]["TextSize"] = 18;
Strawberry["7e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["7e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["7e"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
Strawberry["7e"]["BackgroundTransparency"] = 0.8;
Strawberry["7e"]["Size"] = UDim2.new(0, 200, 0, 50);
Strawberry["7e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["7e"]["Text"] = [[Ragdoll]];
Strawberry["7e"]["Name"] = [[Ragdoll]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Ragdoll.UICorner
Strawberry["7f"] = Instance.new("UICorner", Strawberry["7e"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Ragdoll.Shadow
Strawberry["80"] = Instance.new("ImageLabel", Strawberry["7e"]);
Strawberry["80"]["BorderSizePixel"] = 0;
Strawberry["80"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
Strawberry["80"]["SliceScale"] = 0.1;
Strawberry["80"]["ScaleType"] = Enum.ScaleType.Slice;
Strawberry["80"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["80"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
Strawberry["80"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["80"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
Strawberry["80"]["Size"] = UDim2.new(1, 18, 1, 18);
Strawberry["80"]["BackgroundTransparency"] = 1;
Strawberry["80"]["Name"] = [[Shadow]];
Strawberry["80"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Ragdoll.Shadow.UIGradient
Strawberry["81"] = Instance.new("UIGradient", Strawberry["80"]);
Strawberry["81"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Ragdoll.LocalScript
Strawberry["82"] = Instance.new("LocalScript", Strawberry["7e"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove Faces
Strawberry["83"] = Instance.new("TextButton", Strawberry["12"]);
Strawberry["83"]["BorderSizePixel"] = 0;
Strawberry["83"]["TextSize"] = 18;
Strawberry["83"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["83"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["83"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
Strawberry["83"]["BackgroundTransparency"] = 0.8;
Strawberry["83"]["Size"] = UDim2.new(0, 200, 0, 50);
Strawberry["83"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["83"]["Text"] = [[Remove Face]];
Strawberry["83"]["Name"] = [[Remove Faces]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove Faces.UICorner
Strawberry["84"] = Instance.new("UICorner", Strawberry["83"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove Faces.Shadow
Strawberry["85"] = Instance.new("ImageLabel", Strawberry["83"]);
Strawberry["85"]["BorderSizePixel"] = 0;
Strawberry["85"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
Strawberry["85"]["SliceScale"] = 0.1;
Strawberry["85"]["ScaleType"] = Enum.ScaleType.Slice;
Strawberry["85"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["85"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
Strawberry["85"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["85"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
Strawberry["85"]["Size"] = UDim2.new(1, 18, 1, 18);
Strawberry["85"]["BackgroundTransparency"] = 1;
Strawberry["85"]["Name"] = [[Shadow]];
Strawberry["85"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove Faces.Shadow.UIGradient
Strawberry["86"] = Instance.new("UIGradient", Strawberry["85"]);
Strawberry["86"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove Faces.LocalScript
Strawberry["87"] = Instance.new("LocalScript", Strawberry["83"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove Tools
Strawberry["88"] = Instance.new("TextButton", Strawberry["12"]);
Strawberry["88"]["BorderSizePixel"] = 0;
Strawberry["88"]["TextSize"] = 18;
Strawberry["88"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["88"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["88"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
Strawberry["88"]["BackgroundTransparency"] = 0.8;
Strawberry["88"]["Size"] = UDim2.new(0, 200, 0, 50);
Strawberry["88"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["88"]["Text"] = [[Remove Tools]];
Strawberry["88"]["Name"] = [[Remove Tools]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove Tools.UICorner
Strawberry["89"] = Instance.new("UICorner", Strawberry["88"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove Tools.Shadow
Strawberry["8a"] = Instance.new("ImageLabel", Strawberry["88"]);
Strawberry["8a"]["BorderSizePixel"] = 0;
Strawberry["8a"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
Strawberry["8a"]["SliceScale"] = 0.1;
Strawberry["8a"]["ScaleType"] = Enum.ScaleType.Slice;
Strawberry["8a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["8a"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
Strawberry["8a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["8a"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
Strawberry["8a"]["Size"] = UDim2.new(1, 18, 1, 18);
Strawberry["8a"]["BackgroundTransparency"] = 1;
Strawberry["8a"]["Name"] = [[Shadow]];
Strawberry["8a"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove Tools.Shadow.UIGradient
Strawberry["8b"] = Instance.new("UIGradient", Strawberry["8a"]);
Strawberry["8b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove Tools.ex
Strawberry["8c"] = Instance.new("LocalScript", Strawberry["88"]);
Strawberry["8c"]["Name"] = [[ex]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove all sounds
Strawberry["8d"] = Instance.new("TextButton", Strawberry["12"]);
Strawberry["8d"]["BorderSizePixel"] = 0;
Strawberry["8d"]["TextSize"] = 18;
Strawberry["8d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["8d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["8d"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
Strawberry["8d"]["BackgroundTransparency"] = 0.8;
Strawberry["8d"]["Size"] = UDim2.new(0, 200, 0, 50);
Strawberry["8d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["8d"]["Text"] = [[Remove all sounds (FE)]];
Strawberry["8d"]["Name"] = [[Remove all sounds]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove all sounds.UICorner
Strawberry["8e"] = Instance.new("UICorner", Strawberry["8d"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove all sounds.Shadow
Strawberry["8f"] = Instance.new("ImageLabel", Strawberry["8d"]);
Strawberry["8f"]["BorderSizePixel"] = 0;
Strawberry["8f"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
Strawberry["8f"]["SliceScale"] = 0.1;
Strawberry["8f"]["ScaleType"] = Enum.ScaleType.Slice;
Strawberry["8f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["8f"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
Strawberry["8f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["8f"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
Strawberry["8f"]["Size"] = UDim2.new(1, 18, 1, 18);
Strawberry["8f"]["BackgroundTransparency"] = 1;
Strawberry["8f"]["Name"] = [[Shadow]];
Strawberry["8f"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove all sounds.Shadow.UIGradient
Strawberry["90"] = Instance.new("UIGradient", Strawberry["8f"]);
Strawberry["90"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove all sounds.LocalScript
Strawberry["91"] = Instance.new("LocalScript", Strawberry["8d"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove lighting
Strawberry["92"] = Instance.new("TextButton", Strawberry["12"]);
Strawberry["92"]["BorderSizePixel"] = 0;
Strawberry["92"]["TextSize"] = 18;
Strawberry["92"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["92"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["92"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
Strawberry["92"]["BackgroundTransparency"] = 0.8;
Strawberry["92"]["Size"] = UDim2.new(0, 200, 0, 50);
Strawberry["92"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["92"]["Text"] = [[Remove sky and lighting (FE)]];
Strawberry["92"]["Name"] = [[Remove lighting]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove lighting.UICorner
Strawberry["93"] = Instance.new("UICorner", Strawberry["92"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove lighting.Shadow
Strawberry["94"] = Instance.new("ImageLabel", Strawberry["92"]);
Strawberry["94"]["BorderSizePixel"] = 0;
Strawberry["94"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
Strawberry["94"]["SliceScale"] = 0.1;
Strawberry["94"]["ScaleType"] = Enum.ScaleType.Slice;
Strawberry["94"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["94"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
Strawberry["94"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["94"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
Strawberry["94"]["Size"] = UDim2.new(1, 18, 1, 18);
Strawberry["94"]["BackgroundTransparency"] = 1;
Strawberry["94"]["Name"] = [[Shadow]];
Strawberry["94"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove lighting.Shadow.UIGradient
Strawberry["95"] = Instance.new("UIGradient", Strawberry["94"]);
Strawberry["95"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove lighting.LocalScript
Strawberry["96"] = Instance.new("LocalScript", Strawberry["92"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove players gui
Strawberry["97"] = Instance.new("TextButton", Strawberry["12"]);
Strawberry["97"]["BorderSizePixel"] = 0;
Strawberry["97"]["TextSize"] = 18;
Strawberry["97"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["97"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["97"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
Strawberry["97"]["BackgroundTransparency"] = 0.8;
Strawberry["97"]["Size"] = UDim2.new(0, 200, 0, 50);
Strawberry["97"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["97"]["Text"] = [[Remove player UI]];
Strawberry["97"]["Name"] = [[Remove players gui]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove players gui.UICorner
Strawberry["98"] = Instance.new("UICorner", Strawberry["97"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove players gui.Shadow
Strawberry["99"] = Instance.new("ImageLabel", Strawberry["97"]);
Strawberry["99"]["BorderSizePixel"] = 0;
Strawberry["99"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
Strawberry["99"]["SliceScale"] = 0.1;
Strawberry["99"]["ScaleType"] = Enum.ScaleType.Slice;
Strawberry["99"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["99"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
Strawberry["99"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["99"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
Strawberry["99"]["Size"] = UDim2.new(1, 18, 1, 18);
Strawberry["99"]["BackgroundTransparency"] = 1;
Strawberry["99"]["Name"] = [[Shadow]];
Strawberry["99"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove players gui.Shadow.UIGradient
Strawberry["9a"] = Instance.new("UIGradient", Strawberry["99"]);
Strawberry["9a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove players gui.LocalScript
Strawberry["9b"] = Instance.new("LocalScript", Strawberry["97"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.SLock
Strawberry["9c"] = Instance.new("TextButton", Strawberry["12"]);
Strawberry["9c"]["BorderSizePixel"] = 0;
Strawberry["9c"]["TextSize"] = 18;
Strawberry["9c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["9c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["9c"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
Strawberry["9c"]["BackgroundTransparency"] = 0.8;
Strawberry["9c"]["Size"] = UDim2.new(0, 200, 0, 50);
Strawberry["9c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["9c"]["Text"] = [[ServerLock: Off]];
Strawberry["9c"]["Name"] = [[SLock]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.SLock.UICorner
Strawberry["9d"] = Instance.new("UICorner", Strawberry["9c"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.SLock.Shadow
Strawberry["9e"] = Instance.new("ImageLabel", Strawberry["9c"]);
Strawberry["9e"]["BorderSizePixel"] = 0;
Strawberry["9e"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
Strawberry["9e"]["SliceScale"] = 0.1;
Strawberry["9e"]["ScaleType"] = Enum.ScaleType.Slice;
Strawberry["9e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["9e"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
Strawberry["9e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["9e"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
Strawberry["9e"]["Size"] = UDim2.new(1, 18, 1, 18);
Strawberry["9e"]["BackgroundTransparency"] = 1;
Strawberry["9e"]["Name"] = [[Shadow]];
Strawberry["9e"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.SLock.Shadow.UIGradient
Strawberry["9f"] = Instance.new("UIGradient", Strawberry["9e"]);
Strawberry["9f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.SLock.LocalScript
Strawberry["a0"] = Instance.new("LocalScript", Strawberry["9c"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Waist
Strawberry["a1"] = Instance.new("TextButton", Strawberry["12"]);
Strawberry["a1"]["BorderSizePixel"] = 0;
Strawberry["a1"]["TextSize"] = 18;
Strawberry["a1"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["a1"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["a1"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
Strawberry["a1"]["BackgroundTransparency"] = 0.8;
Strawberry["a1"]["Size"] = UDim2.new(0, 200, 0, 50);
Strawberry["a1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["a1"]["Text"] = [[Delete Waist (R15)]];
Strawberry["a1"]["Name"] = [[Waist]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Waist.UICorner
Strawberry["a2"] = Instance.new("UICorner", Strawberry["a1"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Waist.Shadow
Strawberry["a3"] = Instance.new("ImageLabel", Strawberry["a1"]);
Strawberry["a3"]["BorderSizePixel"] = 0;
Strawberry["a3"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
Strawberry["a3"]["SliceScale"] = 0.1;
Strawberry["a3"]["ScaleType"] = Enum.ScaleType.Slice;
Strawberry["a3"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["a3"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
Strawberry["a3"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["a3"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
Strawberry["a3"]["Size"] = UDim2.new(1, 18, 1, 18);
Strawberry["a3"]["BackgroundTransparency"] = 1;
Strawberry["a3"]["Name"] = [[Shadow]];
Strawberry["a3"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Waist.Shadow.UIGradient
Strawberry["a4"] = Instance.new("UIGradient", Strawberry["a3"]);
Strawberry["a4"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Waist.LocalScript
Strawberry["a5"] = Instance.new("LocalScript", Strawberry["a1"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Bring
Strawberry["a6"] = Instance.new("TextButton", Strawberry["12"]);
Strawberry["a6"]["BorderSizePixel"] = 0;
Strawberry["a6"]["TextSize"] = 18;
Strawberry["a6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["a6"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["a6"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
Strawberry["a6"]["BackgroundTransparency"] = 0.8;
Strawberry["a6"]["Size"] = UDim2.new(0, 200, 0, 50);
Strawberry["a6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["a6"]["Text"] = [[Bring (1 tool for each target)]];
Strawberry["a6"]["Name"] = [[Bring]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Bring.UICorner
Strawberry["a7"] = Instance.new("UICorner", Strawberry["a6"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Bring.Shadow
Strawberry["a8"] = Instance.new("ImageLabel", Strawberry["a6"]);
Strawberry["a8"]["BorderSizePixel"] = 0;
Strawberry["a8"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
Strawberry["a8"]["SliceScale"] = 0.1;
Strawberry["a8"]["ScaleType"] = Enum.ScaleType.Slice;
Strawberry["a8"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["a8"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
Strawberry["a8"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["a8"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
Strawberry["a8"]["Size"] = UDim2.new(1, 18, 1, 18);
Strawberry["a8"]["BackgroundTransparency"] = 1;
Strawberry["a8"]["Name"] = [[Shadow]];
Strawberry["a8"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Bring.Shadow.UIGradient
Strawberry["a9"] = Instance.new("UIGradient", Strawberry["a8"]);
Strawberry["a9"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Bring.LocalScript
Strawberry["aa"] = Instance.new("LocalScript", Strawberry["a6"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Delete Welds Tool
Strawberry["ab"] = Instance.new("TextButton", Strawberry["12"]);
Strawberry["ab"]["BorderSizePixel"] = 0;
Strawberry["ab"]["TextSize"] = 18;
Strawberry["ab"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["ab"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["ab"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
Strawberry["ab"]["BackgroundTransparency"] = 0.8;
Strawberry["ab"]["Size"] = UDim2.new(0, 200, 0, 50);
Strawberry["ab"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["ab"]["Text"] = [[Delete Welds Tool]];
Strawberry["ab"]["Name"] = [[Delete Welds Tool]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Delete Welds Tool.UICorner
Strawberry["ac"] = Instance.new("UICorner", Strawberry["ab"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Delete Welds Tool.Shadow
Strawberry["ad"] = Instance.new("ImageLabel", Strawberry["ab"]);
Strawberry["ad"]["BorderSizePixel"] = 0;
Strawberry["ad"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
Strawberry["ad"]["SliceScale"] = 0.1;
Strawberry["ad"]["ScaleType"] = Enum.ScaleType.Slice;
Strawberry["ad"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["ad"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
Strawberry["ad"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["ad"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
Strawberry["ad"]["Size"] = UDim2.new(1, 18, 1, 18);
Strawberry["ad"]["BackgroundTransparency"] = 1;
Strawberry["ad"]["Name"] = [[Shadow]];
Strawberry["ad"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Delete Welds Tool.Shadow.UIGradient
Strawberry["ae"] = Instance.new("UIGradient", Strawberry["ad"]);
Strawberry["ae"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Delete Welds Tool.LocalScript
Strawberry["af"] = Instance.new("LocalScript", Strawberry["ab"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Fling
Strawberry["b0"] = Instance.new("TextButton", Strawberry["12"]);
Strawberry["b0"]["BorderSizePixel"] = 0;
Strawberry["b0"]["TextSize"] = 18;
Strawberry["b0"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["b0"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["b0"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
Strawberry["b0"]["BackgroundTransparency"] = 0.8;
Strawberry["b0"]["Size"] = UDim2.new(0, 200, 0, 50);
Strawberry["b0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["b0"]["Text"] = [[Fling]];
Strawberry["b0"]["Name"] = [[Fling]];


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Fling.UICorner
Strawberry["b1"] = Instance.new("UICorner", Strawberry["b0"]);



-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Fling.Shadow
Strawberry["b2"] = Instance.new("ImageLabel", Strawberry["b0"]);
Strawberry["b2"]["BorderSizePixel"] = 0;
Strawberry["b2"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
Strawberry["b2"]["SliceScale"] = 0.1;
Strawberry["b2"]["ScaleType"] = Enum.ScaleType.Slice;
Strawberry["b2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["b2"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
Strawberry["b2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["b2"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
Strawberry["b2"]["Size"] = UDim2.new(1, 18, 1, 18);
Strawberry["b2"]["BackgroundTransparency"] = 1;
Strawberry["b2"]["Name"] = [[Shadow]];
Strawberry["b2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Fling.Shadow.UIGradient
Strawberry["b3"] = Instance.new("UIGradient", Strawberry["b2"]);
Strawberry["b3"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Fling.LocalScript
Strawberry["b4"] = Instance.new("LocalScript", Strawberry["b0"]);



-- StarterGui.Strawberry.MainFrame.Check
Strawberry["b5"] = Instance.new("Frame", Strawberry["2"]);
Strawberry["b5"]["ZIndex"] = 2;
Strawberry["b5"]["BorderSizePixel"] = 0;
Strawberry["b5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
Strawberry["b5"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["b5"]["Size"] = UDim2.new(0, 30, 0, 30);
Strawberry["b5"]["Position"] = UDim2.new(0.783, 10, 0.171, 0);
Strawberry["b5"]["Name"] = [[Check]];
Strawberry["b5"]["BackgroundTransparency"] = 0.5;


-- StarterGui.Strawberry.MainFrame.Check.UICorner
Strawberry["b6"] = Instance.new("UICorner", Strawberry["b5"]);
Strawberry["b6"]["CornerRadius"] = UDim.new(0, 10);


-- StarterGui.Strawberry.MainFrame.Check.RE
Strawberry["b7"] = Instance.new("ImageButton", Strawberry["b5"]);
Strawberry["b7"]["BorderSizePixel"] = 0;
Strawberry["b7"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
Strawberry["b7"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
Strawberry["b7"]["ZIndex"] = 3;
Strawberry["b7"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["b7"]["Image"] = [[http://www.roblox.com/asset/?id=6353957304]];
Strawberry["b7"]["Size"] = UDim2.new(1, -14, 1, -14);
Strawberry["b7"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
Strawberry["b7"]["Name"] = [[RE]];
Strawberry["b7"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.Check.RE.Check
Strawberry["b8"] = Instance.new("LocalScript", Strawberry["b7"]);
Strawberry["b8"]["Name"] = [[Check]];


-- StarterGui.Strawberry.MainFrame.Check.Shadow
Strawberry["b9"] = Instance.new("ImageLabel", Strawberry["b5"]);
Strawberry["b9"]["BorderSizePixel"] = 0;
Strawberry["b9"]["SliceCenter"] = Rect.new(200, 200, 500, 500);
Strawberry["b9"]["SliceScale"] = 0.1;
Strawberry["b9"]["ScaleType"] = Enum.ScaleType.Slice;
Strawberry["b9"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Strawberry["b9"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
Strawberry["b9"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Strawberry["b9"]["Image"] = [[http://www.roblox.com/asset/?id=13960012399]];
Strawberry["b9"]["Size"] = UDim2.new(1, 18, 1, 18);
Strawberry["b9"]["BackgroundTransparency"] = 1;
Strawberry["b9"]["Name"] = [[Shadow]];
Strawberry["b9"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Strawberry.MainFrame.Check.Shadow.UIGradient
Strawberry["ba"] = Instance.new("UIGradient", Strawberry["b9"]);
Strawberry["ba"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.Check.UIGradient
Strawberry["bb"] = Instance.new("UIGradient", Strawberry["b5"]);
Strawberry["bb"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 52, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 52, 89))};


-- StarterGui.Strawberry.MainFrame.Check.Anim
Strawberry["bc"] = Instance.new("LocalScript", Strawberry["b5"]);
Strawberry["bc"]["Name"] = [[Anim]];


-- StarterGui.Strawberry.MainFrame.UIDrag
Strawberry["bd"] = Instance.new("LocalScript", Strawberry["2"]);
Strawberry["bd"]["Name"] = [[UIDrag]];


-- StarterGui.Strawberry.MainFrame.MainHandler
Strawberry["be"] = Instance.new("LocalScript", Strawberry["2"]);
Strawberry["be"]["Name"] = [[MainHandler]];


-- StarterGui.Strawberry.MainFrame.Username.Anim
local function C_c()
local script = Strawberry["c"];
	local button = script.Parent
	
	button.MouseEnter:Connect(function()
		button:TweenSize(UDim2.new(0, 185,0, 32), "Out", "Quad", 0.1, true)
	end)
	button.MouseLeave:Connect(function()
		button:TweenSize(UDim2.new(0, 183,0, 30), "Out", "Quad", 0.1, true)
	end)
end;
task.spawn(C_c);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Bald.LocalScript
local function C_19()
local script = Strawberry["19"];
	local function delete(item)
		shared.strawberryhook(item)
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
task.spawn(C_19);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Ban.LocalScript
local function C_1e()
local script = Strawberry["1e"];
	local function delete(item)
		shared.strawberryhook(item)
	end
	
	local bannedplayers = {}
	
	game.Players.PlayerAdded:Connect(function(plr)
		if table.find(bannedplayers, plr.UserId) then
			local msg = Instance.new("Hint", workspace)
			msg.Text = plr.Name.." tried to join but is server banned! (STRAWBERRY)"
			delete(plr)
			task.wait(3)
			msg:Destroy()
		end
	end)
	
	script.Parent.MouseButton1Click:Connect(function()
		local name = script.Parent.Parent.Parent.Username.Text
		local player = game.Players:FindFirstChild(name)
		
		if name ~= "all" and name ~= "others" then
			if player then
				table.insert(bannedplayers,player.UserId)
				task.wait()
				delete(player)
			end
		elseif name == "all" then
			for _, v in pairs(game.Players:GetPlayers()) do
				if v then
					table.insert(bannedplayers,v.UserId)
					task.wait()
					delete(v)
				end
			end
		elseif name == "others" then
			local localPlayer = game.Players.LocalPlayer
			for _, v in pairs(game.Players:GetPlayers()) do
				if v ~= localPlayer then
					table.insert(bannedplayers,v.UserId)
					task.wait()
					delete(v)
				end
			end
		end
	end)
	
end;
task.spawn(C_1e);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Blockhead.LocalScript
local function C_23()
local script = Strawberry["23"];
	local function delete(item)
		shared.strawberryhook(item)
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
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Break Games Scripts.LocalScript
local function C_28()
local script = Strawberry["28"];
	local function delete(item)
		shared.strawberryhook(item)
	end
	
	script.Parent.MouseButton1Click:Connect(function()
		for i, v in pairs(game:GetDescendants()) do
			if v:IsA("Script") then
				delete(v)
			end
			if v:IsA("ModuleScript") then
				delete(v)
			end
		end
		
		for i, v in pairs(game.Players:GetDescendants()) do
			if v:IsA("LocalScript") then
				delete(v)
			end
		end
	end)
	
end;
task.spawn(C_28);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Break Terrain.LocalScript
local function C_2d()
local script = Strawberry["2d"];
	local function delete(item)
		shared.strawberryhook(item)
	end
	
	script.Parent.MouseButton1Click:Connect(function()
		delete(workspace.Terrain)
	end)
	
end;
task.spawn(C_2d);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.BreakSpawn.LocalScript
local function C_32()
local script = Strawberry["32"];
	local function delete(item)
		shared.strawberryhook(item)
	end
	
	script.Parent.MouseButton1Click:Connect(function()
		for i, v in ipairs(workspace:GetDescendants()) do
			if v:IsA("SpawnLocation") then
				delete(v)
			end
		end
	end)
	
end;
task.spawn(C_32);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Brickify.LocalScript
local function C_37()
local script = Strawberry["37"];
	local function delete(item)
		shared.strawberryhook(item)
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
task.spawn(C_37);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Cancel Animations.ex
local function C_3c()
local script = Strawberry["3c"];
	local function delete(item)
		shared.strawberryhook(item)
	end
	
	script.Parent.MouseButton1Click:Connect(function()
		local name = script.Parent.Parent.Parent.Username.Text
		local player = game.Players:FindFirstChild(name)
	
		if name ~= "all" and name ~= "others" and name ~= "me" then
			if player then
				delete(player.Character:FindFirstChild("Animate"))
			end
		elseif name == "all" then
			for _, v in pairs(game.Players:GetPlayers()) do
				if v then
					delete(v.Character:FindFirstChild("Animate"))
				end
			end
		elseif name == "others" then
			local localPlayer = game.Players.LocalPlayer
			for _, v in pairs(game.Players:GetPlayers()) do
				if v ~= localPlayer then
					delete(v.Character:FindFirstChild("Animate"))
				end
			end
		elseif name == "me" then
			local localPlayer = game.Players.LocalPlayer
			if localPlayer then
				delete(localPlayer.Character:FindFirstChild("Animate"))
			end
		end
	end)
	
end;
task.spawn(C_3c);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Click on player to copy user.LocalScript
local function C_41()
local script = Strawberry["41"];
	local function delete(item)
		shared.strawberryhook(item)
	end
	
	script.Parent.MouseButton1Click:Connect(function()
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
	
end;
task.spawn(C_41);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Copy SS.LocalScript
local function C_46()
local script = Strawberry["46"];
	local function delete(item)
		shared.strawberryhook(item)
	end
	
	script.Parent.MouseButton1Click:Connect(function()
		local SSPayload = [[
		local r = Instance.new("RemoteEvent",game.ReplicatedStorage)
		r.Name = "DestroyCar"
		r.OnServerEvent:Connect(function(p, i)
		    i:Destroy()
		end)
		]]
		
		setclipboard(SSPayload)
		toclipboard(SSPayload)
	end)
	
end;
task.spawn(C_46);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Delete Tool.LocalScript
local function C_4b()
local script = Strawberry["4b"];
	local function delete(item)
		shared.strawberryhook(item)
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
task.spawn(C_4b);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Delete All Welds.LocalScript
local function C_50()
local script = Strawberry["50"];
	local function delete(item)
		shared.strawberryhook(item)
	end
	
	script.Parent.MouseButton1Click:Connect(function()
		for _, v in ipairs(workspace:GetDescendants()) do
			if v:IsA("Weld") then
				delete(v)
			end
		end
	end)
	
end;
task.spawn(C_50);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Flight.LocalScript
local function C_55()
local script = Strawberry["55"];
	local function delete(item)
		shared.strawberryhook(item)
	end
	
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
task.spawn(C_55);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Goto.LocalScript
local function C_5a()
local script = Strawberry["5a"];
	local function delete(item)
		shared.strawberryhook(item)
	end
	
	script.Parent.MouseButton1Click:Connect(function()
		local name = script.Parent.Parent.Parent.Username.Text
		local player = game.Players:FindFirstChild(name)
	
		if player then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame
		end
	end)
	
end;
task.spawn(C_5a);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Kick.LocalScript
local function C_5f()
local script = Strawberry["5f"];
	local function delete(item)
		shared.strawberryhook(item)
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
task.spawn(C_5f);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Kill.ex
local function C_64()
local script = Strawberry["64"];
	local function delete(item)
		shared.strawberryhook(item)
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
task.spawn(C_64);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Korblox.LocalScript
local function C_69()
local script = Strawberry["69"];
	local function delete(item)
		shared.strawberryhook(item)
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
task.spawn(C_69);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Naked.LocalScript
local function C_6e()
local script = Strawberry["6e"];
	local function delete(item)
		shared.strawberryhook(item)
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
task.spawn(C_6e);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.No-limbs.LocalScript
local function C_73()
local script = Strawberry["73"];
	local function delete(item)
		shared.strawberryhook(item)
	end
	
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
task.spawn(C_73);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Nuke Game.LocalScript
local function C_78()
	local script = Strawberry["78"];
	local function delete(item)
		shared.strawberryhook(item)
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
task.spawn(C_78);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Punish.LocalScript
local function C_7d()
	local script = Strawberry["7d"];
	local function delete(item)
		shared.strawberryhook(item)
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
task.spawn(C_7d);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Ragdoll.LocalScript
local function C_82()
	local script = Strawberry["82"];
	local function delete(item)
		shared.strawberryhook(item)
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
task.spawn(C_82);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove Faces.LocalScript
local function C_87()
	local script = Strawberry["87"];
	local function delete(item)
		shared.strawberryhook(item)
	end

	local Players = game:GetService("Players")
	local localPlayer = Players.LocalPlayer

	script.Parent.MouseButton1Click:Connect(function()
		local name = script.Parent.Parent.Parent.Username.Text
		local player = Players:FindFirstChild(name)

		if name ~= "all" and name ~= "others" and name ~= "me" then
			if player and player.Character and player.Character:FindFirstChild("Head") then
				for _, v in pairs(player.Character.Head:GetChildren()) do
					if v:IsA("Decal") then
						delete(v)
					end
				end
			end
		elseif name == "all" then
			for _, v in pairs(Players:GetPlayers()) do
				if v.Character and v.Character:FindFirstChild("Head") then
					for _, x in pairs(v.Character.Head:GetChildren()) do
						if x:IsA("Decal") then
							delete(x)
						end
					end
				end
			end
		elseif name == "others" then
			for _, v in pairs(Players:GetPlayers()) do
				if v ~= localPlayer and v.Character and v.Character:FindFirstChild("Head") then
					for _, x in pairs(v.Character.Head:GetChildren()) do
						if x:IsA("Decal") then
							delete(x)
						end
					end
				end
			end
		elseif name == "me" then
			if localPlayer.Character and localPlayer.Character:FindFirstChild("Head") then
				for _, v in pairs(localPlayer.Character.Head:GetChildren()) do
					if v:IsA("Decal") then
						delete(v)
					end
				end
			end
		end
	end)

end;
task.spawn(C_87);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove Tools.ex
local function C_8c()
	local script = Strawberry["8c"];
	local function delete(item)
		shared.strawberryhook(item)
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
task.spawn(C_8c);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove all sounds.LocalScript
local function C_91()
	local script = Strawberry["91"];
	local function delete(item)
		shared.strawberryhook(item)
	end

	script.Parent.MouseButton1Click:Connect(function()
		for _, v in ipairs(workspace:GetDescendants()) do
			if v:IsA("Sound") then
				delete(v)
			end
		end
	end)

end;
task.spawn(C_91);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove lighting.LocalScript
local function C_96()
	local script = Strawberry["96"];
	local function delete(item)
		shared.strawberryhook(item)
	end

	script.Parent.MouseButton1Click:Connect(function()
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

end;
task.spawn(C_96);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Remove players gui.LocalScript
local function C_9b()
	local script = Strawberry["9b"];
	local function delete(item)
		shared.strawberryhook(item)
	end

	local Players = game:GetService("Players")
	local localPlayer = Players.LocalPlayer

	script.Parent.MouseButton1Click:Connect(function()
		local name = script.Parent.Parent.Parent.Username.Text
		local player = Players:FindFirstChild(name)

		if name ~= "all" and name ~= "others" and name ~= "me" then
			if player and player.Character and player.Character:FindFirstChild("Head") then
				for _, v in pairs(player.PlayerGui:GetChildren()) do
					delete(v)
				end
			end
		elseif name == "all" then
			for _, v in pairs(Players:GetPlayers()) do
				for _, x in pairs(v.PlayerGui:GetChildren()) do
					delete(x)
				end
			end
		elseif name == "others" then
			for _, v in pairs(Players:GetPlayers()) do
				for _, x in pairs(v.PlayerGui:GetChildren()) do
					delete(x)
				end
			end
		elseif name == "me" then
			for _, v in pairs(localPlayer.PlayerGui:GetChildren()) do
				delete(v)
			end
		end
	end)

end;
task.spawn(C_9b);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.SLock.LocalScript
local function C_a0()
	local script = Strawberry["a0"];
	local function delete(item)
		shared.strawberryhook(item)
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
task.spawn(C_a0);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Waist.LocalScript
local function C_a5()
	local script = Strawberry["a5"];
	local function delete(item)
		shared.strawberryhook(item)
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
task.spawn(C_a5);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Bring.LocalScript
local function C_aa()
	local script = Strawberry["aa"];
	local Players = game:GetService("Players")
	local localPlayer = Players.LocalPlayer
	local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()

	local function notify(msg,dur)
		game.StarterGui:SetCore("SendNotification",{
			Title = "Strawberry";
			Text = tostring(msg);
			Duration = dur or 3;
		});
	end;

	local function runCommand(name)
		if name == "unfly" then
			local humanoid = character:FindFirstChildOfClass("Humanoid")
			if humanoid then humanoid.PlatformStand = false end
		elseif name == "re" then
			character:BreakJoints()
		end
	end

	local function delete(item)
		shared.strawberryhook(item)
	end

	local function bringPlayers(plrs)
		local hum = character:FindFirstChildOfClass("Humanoid")
		if not hum then return end
		local hrp = character:FindFirstChild("HumanoidRootPart") or (hum and hum.RootPart)
		if not hrp then return end

		local oldPos = hrp.CFrame
		local cloneHum = hum:Clone()
		local tools = {}

		for _, v in pairs(character:GetChildren()) do
			if v:IsA("Tool") and v:FindFirstChild("Handle") then
				table.insert(tools, v)
			end
		end

		for _, v in pairs(localPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") and v:FindFirstChild("Handle") then
				table.insert(tools, v)
			end
		end

		if #tools == 0 then return notify("Tools are required", 5) end

		runCommand("unfly")

		task.wait()

		delete(hum)
		repeat task.wait() until not character:FindFirstChildOfClass("Humanoid")
		cloneHum.Parent = character

		task.wait(0.1)

		local targetCount = 1
		for _, v in pairs(plrs) do
			if v == localPlayer then continue end
			local tchar = v.Character
			if not tchar then continue end
			local thrp = tchar:FindFirstChild("HumanoidRootPart")
			if not thrp then continue end

			local tool = tools[targetCount]
			if not tool then return notify("Not enough tools", 5) end

			cloneHum:EquipTool(tool)
			repeat task.wait() until tool.Parent == character
			task.wait()

			local attempts = 0
			repeat
				thrp.CFrame = tool.Handle.CFrame
				hrp.CFrame = oldPos
				attempts += 1
				task.wait()
			until tool.Parent ~= character or attempts > 100

			hrp.CFrame = oldPos
			task.wait(0.25)
			delete(tool)
			targetCount += 1
			task.wait()
		end

		task.wait(0.05)
		runCommand("re")
	end

	script.Parent.MouseButton1Click:Connect(function()
		local name = script.Parent.Parent.Parent.Username.Text
		local targets = {}

		if name == "all" then
			for _, p in ipairs(Players:GetPlayers()) do
				if p ~= localPlayer then
					table.insert(targets, p)
				end
			end
		elseif name == "others" then
			for _, p in ipairs(Players:GetPlayers()) do
				if p ~= localPlayer then
					table.insert(targets, p)
				end
			end
		elseif name == "me" then
			table.insert(targets, localPlayer)
		else
			local found = Players:FindFirstChild(name)
			if found then table.insert(targets, found) end
		end

		if #targets > 0 then
			bringPlayers(targets)
		else
			notify("No valid targets", 5)
		end
	end)

end;
task.spawn(C_aa);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Delete Welds Tool.LocalScript
local function C_af()
	local script = Strawberry["af"];
	local function delete(item)
		shared.strawberryhook(item)
	end

	script.Parent.MouseButton1Click:Connect(function()
		local Players = game:GetService("Players")
		local player = Players.LocalPlayer
		local mouse = player:GetMouse()
		local tool = Instance.new("Tool")
		tool.Name = "Delete Welds Tool"
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
				for _, w in ipairs(target:GetDescendants()) do
					if w:IsA("Weld") then
						delete(w)
					end
				end
			end
		end)
	end)

end;
task.spawn(C_af);
-- StarterGui.Strawberry.MainFrame.ScrollingFrame.Fling.LocalScript
local function C_b4()
	local script = Strawberry["b4"];
	local players = game:GetService("Players")
	local lp = players.LocalPlayer
	local hrp = lp.Character:WaitForChild("HumanoidRootPart")

	script.Parent.MouseButton1Click:Connect(function()
		local name = script.Parent.Parent.Parent.Username.Text
		local target = players:FindFirstChild(name)
		local targetchar = target.Character

		for i = 1, 20 do
			hrp.CFrame = targetchar.HumanoidRootPart.CFrame * Vector3.new(0,0,5)
			hrp.Rotation = Vector3.new(math.random(-360,360),math.random(-360,360),math.random(-360,360))
			wait()
			hrp.CFrame = targetchar.HumanoidRootPart.CFrame * Vector3.new(0,0,0)
			hrp.Rotation = Vector3.new(math.random(-360,360),math.random(-360,360),math.random(-360,360))
			wait()
			hrp.CFrame = targetchar.HumanoidRootPart.CFrame * Vector3.new(0,0,-5)
			hrp.Rotation = Vector3.new(math.random(-360,360),math.random(-360,360),math.random(-360,360))
			wait()
		end
	end)

end;
task.spawn(C_b4);
-- StarterGui.Strawberry.MainFrame.Check.RE.Check
local function C_b8()
	local script = Strawberry["b8"];
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
task.spawn(C_b8);
-- StarterGui.Strawberry.MainFrame.Check.Anim
local function C_bc()
	local script = Strawberry["bc"];
	local button = script.Parent

	button.MouseEnter:Connect(function()
		button:TweenSize(UDim2.new(0, 32,0, 32), "Out", "Quad", 0.1, true)
	end)
	button.MouseLeave:Connect(function()
		button:TweenSize(UDim2.new(0, 30,0, 30), "Out", "Quad", 0.1, true)
	end)
end;
task.spawn(C_bc);
-- StarterGui.Strawberry.MainFrame.UIDrag
local function C_bd()
	local script = Strawberry["bd"];
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
task.spawn(C_bd);
-- StarterGui.Strawberry.MainFrame.MainHandler
local function C_be()
	local script = Strawberry["be"];
	local commandcount = 0
	for i, v in pairs(script.Parent.ScrollingFrame:GetChildren()) do
		if v:IsA("TextButton") then
			commandcount += 1
		end
	end
	task.wait()
	script.Parent.ScrollingFrame.SubTitle.Text = script.Parent.ScrollingFrame.SubTitle.Text.."\n("..tostring(commandcount).." commands loaded!)"

end;
task.spawn(C_be);

return Strawberry["1"], require;
