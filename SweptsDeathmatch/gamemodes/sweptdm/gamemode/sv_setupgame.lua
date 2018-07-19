------------------------------
-------sv_setupgame.lua-------
--Realm: Server
--Purpose: Modify fall damage, noclip state, and others.
--Net usage: None.
------------------------------

hook.Add( "GetFallDamage", "RealisticifyFallDamage", function(ply, spd)

	--replicates cs:s fall damage apparently
	return math.max( 0, math.ceil( 0.2418*spd - 141.75 ) )

end )

hook.Add( "PlayerNoClip", "DisableNoclip", function(ply, des)

	return false

end )