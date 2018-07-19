--------------------------------
-------sv_modelupdate.lua-------
--Realm: Server
--Purpose: Update the player's model when requested.
--Net usage: Receive a ping to do the purpose.
--------------------------------

net.Receive( "st_model_changed", function(len, ply)
	local mdl = net.ReadString()

	ply:SetModel(mdl)
	ply:SetNWString("sdm_model", mdl)

end)