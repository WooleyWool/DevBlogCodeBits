local ReplicatedStorage = game:GetService("ReplicatedStorage")

local ShopOptions = {
	Apples = 10
}

ReplicatedStorage.BuyItem.OnServerInvoke = function(player, ItemName)
	local CustomerData = PlayerData[player.Name]
	
	if CustomerData["Cash"] >= ShopOptions[ItemName] then
		CustomerData["Cash"] -= ShopOptions[ItemName] -- Player will have 5 dollars left
	end
end
