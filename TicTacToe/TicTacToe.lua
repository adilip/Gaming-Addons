Button_A = 0
Button_B = 0
Button_C = 0
Button_D = 0
Button_E = 0
Button_F = 0
Button_G = 0
Button_H = 0
Button_I = 0

function TicTacToe_OnMouseDown()
	TicTacToe_MainFrame:StartMoving()
end

function TicTacToe_OnMouseUp()
	TicTacToe_MainFrame:StopMovingOrSizing()
end

function Button_A_OnClick()
	Button_A = Button_A + 1
	if Button_A == 1 then
		TicTacToe_MainFrame_Button_A:SetNormalTexture(0,0,1,1)
	elseif Button_A == 2 then
		TicTacToe_MainFrame_Button_A:SetNormalTexture(1,0,0,1)
	elseif Button_A == 3 then
		Button_A=0
		TicTacToe_MainFrame_Button_A:SetNormalTexture(0.2,0.2,0.2,1)
	end
end

function Button_B_OnClick()
	Button_B = Button_B + 1
	if Button_B == 1 then
		TicTacToe_MainFrame_Button_B:SetNormalTexture(0,0,1,1)
	elseif Button_B == 2 then
		TicTacToe_MainFrame_Button_B:SetNormalTexture(1,0,0,1)
	elseif Button_B == 3 then
		Button_B=0
		TicTacToe_MainFrame_Button_B:SetNormalTexture(0.2,0.2,0.2,1)
	end
end

function Button_C_OnClick()
	Button_C = Button_C + 1
	if Button_C == 1 then
		TicTacToe_MainFrame_Button_C:SetNormalTexture(0,0,1,1)
	elseif Button_B == 2 then
		TicTacToe_MainFrame_Button_C:SetNormalTexture(1,0,0,1)
	elseif Button_C == 3 then
		Button_C=0
		TicTacToe_MainFrame_Button_C:SetNormalTexture(0.2,0.2,0.2,1)
	end
end

function Button_D_OnClick()
	Button_D = Button_D + 1
	if Button_D == 1 then
		TicTacToe_MainFrame_Button_D:SetNormalTexture(0,0,1,1)
	elseif Button_D == 2 then
		TicTacToe_MainFrame_Button_D:SetNormalTexture(1,0,0,1)
	elseif Button_D == 3 then
		Button_D=0
		TicTacToe_MainFrame_Button_D:SetNormalTexture(0.2,0.2,0.2,1)
	end
end

function Button_E_OnClick()
	Button_E = Button_E + 1
	if Button_E == 1 then
		TicTacToe_MainFrame_Button_E:SetNormalTexture(0,0,1,1)
	elseif Button_E == 2 then
		TicTacToe_MainFrame_Button_E:SetNormalTexture(1,0,0,1)
	elseif Button_E == 3 then
		Button_E=0
		TicTacToe_MainFrame_Button_E:SetNormalTexture(0.2,0.2,0.2,1)
	end
end

function Button_F_OnClick()
	Button_F = Button_F + 1
	if Button_F == 1 then
		TicTacToe_MainFrame_Button_F:SetNormalTexture(0,0,1,1)
	elseif Button_F == 2 then
		TicTacToe_MainFrame_Button_F:SetNormalTexture(1,0,0,1)
	elseif Button_F == 3 then
		Button_F=0
		TicTacToe_MainFrame_Button_F:SetNormalTexture(0.2,0.2,0.2,1)
	end
end

function Button_G_OnClick()
	Button_G = Button_G + 1
	if Button_G == 1 then
		TicTacToe_MainFrame_Button_G:SetNormalTexture(0,0,1,1)
	elseif Button_G == 2 then
		TicTacToe_MainFrame_Button_G:SetNormalTexture(1,0,0,1)
	elseif Button_G == 3 then
		Button_G=0
		TicTacToe_MainFrame_Button_G:SetNormalTexture(0.2,0.2,0.2,1)
	end
end

function Button_H_OnClick()
	Button_H = Button_H + 1
	if Button_H == 1 then
		TicTacToe_MainFrame_Button_H:SetNormalTexture(0,0,1,1)
	elseif Button_H == 2 then
		TicTacToe_MainFrame_Button_H:SetNormalTexture(1,0,0,1)
	elseif Button_H == 3 then
		Button_H=0
		TicTacToe_MainFrame_Button_H:SetNormalTexture(0.2,0.2,0.2,1)
	end
end

function Button_I_OnClick()
	Button_I = Button_I + 1
	if Button_I == 1 then
		TicTacToe_MainFrame_Button_I:SetNormalTexture(0,0,1,1)
	elseif Button_I == 2 then
		TicTacToe_MainFrame_Button_I:SetNormalTexture(1,0,0,1)
	elseif Button_I == 3 then
		Button_I=0
		TicTacToe_MainFrame_Button_I:SetNormalTexture(0.2,0.2,0.2,1)
	end
end





