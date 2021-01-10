function onUse(player, item, fromPosition, target, toPosition)
	if math.random(20) == 1 then
		item:getPosition():sendMagicEffect(CONST_ME_POFF)
		player:addItem(ITEM_GOLD_COIN, 1)
		item:transform(2115)
	else
		item:getPosition():sendMagicEffect(CONST_ME_SOUND_YELLOW)
		player:addItem(ITEM_PLATINUM_COIN, 1)
	end
	return true
end
