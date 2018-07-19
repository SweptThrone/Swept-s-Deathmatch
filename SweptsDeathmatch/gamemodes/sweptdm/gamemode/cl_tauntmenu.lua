------------------------------
-------cl_tauntmenu.lua-------
--Realm: Client
--Purpose: Build and display the F3 menu.
--Net usage: Receive a command to do the purpose.
------------------------------

net.Receive("taunt_menu_open", function()
	
	surface.PlaySound("npc/roller/mine/rmine_taunt1.wav")
	
	--i do this in all menus because personalization is nice
	local col = LocalPlayer():GetPlayerColor():ToColor()
	local winColor = col
	local inv = Color(255 - col.r, 255 - col.g, 255 - col.b, 255)
	
	local taunts = {
	["pers"] = 3.7,
	["dance"] = 9.4,
	["zombie"] = 2.7,
	["robot"] = 11.7,
	["cheer"] = 3.1,
	["wave"] = 3.7,
	["laugh"] = 6.5,
	["bow"] = 3.5
	}
	
    local TauntWindow = vgui.Create( "DFrame" )
    TauntWindow:SetPos( ScrW() * 0.3525, ScrH() * 0.35 )
    TauntWindow:SetSize( 286, 168 )
    TauntWindow:SetTitle( "SweptDM Taunt Menu" )
    TauntWindow:SetVisible( true )
    TauntWindow:SetDraggable( false )
    TauntWindow:ShowCloseButton( true )
    TauntWindow:MakePopup()
	TauntWindow:Center()
	TauntWindow.Paint = function( self, w, h ) 
		draw.RoundedBox( 0, 0, 0, w, h, winColor )
	end
	
	--everything from here down just adds model panels
	local TauntGrid = vgui.Create( "DGrid", TauntWindow )
	TauntGrid:SetPos( 6 , 28 )
	TauntGrid:SetCols(4)
	TauntGrid:SetColWide(70)
	TauntGrid:SetRowHeight(70)
	
	for k,v in pairs(taunts) do
		local ActButton = vgui.Create( "DButton" )
		ActButton:SetText( k[1]:upper() .. k:sub(2) .. "\n" .. v .. "s" )
		ActButton:SetContentAlignment(5)
		ActButton:SetSize( 64, 64 )
		ActButton:SetTextColor(col)
		ActButton.DoClick = function()
			if !timer.Exists("st_taunt_delay") then
				RunConsoleCommand( "act", k )
				chat.AddText( Color(0,255,0), "Running ", k, " taunt for ", tostring(v), " seconds.")
				surface.PlaySound("common/bugreporter_succeeded.wav")
				--i learned after i made this that there is a horribly easy way to handle this
				--a function called IsPlayingTaunt()
				--i dont fuck with that though, this works, and im happy with it
				net.Start("sdm_taunt")
					net.WriteDouble( v )
				net.SendToServer()
				TauntWindow:Close()
				timer.Create("st_taunt_delay", 15, 1, function() timer.Remove("st_taunt_delay") end)
			else
				surface.PlaySound("garrysmod/ui_return.wav")
				chat.AddText( Color(255, 0, 0), "Please wait " .. math.Round(timer.TimeLeft("st_taunt_delay")) .. " seconds before taunting again." )
			end
		end
		ActButton.Paint = function( self, w, h )
			draw.RoundedBox( 0, 0, 0, w, h, inv )
		end
		TauntGrid:AddItem( ActButton )
	end
	
end )