data:extend({
	{
		type = "bool-setting",
		name = "alien-module-ore-conversion",
		order = "a",
		setting_type = "startup",
		default_value = true
	},
	{
		type = "bool-setting",
		name = "alien-module-hyper-ammo-enabled",
		order = "aa",
		setting_type = "startup",
		default_value = true
	},
	{
		type = "double-setting",
		name = "alien-module-level-exponent",
		order = "b",
		minimum_value = 0.08, maximum_value = 0.20,
		setting_type = "startup",
		default_value = 0.10
	},
	{
		type = "double-setting",
		name = "alien-module-hyper-module-effect",
		order = "c",
		minimum_value = 0.001, maximum_value = 0.1,
		setting_type = "startup",
		default_value = 0.01
	},
	{
		type = "int-setting",
		name = "alien-module-drop-amount",
		order = "d",
		minimum_value = 1, maximum_value = 10000,
		setting_type = "startup",
		default_value = 100
	},
	{
		type = "double-setting",
		name = "rampant-alienmodule-compat-probability-per-tier-unit",
		setting_type = "startup",
		order = "1probabilities-1",
		default_value = 0.08,
		minimum_value = 0,
		maximum_value = 1
	  },
	  {
		type = "double-setting",
		name = "rampant-alienmodule-compat-probability-per-tier-turret",
		setting_type = "startup",
		order = "1probabilities-2",
		default_value = 0.08,
		minimum_value = 0,
		maximum_value = 1
	  },
	  {
		type = "double-setting",
		name = "rampant-alienmodule-compat-probability-per-tier-spawner",
		setting_type = "startup",
		order = "1probabilities-3",
		default_value = 0.1,
		minimum_value = 0,
		maximum_value = 1
	  },
	  {
		type = "int-setting",
		name = "rampant-alienmodule-compat-min-count-unit",
		setting_type = "startup",
		order = "2count-1-1",
		default_value = 1,
		minimum_value = 0
	  },
	  {
		type = "int-setting",
		name = "rampant-alienmodule-compat-min-count-turret",
		setting_type = "startup",
		order = "2count-2-1",
		default_value = 1,
		minimum_value = 0
	  },
	  {
		type = "int-setting",
		name = "rampant-alienmodule-compat-min-count-spawner",
		setting_type = "startup",
		order = "2count-3-1",
		default_value = 80,
		minimum_value = 0
	  },
	  {
		type = "int-setting",
		name = "rampant-alienmodule-compat-max-count-unit",
		setting_type = "startup",
		order = "2count-1-2",
		default_value = 1,
		minimum_value = 0
	  },
	  {
		type = "int-setting",
		name = "rampant-alienmodule-compat-max-count-turret",
		setting_type = "startup",
		order = "2count-2-2",
		default_value = 32,
		minimum_value = 0
	  },
	  {
		type = "int-setting",
		name = "rampant-alienmodule-compat-max-count-spawner",
		setting_type = "startup",
		order = "2count-3-2",
		default_value = 200,
		minimum_value = 0
	  },
})