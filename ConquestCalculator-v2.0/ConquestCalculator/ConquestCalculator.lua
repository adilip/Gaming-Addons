function ConquestCalculator_OnEnterPressed()
	local amount = ConquestCalculator_MainFrame_EditBox:GetNumber()
	local RBGWins, ArenaWins, BGWins
	
	RBGWins = ceil(amount/400)
	ArenaWins = ceil(amount/180)
	if amount <= 50 and amount > 0 then
		amount = 51
		BGWins = ceil(((amount-100)/50)+1)
	elseif amount == 0 then
		BGWins = 0
	else
		BGWins = ceil(((amount-100)/50)+1)
	end
	
	DEFAULT_CHAT_FRAME:AddMessage("Conquest Points: |cFFFFFF00" ..amount)
	DEFAULT_CHAT_FRAME:AddMessage("Rated Battleground Wins: |cFFFF0000" ..RBGWins)
	DEFAULT_CHAT_FRAME:AddMessage("Arena Wins: |cFFFF0000" ..ArenaWins)
	DEFAULT_CHAT_FRAME:AddMessage("Battleground Wins: |cFFFF0000" ..BGWins)
	
	ConquestCalculator_OnLoad()
end

function ConquestCalculator_OnLoad()
	ConquestCalculator_MainFrame_EditBox:ClearFocus()
end

function ConquestCalculator_AutoFocus()
	ConquestCalculator_MainFrame_EditBox:SetAutoFocus(false)
end

function ConquestCalculator_OnMouseDown()
	ConquestCalculator_MainFrame:StartMoving()
end

function ConquestCalculator_OnMouseUp()
	ConquestCalculator_MainFrame:StopMovingOrSizing()
end
