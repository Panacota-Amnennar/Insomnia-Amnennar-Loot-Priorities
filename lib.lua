function append_to_tooltip(tooltip)
  local item_name, item_link = tooltip:GetItem()

  if item_link then
    local item_id = item_link:match("item:(%d+):")
    if item_id then
      if LOOT_TABLE[item_id] then
        tooltip:AddLine("Insomnia ML")
        for i, v in ipairs(LOOT_TABLE[item_id]["ml"]) do
          tooltip:AddLine("  " .. v, 0.66, 0.61, 0.42)
        end
      end
    end
  end
end
