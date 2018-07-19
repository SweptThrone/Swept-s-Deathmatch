---------------------------
-------cl_sdmhud.lua-------
--Realm: Client
--Purpose: Hide the default HUD and show our own.
--Net usage: None.
---------------------------

--create a bigger Arial for our HUD
if CLIENT then
	surface.CreateFont( "SDMHUD", {
		font = "Arial",
		size = 48,
	} )
end

hook.Add( "HUDPaint", "DrawSTHUD", function()
	
	local ply = LocalPlayer()
	
	--draw hp and color it based on hp
	local hp = ply:Health()
	local g, r = 0, 0
	if hp >= 50 then
		g = 255
		r = 255 - (5.1 * (hp - 50))
	elseif hp < 50 then
		g = (5.1 * (hp))
		r = 255
	else
		g = 255
		r = 0
	end
	surface.SetFont( "SDMHUD" )
	surface.SetTextColor( r, g, 0, 255 )
	surface.SetTextPos( 25, ScrH() - 64 )
	surface.DrawText( hp )
	
	--draw hp bar and background of hp bar
	draw.RoundedBox( 4, surface.GetTextSize("100") + 48, ScrH() - 62, 312, 40, Color(0,0,0) )
	draw.RoundedBox( 4, surface.GetTextSize("100") + 54, ScrH() - 56, hp * 3, 28, Color(r,g,0) )
	
	--draw active weapon name
	if ply:Alive() and IsValid(ply) and IsValid(ply:GetActiveWeapon()) then
		surface.SetFont( "SDMHUD" )
		surface.SetTextColor( ply:GetWeaponColor():ToColor() )
		surface.SetTextPos( ScrW() - surface.GetTextSize(wep:GetPrintName()) - 50, ScrH() - 112 )
		surface.DrawText( wep:GetPrintName() )
		
		--draw active weapon's ammo type
		if wep:GetPrimaryAmmoType() != -1 then
			surface.SetFont( "SDMHUD" )
			surface.SetTextColor( ply:GetWeaponColor():ToColor() )
			surface.SetTextPos( ScrW() - surface.GetTextSize(game.GetAmmoName(wep:GetPrimaryAmmoType())) - 50, ScrH() - 66 )
			surface.DrawText( game.GetAmmoName(wep:GetPrimaryAmmoType()) )
		end
	end
	
	--draw hints
	if !ply:GetNWBool("f1hint") then
		surface.SetFont( "Trebuchet18" )
		surface.SetTextColor( 255, 255, 255, 255 )
		surface.SetTextPos( ScrW() / 2 - (surface.GetTextSize("F1 - Info menu") / 2) , 5 )
		surface.DrawText( "F1 - Info menu" )
	end
	if !ply:GetNWBool("f2hint") then
		surface.SetFont( "Trebuchet18" )
		surface.SetTextColor( 255, 255, 255, 255 )
		surface.SetTextPos( ScrW() / 2 - (surface.GetTextSize("F2 - Model menu") / 2) , 25 )
		surface.DrawText( "F2 - Model menu" )
	end
	if !ply:GetNWBool("f3hint") then
		surface.SetFont( "Trebuchet18" )
		surface.SetTextColor( 255, 255, 255, 255 )
		surface.SetTextPos( ScrW() / 2 - (surface.GetTextSize("F3 - Taunt menu") / 2) , 45 )
		surface.DrawText( "F3 - Taunt menu" )
	end
	if !ply:GetNWBool("f4hint") then
		surface.SetFont( "Trebuchet18" )
		surface.SetTextColor( 255, 255, 255, 255 )
		surface.SetTextPos( ScrW() / 2 - (surface.GetTextSize("F4 - Weapon menu") / 2) , 65 )
		surface.DrawText( "F4 - Weapon menu" )
	end
	
	
end )

local hide = {
	CHudAmmo = true,
	CHudBattery = true,
	CHudHealth = true,
	CHudSecondaryAmmo = true
}

hook.Add( "HUDShouldDraw", "HideDefaults_ST", function(n) 
	if (hide[n]) then return false end
	--returning breaks shit, dont do it
end )

hook.Add( "HUDDrawTargetID", "HideAimNames", function()

	return false

end )