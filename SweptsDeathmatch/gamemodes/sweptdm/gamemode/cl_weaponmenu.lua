-------------------------------
-------cl_weaponmenu.lua-------
--Realm: Client
--Purpose: Build and display the weapon market.
--Net usage: Receive a command to do the purpose.
-------------------------------

net.Receive("fas_menu_open", function()

	surface.PlaySound("buttons/weapon_confirm.wav")

	local winColor = Color(LocalPlayer():GetPlayerColor().x * 255, LocalPlayer():GetPlayerColor().y * 255, LocalPlayer():GetPlayerColor().z * 255, 200)
	
    local MarketWindow = vgui.Create( "DFrame" )
    MarketWindow:SetPos( ScrW() * 0.3525, ScrH() * 0.35 )
    MarketWindow:SetSize( ScrW() * 0.3, ScrH() * 0.3 )
    MarketWindow:SetTitle( "Throneco Mobile Market - " .. LocalPlayer():GetNWInt("stmoney") .. " cR" )
    MarketWindow:SetVisible( true )
    MarketWindow:SetDraggable( false )
    MarketWindow:ShowCloseButton( true )
	MarketWindow:Center()
    MarketWindow:MakePopup()
	MarketWindow.Paint = function( self, w, h ) 
		draw.RoundedBox( 0, 0, 0, w, h, winColor )
	end
	
	local WeaponsTab = vgui.Create("DPropertySheet", MarketWindow)
	WeaponsTab:Dock( FILL )
	
    local GunList = vgui.Create( "DListView", MarketWindow )
	GunList:Dock(FILL)
	GunList:AddColumn("Weapon")
	GunList:AddColumn("Price")
	GunList:AddColumn("Type")
	GunList:SetMultiSelect( false )
	GunList.OnRowSelected = function(a,b,c)
		surface.PlaySound("common/talk.wav")
	end
	
	local AttList = vgui.Create( "DListView", MarketWindow )
	AttList:Dock(FILL)
	AttList:AddColumn("Attachment")
	AttList:AddColumn("Price")
	AttList:AddColumn("Slot")
	AttList:SetMultiSelect( false )
	AttList.OnRowSelected = function(a,b,c)
		surface.PlaySound("common/talk.wav")
	end
	
	local UtiList = vgui.Create( "DListView", MarketWindow )
	UtiList:Dock(FILL)
	UtiList:AddColumn("Utility")
	UtiList:AddColumn("Price")
	UtiList:AddColumn("Quantity")
	UtiList:SetMultiSelect( false )
	UtiList.OnRowSelected = function(a,b,c)
		surface.PlaySound("common/talk.wav")
	end
	
	local LmgList = vgui.Create( "DListView", MarketWindow )
	LmgList:Dock(FILL)
	LmgList:AddColumn("Weapon")
	LmgList:AddColumn("Price")
	LmgList:SetMultiSelect( false )
	LmgList.OnRowSelected = function(a,b,c)
		surface.PlaySound("common/talk.wav")
	end

	WeaponsTab:AddSheet("Firearms", GunList, "icon16/gun.png")
	WeaponsTab:AddSheet("Attachments", AttList, "icon16/brick_add.png")
	WeaponsTab:AddSheet("Utilities", UtiList, "icon16/bomb.png")
	WeaponsTab:AddSheet("STANAG LMGs", LmgList, "icon16/attach.png")
	
	--inb4 "you dumbass did this all by hand"
	--no i used a script to assemble this
	--anyway, the third number is price
	--this was calculated by DPS * mag size
	--it's not always just, but i hope everything else balances out
	local fasweps = {
		{ "sdm_m21", "M21", 6270, "Sniper Rifle" },
		{ "sdm_ak12", "AK-12", 9600, "Assault Rifle" },
		{ "sdm_svd", "Dragunov SVD", 4200, "Sniper Rifle" },
		{ "sdm_an94", "AN-94", 19200, "Assault Rifle" },
		{ "sdm_sterling", "Sterling L2A3", 9384, "Submachine Gun" },
		{ "sdm_rpk", "RPK-47", 15300, "Light Machine Gun" },
		{ "sdm_m82", "M82", 4500, "Sniper Rifle" },
		{ "sdm_m14", "M14", 12540, "Battle Rifle" },
		{ "sdm_rk95", "Sako RK-95", 12240, "Assault Rifle" },
		{ "sdm_famas", "FAMAS F1", 9720, "Assault Rifle" },
		{ "sdm_toz34", "TOZ-34", 1584, "Shotgun" },
		{ "sdm_vollmer", "MC51B Vollmer", 17280, "Light Machine Gun" },
		{ "sdm_ak74", "AK-74", 9600, "Assault Rifle" },
		{ "sdm_deagle", "IMI Desert Eagle", 1540, "Handgun" },
		{ "sdm_galil", "IMI Galil", 11340, "Assault Rifle" },
		{ "sdm_ks23", "KS-23", 2400, "Shotgun" },
		{ "sdm_p226", "P226", 1729, "Handgun" },
		{ "sdm_g3", "G3A3", 6048, "Battle Rifle" },
		{ "sdm_sr25", "SR-25", 4950, "Sniper Rifle" },
		--{ "sdm_m1911", "M1911", 945, "Handgun" }, loadout gun
		{ "sdm_m4a1", "M4A1", 10935, "Assault Rifle" },
		{ "sdm_ak47", "AK-47", 10200, "Assault Rifle" },
		{ "sdm_ots33", "OTs-33 Pernach", 4050, "Handgun" },
		{ "sdm_mp5a5", "MP5A5", 7020, "Submachine Gun" },
		{ "sdm_mac11", "M11A1", 13312, "Submachine Gun" },
		{ "sdm_m16a2", "M16A2", 10944, "Assault Rifle" },
		{ "sdm_m24", "M24", 1855, "Sniper Rifle" },
		{ "sdm_ragingbull", "Raging Bull", 1160, "Handgun" },
		{ "sdm_sks", "SKS", 2280, "Carbine" },
		{ "sdm_g36c", "G36C", 9234, "Assault Rifle" },
		{ "sdm_sterling_mk7a4", "Sterling MK7A4", 4284, "Submachine Gun" },
		{ "sdm_m60e3", "M60E3", 45100, "Light Machine Gun" },
		{ "sdm_uzi", "IMI Uzi", 5184, "Submachine Gun" },
		{ "sdm_rem870", "Remington 870", 4800, "Shotgun" },
		{ "sdm_sg552", "SG 552", 5016, "Carbine" },
		{ "sdm_glock20", "Glock-20", 2100, "Handgun" },
		{ "sdm_sg550", "SG 550", 5643, "Assault Rifle" },
		{ "sdm_m3s90", "M3 Super 90", 5760, "Shotgun" },
		{ "sdm_mp5k", "MP5K", 4050, "Submachine Gun" },
		{ "sdm_mp5sd6", "MP5SD6", 8910, "Submachine Gun" },
		{ "sdm_pp19", "PP-19 Bizon", 9856, "Submachine Gun" }
	}
	
	--these i did by hand :(
	--prices were based off of usefulness and frequency
	--idk revise later maybe
	local fasatt = {
		{ "compm4", "CompM4", 1000, "Sight" },
		{ "c79", "ELCAN C79", 450, "Sight" },
		{ "eotech", "EoTech 553", 850, "Sight" },
		{ "foregrip", "Foregrip", 500, "Forearm" },
		{ "harrisbipod", "Harris Bipod", 450, "Forearm" },
		{ "leupold", "Leupold MK4", 1500, "Sight" },
		{ "m2120mag", "M21 20-Round Mag", 1250, "Magazine" },
		{ "mp5k30mag", "MP5K 30-Round Mag", 1400, "Magazine" },
		{ "pso1", "PSO-1", 1500, "Sight" },
		{ "sg55x30mag", "SG55X 30-Round Mag", 1600, "Magazine" },
		{ "sks20mag", "SKS 20-Round Mag", 1500, "Magazine" },
		{ "sks30mag", "SKS 30-Round Mag", 2000, "Magazine" },
		{ "suppressor", "Suppressor", 1900, "Barrel" },
		{ "tritiumsights", "Tritium Sights", 200, "Sight" },
		{ "uziwoodenstock", "Uzi Wooden Stock", 100, "Stock" }
	}
	
	--same formula as above
	--ifak can heal a grand total of 160 HP
	--i think i used 300 RPM for the DPS*mag formula
	local fasutil = {
		{ "sdm_m79", "M79 Grenade Launcher", 30000, "12 40MM Grenades" },
		{ "sdm_ifak", "Infantry First Aid Kit", 7200, "160 HP" },
		{ "sdm_m67", "M67 Frag Grenade", 15000, "12 M67 Grenades" },
		{ "sdm_ammobox", "Ammobox", 4000, "4 Ammoboxes" },
		{ "sdm_machete", "Machete", 425, "Melee Weapon" },
		{ "sdm_m84", "M84 Stun Grenade", 7000, "12 M84 Grenades" }
	}
	
	--no one likes these fucking guns but i added them anyway
	--same formula despite being shit
	local faslmg = {
		{ "sdm_m249", "M249", 13860 },
		{ "sdm_minimi", "MINIMI", 16200 }
	}
	
	function WeaponsTab:OnActiveTabChanged(o, n)
		surface.PlaySound("common/wpn_select.wav")
		GunList:ClearSelection()
		AttList:ClearSelection()
		UtiList:ClearSelection()
		LmgList:ClearSelection()
	end
	
	--add everything to their respective tables
	for k,v in pairs(fasweps) do
		GunList:AddLine(v[2], v[3], v[4])
	end
	
	for k,v in pairs(fasatt) do
		AttList:AddLine(v[2], v[3], v[4])
	end
	
	for k,v in pairs(fasutil) do
		UtiList:AddLine(v[2], v[3], v[4])
	end
	
	for k,v in pairs(faslmg) do
		LmgList:AddLine(v[2], v[3])
	end
	
	local ConfirmButton = vgui.Create( "DButton", MarketWindow )
	ConfirmButton:SetPos( ScrW() * 0.005, ScrH() * 0.0525)
	ConfirmButton:SetSize( ScrW() * 0.078125, ScrH() * 0.01851851851851851851851851851852 )
	ConfirmButton:SetText( "Purchase" )
	ConfirmButton:Dock(BOTTOM)
	ConfirmButton.DoClick = function()
		--if there are no selected items, just close the window
		--in practice this should never happen, but you never know
		if !GunList:GetSelectedLine() and !AttList:GetSelectedLine() and !UtiList:GetSelectedLine() and !LmgList:GetSelectedLine() then MarketWindow:Close() return end
		
		--the next bunch of lines are used to determine which table to draw items from
		local thislist = NoList
		local thistabl = notbl
		
		--before how i knew to use tables intelligently
		--this works, so i dont bother
		if AttList:GetSelectedLine() then
			thistabl = fasatt
			thislist = AttList
		elseif GunList:GetSelectedLine() then
			thistabl = fasweps
			thislist = GunList
		elseif UtiList:GetSelectedLine() then
			thistabl = fasutil
			thislist = UtiList
		elseif LmgList:GetSelectedLine() then
			thistabl = faslmg
			thislist = LmgList
		else
			--you fucked up royally and i just dont know what to do anymore
			print("What happened????")
		end
		
		--write the price and the weapon class
		net.Start("fas_givewep")
			net.WriteInt(thistabl[thislist:GetSelectedLine()][3], 32)
			net.WriteString(thistabl[thislist:GetSelectedLine()][1])
		net.SendToServer() --sv_weaponmenu
		
		MarketWindow:Close()
	end
	
end )