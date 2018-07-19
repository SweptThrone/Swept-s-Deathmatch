-------------------------------
-------sv_sparemenus.lua-------
--Realm: Server
--Purpose: Show F1, F2, F3, F4 menus.
--Net usage: None.
-------------------------------

--show the help menu (cl_helpmenu)
hook.Add( "ShowHelp", "OpenHelpMenu", function(ply)

	ply:ConCommand( "st_open_help_menu" )
	ply:SetNWBool("f1hint", true)

end )

--show the taunt menu (cl_tauntmenu)
hook.Add( "ShowSpare1", "OpenTauntMenu", function(ply)

	ply:ConCommand( "st_open_taunt_menu" )
	ply:SetNWBool("f3hint", true)

end )

--show the buy menu (cl_weaponmenu)
hook.Add( "ShowSpare2", "OpenPurchaseMenu", function(ply)

	ply:ConCommand( "st_open_fas_market" )
	ply:SetNWBool("f4hint", true)

end )

--show the model menu (cl_modelmenu)
hook.Add( "ShowTeam", "OpenModelMenu", function(ply)

	ply:ConCommand( "st_open_model_menu" )
	ply:SetNWBool("f2hint", true)

end )