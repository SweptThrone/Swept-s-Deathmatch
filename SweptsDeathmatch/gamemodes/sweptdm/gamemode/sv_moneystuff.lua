-------------------------------
-------sv_moneystuff.lua-------
--Realm: Server
--Purpose: Handle rewards and dropping money on death.
--Net usage: None
-------------------------------

--convenience function
function SDMKNotif( attacker, victim )

	for k,v in pairs(player.GetAll()) do
		net.Start( "sdm_kill" )
			net.WriteString( attacker:Name() )
			net.WriteString( victim:Name() )
			net.WriteString( attacker:GetActiveWeapon():GetPrintName() )
		net.Send( v )
	end

end

hook.Add("PlayerInitialSpawn", "SetMoney", function(ply)
	--initialize networked values so nil value errors aren't thrown
	ply:SetNWInt("stmoney", 1000)
	ply:SetNWString("st_moneynotif", "")
	
	ply:SetNWBool("f1hint", false)
	ply:SetNWBool("f2hint", false)
	ply:SetNWBool("f3hint", false)
	ply:SetNWBool("f4hint", false)
	
	ply:AllowFlashlight(true)
end)

hook.Add("PlayerDeath", "GiveAndSpawnMoney", function(vic, wep, atk)
	--hide default killfeed
	function GAMEMODE:DrawDeathNotice( x, y ) x = 150 y = 150 end
	
	--initialize money change message so nil value errors aren't thrown
	local msg = ""

	--set up the rewards table
	--paired with the SDM FA:S base, this determines different kill rewards
	local rewards = {
	["pistol"] = 2,
	["smg"] = 1.5,
	["rifle"] = 1.25,
	["shotgun"] = 1.75,
	["sniper"] = 3,
	["melee"] = 5,
	["explosive"] = 7,
	["lmg"] = 2
	}
	
	--moneynotif is the little message that appears when money changes

	--give 100 cR * mult when someone kills another player
	if vic:IsPlayer() and atk:IsPlayer() and vic != atk then
		if !IsValid(atk:GetActiveWeapon()) then return end
		--only does anything if the gun is fas
		--really this should be at the top of this hook, but im too stupid
		if !string.find(atk:GetActiveWeapon().Base, "sdm") then return end
		atk:SetNWInt("stmoney", atk:GetNWInt("stmoney") + (100) * rewards[atk:GetActiveWeapon().Type])
		
		msg = "Earned " .. (100) * rewards[atk:GetActiveWeapon().Type] .. " cR for killing " .. vic:Name() .. "."
		timer.Remove(atk:Name() .. "st_notif_reset")
		timer.Create(atk:Name() .. "st_notif_reset", 5, 1, function() atk:SetNWString("st_moneynotif", "") end)
		atk:SetNWString("st_moneynotif", msg)
	end
	
	--remove 1000 cR when someone suicides
	if vic == atk then
		atk:SetNWInt("stmoney", math.Round(math.Clamp(atk:GetNWInt("stmoney") / 2, 0, 9999999999999)))
		
		msg = "Lost half of your money for committing suicide!"
		timer.Remove(vic:Name() .. "st_notif_reset")
		timer.Create(vic:Name() .. "st_notif_reset", 5, 1, function() vic:SetNWString("st_moneynotif", "") end)
		atk:SetNWString("st_moneynotif", msg)
	end
	
	--give everyone who wasn't killed 50 cR as a survivor bonus
	for k,v in pairs(player.GetAll()) do
		if v != vic and v != atk then
			v:SetNWInt("stmoney", v:GetNWInt("stmoney") + 50)
			
			msg = "Earned 50 cR for surviving a gunfight."
			timer.Remove(v:Name() .. "st_notif_reset")
			timer.Create(v:Name() .. "st_notif_reset", 5, 1, function() v:SetNWString("st_moneynotif", "") end)
			v:SetNWString("st_moneynotif", msg)
		end
	end
	
	if !atk:IsPlayer() then return end
	--spawn a cash bag for some extra dough if you're up close and personal
	cashBag = ents.Create("st_moneydrop")
	cashBag:SetModel("models/weapons/w_defuser.mdl")
	cashBag:SetPos(Vector(vic:GetPos().x, vic:GetPos().y, vic:GetPos().z + 100))
	cashBag:Spawn()
	--this is called after suicide removal, so...
	--if you have 1600, and you suicide, the bag will have 60 cR
	--it's nice :)
	cashBag.Contained = math.Round(vic:GetNWInt("stmoney") / 10)
	cashBag:PhysicsInit( SOLID_VPHYSICS )
	cashBag:SetMoveType( MOVETYPE_VPHYSICS )
	cashBag:SetSolid( SOLID_VPHYSICS )
	cashBag:GetPhysicsObject():Wake()
	if cashBag.Contained == 0 then cashBag:Remove() end
	
end)

--update our custom killfeed
hook.Add( "DoPlayerDeath", "NetKillFeed", function( vic, atk, tbl )

	if !atk:IsPlayer() or atk == vic then
		SDMKNotif( vic, vic )
	else
		SDMKNotif( atk, vic )
	end
	
	if vic == atk or !atk:IsPlayer() then
		--we're going to assume that the player fell or suicided
		msg = vic:Name() .. " died"
	else
		msg = atk:Name() .. " killed " .. vic:Name() .. " with " .. atk:GetActiveWeapon().PrintName
	end
	
	print(msg)

end )