local ReplicatedStorage = game:GetService("ReplicatedStorage")

ReplicatedStorage.BuyItem.OnServerInvoke = function(player, ItemName)
	local ItemData = ReplicatedStorage:FindFirstChild(ItemName)
	local PlayerCash = player.CashIntValue
	
	if PlayerCash.Value >= ItemData.Value then
		PlayerCash.Value -= ItemData.Value -- Player will have 5 dollars left
	end
end)
