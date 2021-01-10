local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)	npcHandler:onCreatureSay(cid, type, msg)	end
function onThink()						npcHandler:onThink()						end

	
local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)


shopModule:addSellableItem({'battle axe'},2378,80,'battle axe')
shopModule:addSellableItem({'double axe'},2387,260,'double axe')
shopModule:addSellableItem({'battle hammer'},2417,120,'battle hammer')
shopModule:addSellableItem({'battle shield'},2513,95,'battle shield')
shopModule:addSellableItem({'brass armor'},2465,150,'brass armor')
shopModule:addSellableItem({'brass shield'},2511,15,'brass shield')
shopModule:addSellableItem({'chain armor'},2464,70,'chain armor')
shopModule:addSellableItem({'chain helmet'},2458,17,'chain helmet')
shopModule:addSellableItem({'chain legs'},2648,25,'chain legs')
shopModule:addSellableItem({'hand axe'},2380,4,'hand axe')
shopModule:addSellableItem({'leather armor'},2467,12,'leather armor')
shopModule:addSellableItem({'leather helmet'},2461,4,'leather helmet')
shopModule:addSellableItem({'morning star'},2394,90,'morning star')
shopModule:addSellableItem({'plate armor'},2463,400,'plate armor')
shopModule:addSellableItem({'plate legs'},2647,115,'plate legs')
shopModule:addSellableItem({'short sword'},2406,10,'short sword')
shopModule:addSellableItem({'steel helmet'},2457,190,'steel helmet')
shopModule:addSellableItem({'steel shield'},2509,80,'steel shield')
shopModule:addSellableItem({'two handed sword'},2377,450,'two handed sword')
shopModule:addSellableItem({'wooden shield'},2512,5,'wooden shield')
shopModule:addSellableItem({'axe'},2386,7,'axe')
shopModule:addSellableItem({'dagger'},2379,2,'dagger')
shopModule:addSellableItem({'halberd'},2381,400,'halberd')
shopModule:addSellableItem({'mace'},2398,30,'mace')
shopModule:addSellableItem({'rapier'},2384,5,'rapier')
shopModule:addSellableItem({'sabre'},2385,12,'sabre')
shopModule:addSellableItem({'spear'},2389,3,'spear')
shopModule:addSellableItem({'sword'},2376,25,'sword')


shopModule:addBuyableItem({'battle hammer'},2417,350,'battle hammer')
shopModule:addBuyableItem({'brass armor'},2465,450,'brass armor')
shopModule:addBuyableItem({'chain armor'},2464,200,'chain armor')
shopModule:addBuyableItem({'chain helmet'},2458,52,'chain helmet')
shopModule:addBuyableItem({'chain legs'},2648,80,'chain legs')
shopModule:addBuyableItem({'hand axe'},2380,8,'hand axe')
shopModule:addBuyableItem({'leather armor'},2467,35,'leather armor')
shopModule:addBuyableItem({'leather helmet'},2461,12,'leather helmet')
shopModule:addBuyableItem({'steel shield'},2509,240,'steel shield')
shopModule:addBuyableItem({'throwing knife'},2410,25,'throwing knife')
shopModule:addBuyableItem({'wooden shield'},2512,15,'wooden shield')
shopModule:addBuyableItem({'axe'},2386,20,'axe')
shopModule:addBuyableItem({'dagger'},2379,5,'dagger')
shopModule:addBuyableItem({'mace'},2398,90,'mace')
shopModule:addBuyableItem({'rapier'},2384,15,'rapier')
shopModule:addBuyableItem({'sabre'},2385,35,'sabre')
shopModule:addBuyableItem({'spear'},2389,10,'spear')
shopModule:addBuyableItem({'sword'},2376,85,'sword')
	
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())