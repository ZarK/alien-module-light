table.insert(data.raw["technology"]["military"].effects,
		{
			type = "unlock-recipe",
			recipe = "alien-plate"
		})

table.insert(data.raw["technology"]["military"].effects,
		{
			type = "unlock-recipe",
			recipe = "alien-magazine"
		})

if settings.startup["alien-module-hyper-ammo-enabled"].value then
	table.insert(data.raw["technology"]["military"].effects,
			{
				type = "unlock-recipe",
				recipe = "alien-hyper-magazine-1"
			})
end

table.insert(data.raw["technology"]["military"].effects,
		{
			type = "unlock-recipe",
			recipe = "alien-ore-magazine"
		})

table.insert(data.raw["technology"]["military"].effects,
		{
			type = "unlock-recipe",
			recipe = "alien-fuel"
		})

if data.raw["item"]["alien-artifact"] then
	table.insert(data.raw["technology"]["automation"].effects,
			{
				type = "unlock-recipe",
				recipe = "alien-artifact-to-ore"
			})
end

table.insert(data.raw["technology"]["advanced-material-processing"].effects,
		{
			type = "unlock-recipe",
			recipe = "alien-steel-plate"
		})

table.insert(data.raw["technology"]["automation"].effects,
		{
			type = "unlock-recipe",
			recipe = "alien-economy-light-1"
		})

table.insert(data.raw["technology"]["automation"].effects,
		{
			type = "unlock-recipe",
			recipe = "alien-hyper-module-1"
		})

table.insert(data.raw["technology"]["automation"].effects,
		{
			type = "unlock-recipe",
			recipe = "alien-economy-light-2"
		})

table.insert(data.raw["technology"]["advanced-electronics"].effects,
		{
			type = "unlock-recipe",
			recipe = "alien-economy-light-3"
		})

table.insert(data.raw["technology"]["advanced-electronics"].effects,
		{
			type = "unlock-recipe",
			recipe = "alien-economy-light-4"
		})

table.insert(data.raw["technology"]["advanced-electronics"].effects,
		{
			type = "unlock-recipe",
			recipe = "alien-economy-light-5"
		})
