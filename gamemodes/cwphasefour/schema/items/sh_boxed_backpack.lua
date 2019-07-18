--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "ItemBoxedBackpack";
ITEM.uniqueID = "boxed_backpack";
ITEM.cost = 100;
ITEM.model = "models/props_junk/cardboard_box004a.mdl";
ITEM.weight = 0.5;
ITEM.useText = "Open";
ITEM.category = "Equipment"
ITEM.business = true;
ITEM.description = "ItemBoxedBackpackDesc";

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	if (player:HasItemByID("backpack") and table.Count(player:GetItemsByID("backpack")) >= 1) then
		Clockwork.player:Notify(player, "You've hit the backpacks limit!");

		return false;
	end;

	player:GiveItem(Clockwork.item:CreateInstance("backpack"));
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();