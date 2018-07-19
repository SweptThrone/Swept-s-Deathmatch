--------------------------------
-------sv_playerspawn.lua-------
--Realm: Server
--Purpose: Give the player weapons and model.
--Net usage: None.
--------------------------------

--give the player a knife and M1911 with ammo whenever they spawn
hook.Add("PlayerLoadout", "KnifeOnly", function(ply)

	ply:Give( "sdm_dv2" )
	ply:Give( "sdm_m1911" )
	ply:GiveAmmo( 35, ".45 ACP" )
	
	ply:FAS2_PickUpAttachment("stanagx30mag")
	
	return true

end)

--set the player's model to a random one or their chosen one
hook.Add( "PlayerSetModel", "ApplyModel", function(ply)

	local mdls = {
	"arctic",
	"guerilla",
	"leet",
	"phoenix",
	"gasmask",
	"riot",
	"swat",
	"urban"
	}

	if ply:GetNWString( "sdm_model" ) == nil or ply:GetNWString( "sdm_model" ) == "" then
		ply:SetModel("models/player/" .. table.Random(mdls) .. ".mdl")
	else
		ply:SetModel( ply:GetNWString("sdm_model") )
	end
	
	local col = ply:GetInfo( "cl_playercolor" )
	ply:SetPlayerColor( Vector( col ) )

	local col = Vector( ply:GetInfo( "cl_weaponcolor" ) )
	if col:Length() == 0 then
		col = Vector( 0.001, 0.001, 0.001 )
	end
	ply:SetWeaponColor( col )

end )