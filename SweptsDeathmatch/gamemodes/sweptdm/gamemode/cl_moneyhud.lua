-----------------------------
-------cl_moneyhud.lua-------
--Realm: Client
--Purpose: Display player's money and actions.
--Net usage: None.
-----------------------------

hook.Add( "HUDPaint", "DrawSTMoney", function()
	--draw player's current money in green
	--i like green
	surface.SetFont( "Trebuchet24" )
	surface.SetTextColor( 0, 255, 0, 255 )
	surface.SetTextPos( 5, 5 )
	surface.DrawText( LocalPlayer():GetNWInt("stmoney") .. " cR" )
	
	--the message to tell you money change
	surface.SetFont( "Trebuchet24" )
	local ss = LocalPlayer():GetNWString("st_moneynotif")[1]
	if ss == "E" or ss == "G" then --either "Earned" or "Gained" is GREEN
		surface.SetTextColor( 0, 255, 0, 255 )
	elseif ss == "L" or ss == "S" then --eutger "Lost" or "Spent" is RED
		surface.SetTextColor( 255, 0, 0, 255 )
	else --i dont know how you could get this
		surface.SetTextColor( 0, 0, 0, 0 )
	end
	surface.SetTextPos( 5, 29 )
	surface.DrawText( LocalPlayer():GetNWString("st_moneynotif") )
end )