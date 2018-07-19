-----------------------------
-------cl_helpmenu.lua-------
--Realm: Client
--Purpose: Build and display the F1 menu.
--Net usage: Receive a command to do the purpose.
-----------------------------

net.Receive("help_menu_open", function()

	surface.PlaySound("garrysmod/ui_click.wav")

	local winColor = Color(LocalPlayer():GetPlayerColor().x * 255, LocalPlayer():GetPlayerColor().y * 255, LocalPlayer():GetPlayerColor().z * 255, 200)
	
    local HelpWindow = vgui.Create( "DFrame" )
    HelpWindow:SetPos( ScrW() * 0.3525, ScrH() * 0.35 )
    HelpWindow:SetSize( ScrW() * 0.3, ScrH() * 0.3 )
    HelpWindow:SetTitle( "SweptDM Help Menu" )
    HelpWindow:SetVisible( true )
    HelpWindow:SetDraggable( false )
    HelpWindow:ShowCloseButton( true )
	HelpWindow:Center()
    HelpWindow:MakePopup()
	HelpWindow.Paint = function( self, w, h ) 
		draw.RoundedBox( 0, 0, 0, w, h, winColor )
	end
	
	local InfoTab = vgui.Create("DPropertySheet", HelpWindow)
	InfoTab:Dock( FILL )
	
    local InfoLabel = vgui.Create( "DLabel", HelpWindow )
	InfoLabel:Dock(FILL)
	InfoLabel:SetFont("Trebuchet24")
	InfoLabel:SetContentAlignment(5)
	InfoLabel:SetText([[Welcome to SweptDM, or Swept's Deathmatch
	
	This is a project I've been working on on-and-off for the past few months.
	It's a simple deathmatch gamemode with weapon buying.
	I hope you enjoy playing!
	]])
	
	local PlayLabel = vgui.Create( "DLabel", HelpWindow )
	PlayLabel:Dock(FILL)
	PlayLabel:SetFont("Trebuchet24")
	PlayLabel:SetContentAlignment(5)
	PlayLabel:SetText([[SweptDM is simple.  Just kill people.
	
	No objectives, no combat rules, just straight killing.
	Kill to get some money, pick up bags to get more.
	Committing suicide will halve your money!
	]])
	
	local WeapsLabel = vgui.Create( "DLabel", HelpWindow )
	WeapsLabel:Dock(FILL)
	WeapsLabel:SetFont("Trebuchet24")
	WeapsLabel:SetContentAlignment(5)
	WeapsLabel:SetText([[There are plenty of weapons to choose from.
	
	They were priced based on DPS and mag size.
	These weapons disappear when you die, so be careful!
	Different weapons give you different amount of credits.
	]])

	local TeamLabel = vgui.Create( "DLabel", HelpWindow )
	TeamLabel:Dock(FILL)
	TeamLabel:SetFont("Trebuchet24")
	TeamLabel:SetContentAlignment(5)
	TeamLabel:SetText([[Ah, teaming, such a touchy topic.
	
	Alliances and teams are okay, just don't use them to abuse money.
	If the server you're playing on has a rule against teaming,
	tell the owner to hit F1.
	]])
	
	local CreditsLabel = vgui.Create( "DLabel", HelpWindow )
	CreditsLabel:Dock(FILL)
	CreditsLabel:SetFont("Trebuchet24")
	CreditsLabel:SetContentAlignment(5)
	CreditsLabel:SetText([[Thanks to lots of people for helping.
	
	spy - Original FA:S base and weapons.
	FA:S Team - Original models, sounds, and textures.
	Nate, TheHammerBruh, geogund26, Jason Sindoni, Dtrain, FloodTamer,
	darthcrob, PrivateSkelly, Parseamstress, BJammin, Jiraiya,
	The Rustler of Jimmies, and rtancos - Playtesting.
	]])
	
	InfoTab:AddSheet("Information", InfoLabel, "icon16/information.png")
	InfoTab:AddSheet("How to Play", PlayLabel, "icon16/help.png")
	InfoTab:AddSheet("Weapons", WeapsLabel, "icon16/gun.png")
	InfoTab:AddSheet("Teaming", TeamLabel, "icon16/group.png")
	InfoTab:AddSheet("Credits", CreditsLabel, "icon16/heart.png")
	
	local ConfirmButton = vgui.Create( "DButton", HelpWindow )
	ConfirmButton:SetPos( ScrW() * 0.005, ScrH() * 0.0525)
	ConfirmButton:SetSize( ScrW() * 0.078125, ScrH() * 0.01851851851851851851851851851852 )
	ConfirmButton:SetText( "Okay!" )
	ConfirmButton:Dock(BOTTOM)
	ConfirmButton.DoClick = function()
		HelpWindow:Close()
	end
	
end )