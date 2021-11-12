local Players = game:GetService("Players")

local PlayerData = {}

Players.PlayerAdded:Connect(function(player)    
    local PlayerJoinedTable = PlayerData[player.Name] or {}
    PlayerData[player.Name] = PlayerJoinedData --Creates a new table (for the player's data) within the PlayerData table
    
    PlayerJoinedTable["Cash"] = 0
end
