-----------------------------
-------cl_killfeed.lua-------
--Realm: Client
--Purpose: Hide the kill feed and show our own.
--Net usage: None.
-----------------------------

net.Receive( "sdm_kill", function( len, ply )
	
	--hide default killfeed
	function GAMEMODE:DrawDeathNotice( x, y ) x = 150 y = 150 end
	
	local atk = net.ReadString()
	local vic = net.ReadString()
	local wep = net.ReadString()
	local msg = ""
	
	if vic == atk then
		--we're going to assume that the player fell or suicided
		msg = atk .. " died"
		timer.Remove("sdm_kill_feed")
		timer.Create("sdm_kill_feed", 5, 1, function() msg = "" end)
	else
		msg = atk .. " killed " .. vic .. " with " .. wep
		timer.Remove("sdm_kill_feed")
		timer.Create("sdm_kill_feed", 5, 1, function() msg = "" end)
	end
	
	hook.Add( "HUDPaint", "DrawKillFeed", function()
		surface.SetFont( "Trebuchet24" )
		surface.SetTextColor( 255, 255, 255, 255 )
		surface.SetTextPos( ScrW() - surface.GetTextSize( msg ) - 16, 12 )
		surface.DrawText( msg )
	end )
		
end )