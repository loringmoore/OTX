function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	
	local item = player:addItem(2089)
	
	if player:getStorageValue(6020) == 1 then
		player:sendTextMessage(MESSAGE_INFO_DESCR, 'The mushroom is empty.')
	else
		player:sendTextMessage(MESSAGE_INFO_DESCR, 'You have found a copper key.')
		player:addItem(2089)
		item:setActionId(5821)
		player:setStorageValue(6020, 1)
	end
	return true
end