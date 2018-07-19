-------------------------------
-------cl_scoreboard.lua-------
--Realm: Client
--Purpose: Build and display a custom scoreboard.
--Net usage: None.
-------------------------------

--DISCLAIMER: Most of this code was taken from the GMod wiki
scoreboard = scoreboard or {}

function scoreboard:show()

		local playerlist = vgui.Create("DListView")
		playerlist:SetSize(ScrW() / 4, ScrH() / 4)
		playerlist:Center()
		playerlist:AddColumn("Name")
		playerlist:AddColumn("Kills")
		playerlist:AddColumn("Deaths")
		playerlist:AddColumn("Weapon")
		playerlist:AddColumn("Money")
		--[[ Line painting ]]--
		for _, v in pairs ( player.GetAll() ) do
			local line = playerlist:AddLine( v:Name(), v:Frags(), v:Deaths(), v:GetActiveWeapon().PrintName, v:GetNWInt("stmoney") .. " cR" )
			function line:Paint( w, h )
				draw.RoundedBox( 0, 0, 0, w, h, Color(255,255,255,255) )
			end
		end
		
		playerlist:SortByColumn( 2, true )
		
			--[[ Column header painting ]]--
		for _, v in pairs( playerlist.Columns ) do
			function v.Header:Paint( w, h )
				draw.RoundedBox( 0, 0, 0, w, h, Color(168,0,0,255) )
			end
			v.Header:SetTextColor( Color( 255, 255, 255, 255 ) )
		end

	function scoreboard:hide()
		playerlist:Remove()
	end
end

function GM:ScoreboardShow()
	scoreboard:show()
end

function GM:ScoreboardHide()
	scoreboard:hide()
end