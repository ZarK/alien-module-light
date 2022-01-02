-- make alien plate from alien ore --
data:extend({
	{
		type = "recipe",
		name = "alien-plate",
		category = "smelting",
		enabled = false,
		energy_required = 10,
		ingredients = { { "artifact-ore", 1 } },
		result = "alien-plate"
	}
})

data:extend({
	{
		type = "recipe",
		name = "alien-steel-plate",
		category = "smelting",
		enabled = false,
		energy_required = 25,
		ingredients = { { "alien-plate", 5 } },
		result = "alien-steel-plate"
	}
})

if(settings.startup["alien-module-ore-conversion"].value) then
	-- make iron ore from alien ore --
	data:extend({
		{
			type = "recipe",
			name = "alien-ore-to-iron-ore",
			enabled = true,
			energy_required = 10,
			ingredients = { { "artifact-ore", 1 } },
			result = "iron-ore",
			result_count = 5
		}
	})

	-- make copper ore from alien ore --
	data:extend({
		{
			type = "recipe",
			name = "alien-ore-to-copper-ore",
			enabled = true,
			energy_required = 10,
			ingredients = { { "artifact-ore", 1 } },
			result = "copper-ore",
			result_count = 5
		}
	})

	-- make stone ore from alien ore --
	data:extend({
		{
			type = "recipe",
			name = "alien-ore-to-stone",
			enabled = true,
			energy_required = 10,
			ingredients = { { "artifact-ore", 1 } },
			result = "stone",
			result_count = 5
		}
	})

	-- make uranium ore from alien ore --
	data:extend({
		{
			type = "recipe",
			name = "alien-ore-to-uranium-ore",
			enabled = true,
			energy_required = 20,
			ingredients = { { "artifact-ore", 2 } },
			result = "uranium-ore",
			result_count = 1
		}
	})

	-- make coal from alien ore --
	data:extend({
		{
			type = "recipe",
			name = "alien-ore-to-coal",
			enabled = true,
			energy_required = 10,
			ingredients = { { "artifact-ore", 1 } },
			result = "coal",
			result_count = 5
		}
	})
end

-- if bobs enemies is enabled, make conversion of alien artifacts possible
if data.raw["item"]["alien-artifact"] ~= nil then
	data:extend({
		{
			type = "recipe",
			name = "alien-artifact-to-ore",
			enabled = true,
			energy_required = 25,
			result_count = 5,
			ingredients = { { "alien-artifact", 1 }, { "stone", 5 }, { "iron-ore", 5 } },
			result = "artifact-ore"
		}
	})
end

-- alien-module-light-1 from alien-plate --
data:extend({
	{
		type = "recipe",
		name = "alien-module-light-1",
		enabled = false,
		energy_required = 20,
		result = "alien-module-light-1",
		result_count = 1,
		ingredients = {
			{ "alien-plate", 50 }
		},
	},
})

-- alien-module-light-2 --
data:extend({
	{
		type = "recipe",
		name = "alien-module-light-2",
		enabled = false,
		energy_required = 40,
		result = "alien-module-light-2",
		result_count = 1,
		ingredients = {
			{ "alien-module-light-1", 3 },
			{ "electronic-circuit", 20 }
		},
	},
})

-- alien-module-light-3 --
data:extend({
	{
		type = "recipe",
		name = "alien-module-light-3",
		enabled = false,
		energy_required = 60,
		result = "alien-module-light-3",
		result_count = 1,
		ingredients = {
			{ "alien-module-light-2", 3 },
			{ "advanced-circuit", 20 }
		},
	},
})

-- alien-module-light-4 --
data:extend({
	{
		type = "recipe",
		name = "alien-module-light-4",
		enabled = false,
		energy_required = 80,
		result = "alien-module-light-4",
		result_count = 1,
		ingredients = {
			{ "alien-module-light-3", 3 },
			{ "processing-unit", 10 }
		},
	},
})

-- alien-module-light-5 --
data:extend({
	{
		type = "recipe",
		name = "alien-module-light-5",
		enabled = false,
		energy_required = 100,
		result = "alien-module-light-5",
		result_count = 1,
		ingredients = {
			{ "alien-module-light-4", 3 },
			{ "processing-unit", 20 }
		},
	},
})

-- alien-fuel --

data:extend({
	{
		type = "recipe",
		name = "alien-fuel",
		enabled = false,
		energy_required = 5,
		result = "alien-fuel",
		result_count = 1,
		ingredients = {
			{ "artifact-ore", 2 },
			{ "coal", 10 }
		},
	},
})

for i = 1, 100, 1 do
	data:extend({
		{
			type = "recipe",
			name = "alien-hyper-module-" .. i,
			enabled = false,
			energy_required = i,
			result = "alien-hyper-module-" .. i,
			result_count = 1,
			ingredients = {
				{ "alien-plate", 20 * i }
			},
		},
	})
end
