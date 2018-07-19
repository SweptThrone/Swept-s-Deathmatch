--------------------------------
-------sv_playertaunt.lua-------
--Realm: Server
--Purpose: Handle player taunting and freezing.
--Net usage: Receive a ping to carry out the purpose.
--------------------------------

net.Receive("sdm_taunt", function(len,ply)

	ply:Freeze(true)
	timer.Simple(net.ReadDouble(), function()
		ply:Freeze(false)
	end)

end)

--i could use this instead of a net send, but its release day
--and im adding this, and id rather not screw up something that
--already works
hook.Add( "PlayerStartTaunt", "FreezeTauntingPlayers", function(ply, act, len)

	ply:Freeze(true)
	timer.Simple(len, function()
		ply:Freeze(false)
	end)

end )