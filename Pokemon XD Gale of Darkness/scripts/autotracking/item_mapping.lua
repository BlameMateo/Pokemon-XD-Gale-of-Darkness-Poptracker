-- use this file to map the AP item ids to your items
-- first value is the code of the target item and the second is the item type override. The third value is an optional increment multiplier for consumables. (feel free to expand the table with any other values you might need (i.e. special initial values, etc.)!)
-- here are the SM items as an example: https://github.com/Cyb3RGER/sm_ap_tracker/blob/main/scripts/autotracking/item_mapping.lua
BASE_ITEM_ID = 3820000
ITEM_MAPPING = {

	-- Key Items --

	[BASE_ITEM_ID + 20] = { { "machine part" } },
	[BASE_ITEM_ID + 24] = { { "music disc" } },
	[BASE_ITEM_ID + 21] = { { "mayor's note" } },
	[BASE_ITEM_ID + 26] = { { "system lever" } },
	[BASE_ITEM_ID + 256] = { { "data rom & id card" } },
	[BASE_ITEM_ID + 254] = { { "robo kyogre part" } },
	[BASE_ITEM_ID + 257] = { { "scooter upgrade" } },
	[BASE_ITEM_ID + 33] = { { "master ball" } },


	-- Travel Unlocks --

	[BASE_ITEM_ID + 240] = { { "travel snagem hideout" } },
	[BASE_ITEM_ID + 241] = { { "travel outskirt stand" } },
	[BASE_ITEM_ID + 243] = { { "travel pyrite town" } },
	[BASE_ITEM_ID + 244] = { { "travel phenac city" } },
	[BASE_ITEM_ID + 246] = { { "travel realgam tower" } },
	[BASE_ITEM_ID + 247] = { { "travel cipher key lair" } },
	[BASE_ITEM_ID + 250] = { { "travel cipher lab" } },
	[BASE_ITEM_ID + 251] = { { "travel mt. battle" } },
	[BASE_ITEM_ID + 252] = { { "travel ss libra" } },
	[BASE_ITEM_ID + 253] = { { "travel orre colosseum" } },
	[BASE_ITEM_ID + 255] = { { "travel poke spots" } },
}
