--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("custom_clothes");

ITEM.cost = 11500;
ITEM.name = "ItemVintagePowerarmor";
ITEM.uniqueID = "vintage_powerarmor";
ITEM.weight = 4;
ITEM.business = true;
ITEM.runSound = {
		"npc/metropolice/gear1.wav",
		"npc/metropolice/gear2.wav",
		"npc/metropolice/gear3.wav",
		"npc/metropolice/gear4.wav",
		"npc/metropolice/gear5.wav",
		"npc/metropolice/gear6.wav"
	};
ITEM.armorScale = 0.75;
ITEM.replacement = "models/nailgunner/slow.mdl";
ITEM.description = "ItemVintagePowerarmorDesc";
ITEM.hasJetpack = true;
ITEM.tearGasProtection = true;
ITEM.requiresArmadillo = true;

ITEM:Register();