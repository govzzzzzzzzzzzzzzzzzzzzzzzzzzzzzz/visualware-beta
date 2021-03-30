-- #Library
local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/fluxlib.txt")()
local win = Flux:Window("Visualware", "gov is cool", Color3.fromRGB(0, 94, 255), Enum.KeyCode.RightControl)
local jobHandler = win:Tab("Main Features", "https://www.roblox.com/asset/?id=6023426915")
local teleportHandler = win:Tab("Teleports", "https://www.roblox.com/asset/?id=6023426915")
local settingsHandler = win:Tab("Settings", "https://www.roblox.com/asset/?id=6023426915")

-- #Variables
local teleportplrHandler = nil
local playerlist = {}

-- #ListHandler
for i, v in pairs(game.Players:GetChildren()) do
    table.insert(playerlist, v.Name)
end

-- #Settings
settingsHandler:Label("Developer - gov#0001")
settingsHandler:Button("Close Visualware Beta", "Pressing this closes Visualware Beta", function()
   local CoreGui = game:GetService("CoreGui").FluxLib:Destroy()
end)

print('Visualware Beta Loaded')

-- //JOBS//
-- trashHandler
jobHandler:Button("Trash Job", "Press this multiple times, or use a autoclicker", function()
   local players = game:GetService("Players")
   local plr = players.LocalPlayer
   local char = players.LocalPlayer.Character
   local a = game:GetService("Workspace")["Job box"].BOX1:FindFirstChild("ClickDetector")
   local b = Vector3.new(-44.4599953, 14.0699978, 102.940071, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   
   workspace['Trash Dumpster 01a']:GetChildren().CanCollide = false
   fireclickdetector(a)
   plr:FindFirstChildOfClass('Backpack')['TRASH'].Parent = char
   char:MoveTo(b)
   end)


-- packagetruckHandler
jobHandler:Button("Package Delivery", "Press this multiple times, or use a autoclicker", function()
   local players = game:GetService("Players")
   local plr = players.LocalPlayer
   local char = players.LocalPlayer.Character
   local a = game:GetService("Workspace")["BOX1"]:FindFirstChild("ClickDetector")
   local b = Vector3.new(7.85558844, 17.5666752, -230.589462)
   

   fireclickdetector(a)
   plr:FindFirstChildOfClass('Backpack')['BOX'].Parent = char
   char:MoveTo(b)
   end)


-- //TELEPORT LOCATIONS//
-- Teleport Locations
teleportHandler:Dropdown("Game Locations", {"Pharmacy", "Metropolitan Service Station", "Burgers", "Melee Seller", "Mask Seller"}, function(teleporthandler)
    local players = game:GetService("Players")
    local char = players.LocalPlayer.Character
 
    if teleporthandler == "Pharmacy" then char:MoveTo(Vector3.new(47.7000008, 14.6626701, -59, 1, 0, 0, 0, 1, 0, 0, 0, 1)) end
    if teleporthandler == "Metropolitan Service Station" then char:MoveTo(Vector3.new(-27.9898758, 15.3750029, 502.350372, 0, 0, -1, 0, 1, 0, 1, 0, 0)) end
    if teleporthandler == "Burgers" then char:MoveTo(Vector3.new(-37.0442543, 14.1827869, 15.6068554, 0, 1, 0, 0, 0, 1, 1, 0, 0)) end
    if teleporthandler == "Melee Seller" then char:MoveTo(Vector3.new(93.5349655, 13.9149761, 95.3899918, -1, 0, 0, 0, 1, 0, 0, 0, -1)) end
    if teleporthandler == "Mask Seller" then char:MoveTo(Vector3.new(-95.1400299, 13.7300043, 22.220005, 1, 0, 0, 0, 1, 0, 0, 0, 1)) end
 end)

 teleportHandler:Line()

 -- //FEATURES//-

 -- [KILL ALL]---
-----