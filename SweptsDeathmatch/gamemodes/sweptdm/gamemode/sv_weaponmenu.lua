-------------------------------
-------sv_weaponmenu.lua-------
--Realm: Server
--Purpose: Set up console commands
--Net usage: Receive a purchase action to give the player their weapon.
-------------------------------

hook.Add("Initialize", "SetupSweptDM", function()
	--set up net strings because net library sucks
	util.AddNetworkString( "fas_menu_open" )
	util.AddNetworkString( "help_menu_open" )
	util.AddNetworkString( "fas_givewep" )
	util.AddNetworkString( "model_menu_open" )
	util.AddNetworkString( "taunt_menu_open" )
	util.AddNetworkString( "st_model_changed" )
	util.AddNetworkString( "sdm_kill" )
	util.AddNetworkString( "sdm_taunt" )
	util.AddNetworkString( "sdm_player_joined" )

	--add a console command to open the market menu
	concommand.Add("st_open_fas_market", function(ply, cmd, arg, str)
		net.Start("fas_menu_open")
			net.WriteString("ping")
		net.Send(ply)
	end)

	--add a console command to open the help menu,
	--despite this also being on F1
	concommand.Add("st_open_help_menu", function(ply, cmd, arg, str)
		net.Start("help_menu_open")
			net.WriteString("ping")
		net.Send(ply)
	end)
	
	--add a console command to open the model menu,
	--despite this also being on F2
	concommand.Add("st_open_model_menu", function(ply, cmd, arg, str)
		net.Start("model_menu_open")
			net.WriteString("ping")
		net.Send(ply)
	end)
	
	--add a console command to open the taunt menu,
	--despite this also being on F3
	concommand.Add("st_open_taunt_menu", function(ply, cmd, arg, str)
		net.Start("taunt_menu_open")
			net.WriteString("ping")
		net.Send(ply)
	end)
	
	--add a console command to see the game version
	concommand.Add("sdm_version", function(ply, cmd, arg, str)
		print("Swept's Deathmatch v1.2.7")
	end)
	
	--hide default kill feed
	if CLIENT then
		function GAMEMODE:DrawDeathNotice( x, y ) x = 150 y = 150 end
	end
	
end)

net.Receive("fas_givewep", function(len, ply) --called when the player purchases a weapon
	--prevents the player from wasting money if they're dead
	if !ply:Alive() then return end
	
	--store net reads in variables
	--so I can use them more than once
	intInt = net.ReadInt(32) --wep price
	intStr = net.ReadString() --wep classname
	wepTab = {}
	
	--give the player their weapon
	--if the player has enough money
	if ply:GetNWInt("stmoney") >= intInt then
		--if it's a weapon
		if string.sub(intStr, 1, 3) == "sdm" then
			--insert the player's weapon classes into a temp table so that...
			for k,v in pairs(ply:GetWeapons()) do
				table.insert(wepTab, v:GetClass())
			end
			
			--...this is easier
			--give the player their weapon and take their money
			if !table.HasValue(wepTab, intStr) then
				ply:Give(intStr)
				if intStr == "sdm_m79" then
					ply:SetAmmo( 12, "40MM HE" )
				elseif intStr == "sdm_m67" then
					ply:SetAmmo( 12, "M67 Grenades" )
				elseif intStr == "sdm_m84" then
					ply:SetAmmo( 12, "M84 Grenades" )
				else
					ply:GiveAmmo( weapons.GetStored(intStr).Primary.ClipSize * 3, weapons.GetStored(intStr).Primary.Ammo )
				end
				ply:SetNWInt("stmoney", ply:GetNWInt("stmoney") - intInt)
				ply:SetNWString("st_moneynotif", "Spent " .. intInt .. " cR on " .. weapons.GetStored(intStr).PrintName .. ".")
				timer.Remove(ply:Name() .. "st_notif_reset")
				timer.Create(ply:Name() .. "st_notif_reset", 5, 1, function() ply:SetNWString("st_moneynotif", "") end)
				ply:EmitSound("items/ammopickup.wav")
			else return end
		else
			--if it's not a weapon, it has to be an attachment
			if !table.HasValue(ply.FAS2Attachments, intStr) then
				--give the player their attachment and take their money
				ply:FAS2_PickUpAttachment(intStr)
				ply:SetNWInt("stmoney", ply:GetNWInt("stmoney") - intInt)
				--i hate this, but i dont wanna send another int
				--(entity's index)
				ply:SetNWString("st_moneynotif", "Spent " .. intInt .. " cR on an attachment.")
				timer.Remove(ply:Name() .. "st_notif_reset")
				timer.Create(ply:Name() .. "st_notif_reset", 5, 1, function() ply:SetNWString("st_moneynotif", "") end)
				ply:EmitSound("items/ammopickup.wav")
			else return end
		end
	else --we dont have enough money
		ply:EmitSound("buttons/weapon_cant_buy.wav")
	end

end)