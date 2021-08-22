local Players = game:GetService("Players")

Players.PlayerAdded:Connect(function(player)    
    local CashIntValue = Instance.new("IntValue")
		CashIntValue.Name = "CashIntValue"
		CashIntValue.Value = 0
		CashIntValue.Parent = player -- Creating the Cash value for the player using IntValue
end)
