local loot_to_add = {"artifact-ore"}

function RampantAddLootToCategory(category, probability_per_tier, c_min, c_max)
  for name, table_entry in pairs(data.raw[category]) do
    v, t = string.match(name, "%-v(%d+)%-t(%d+)%-rampant")
    if v ~= nil and t ~= nil then
      if table_entry.loot == nil then
        table_entry.loot = {}
      end
      for _, loot in pairs(loot_to_add) do
        local already_has_loot = false
        for _, loot_entry in pairs(table_entry.loot) do
          if loot_entry.item == loot then
            already_has_loot = true
          end
        end
        if not already_has_loot then
          p = math.min(probability_per_tier * tonumber(t), 1)
          table.insert(table_entry.loot, {
            item = loot,
            probability = p,
            count_min = c_min,
            count_max = c_max,
          })
          -- log("added loot " .. loot .. " (" .. p .. "," .. c_min .. "," .. c_max .. ") to " .. name)
        else
          -- log("skipping loot " .. loot .. " for " .. name)
        end
      end
    end
  end
end

RampantAddLootToCategory("unit",
  settings.startup["rampant-alienmodule-compat-probability-per-tier-unit"].value,
  settings.startup["rampant-alienmodule-compat-min-count-unit"].value,
  settings.startup["rampant-alienmodule-compat-max-count-unit"].value)
RampantAddLootToCategory("turret",
  settings.startup["rampant-alienmodule-compat-probability-per-tier-turret"].value,
  settings.startup["rampant-alienmodule-compat-min-count-turret"].value,
  settings.startup["rampant-alienmodule-compat-max-count-turret"].value)
RampantAddLootToCategory("unit-spawner",
  settings.startup["rampant-alienmodule-compat-probability-per-tier-spawner"].value,
  settings.startup["rampant-alienmodule-compat-min-count-spawner"].value,
  settings.startup["rampant-alienmodule-compat-max-count-spawner"].value)
