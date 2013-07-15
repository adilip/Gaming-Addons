WoWProFit_LastMoney = 0
WoWProFit_MadeProfit = false
WoWProFit_History = {}

function WoWProFit_OnMouseDown()
	WoWProFit_MainFrame:StartMoving()
end
	
function WoWProFit_OnMouseUp()
	WoWProFit_MainFrame:StopMovingOrSizing()
end
	
function WoWProFit_OnLoad()
	WoWProFit_ChangeSize()
	WoWProFit_MainFrame:RegisterEvent("PLAYER_MONEY")
	WoWProFit_MainFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
end

function WoWProFit_ChangeSize()
	local width = 65
	width = width + WoWProFit_MainFrame_GoldString:GetStringWidth()
	width = width + WoWProFit_MainFrame_SilverString:GetStringWidth()
	width = width + WoWProFit_MainFrame_CopperString:GetStringWidth()
	
	WoWProFit_MainFrame:SetWidth(width)
end

function WoWProFit_OnEvent(self, event, ...)
	if event == "PLAYER_ENTERING_WORLD" then
		WoWProFit_LastMoney = GetMoney()
	end
	if event == "PLAYER_MONEY" then
		if not WoWProFit_MadeProfit then
			table.insert(WoWProFit_History, 1, 0)
			WoWProFit_MadeProfit = true
		end
		
		local difference = GetMoney() - WoWProFit_LastMoney
		WoWProFit_History[1] = WoWProFit_History[1] + difference
		WoWProFit_LastMoney = GetMoney()		
		
		local gold, silver, copper = WoWProFit_ReturnMoney(WoWProFit_History[1])
		
		WoWProFit_MainFrame_GoldString:SetText(gold)
		WoWProFit_MainFrame_SilverString:SetText(silver)
		WoWProFit_MainFrame_CopperString:SetText(copper)
		
		WoWProFit_ChangeSize()
		
		if WoWProFit_History[1] < 0 then
			WoWProFit_MainFrame_GoldString:SetTextColor(1,0,0)
			WoWProFit_MainFrame_SilverString:SetTextColor(1,0,0)
			WoWProFit_MainFrame_CopperString:SetTextColor(1,0,0)
		elseif WoWProFit_History[1] > 0 then
			WoWProFit_MainFrame_GoldString:SetTextColor(0,1,0)
			WoWProFit_MainFrame_SilverString:SetTextColor(0,1,0)
			WoWProFit_MainFrame_CopperString:SetTextColor(0,1,0)
		else
			WoWProFit_MainFrame_GoldString:SetTextColor(1,1,0)
			WoWProFit_MainFrame_SilverString:SetTextColor(1,1,0)
			WoWProFit_MainFrame_CopperString:SetTextColor(1,1,0)
		end				
	end
end

function WoWProFit_ReturnMoney(money)
	local absMoney = abs(money)
	local gold = floor(absMoney/10000)
	local silver = floor((absMoney-gold*10000)/100)
	local copper = absMoney - gold*10000 - silver*100
	return gold, silver, copper
end

function WoWProFit_Button_OnClick()
	local alltime=0
	
	for k,v in pairs(WoWProFit_History) do
		alltime = alltime + v
	end
	
	local gold, silver, copper = WoWProFit_ReturnMoney(alltime)
	
	if alltime < 0 then
		DEFAULT_CHAT_FRAME:AddMessage("WoWProFit - All time |cFFFF0000deficit|r:")
	else
		DEFAULT_CHAT_FRAME:AddMessage("WoWProFit - All time |cFF00FF00profit|r:")
	end
	
	DEFAULT_CHAT_FRAME:AddMessage("|cFFFFFF00" .. gold)
	DEFAULT_CHAT_FRAME:AddMessage("|cFFAAAAAA" .. silver)
	DEFAULT_CHAT_FRAME:AddMessage("|cFF993300" .. copper)
end













