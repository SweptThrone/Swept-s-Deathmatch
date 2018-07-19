------------------------------
-------cl_modelmenu.lua-------
--Realm: Client
--Purpose: Build and display the F2 menu.
--Net usage: Receive a command to do the purpose.
------------------------------

--use this function to reduce code repetition
function STModel( mdl )
	--if there is no cooldown timer, we can change
	if !timer.Exists("st_model_delay") then
		net.Start("st_model_changed")
			net.WriteString( mdl )
		net.SendToServer()
		surface.PlaySound("garrysmod/content_downloaded.wav")
		chat.AddText( Color( 0, 255, 0), "Your model was successfully changed!" )
		timer.Create("st_model_delay", 120, 1, function() timer.Remove("st_model_delay") end)
	--otherwise, warn the player
	else
		surface.PlaySound("garrysmod/ui_return.wav")
		chat.AddText( Color( 255, 0, 0), "Please wait " .. math.Round(timer.TimeLeft("st_model_delay")) .. " seconds before changing your model again." )
	end
end

net.Receive("model_menu_open", function()
	
	--sounds are nice
	surface.PlaySound("buttons/blip1.wav")
	
	local winColor = Color(LocalPlayer():GetPlayerColor().x * 255, LocalPlayer():GetPlayerColor().y * 255, LocalPlayer():GetPlayerColor().z * 255, 200)
	
    local ModelWindow = vgui.Create( "DFrame" )
    ModelWindow:SetPos( ScrW() * 0.3525, ScrH() * 0.35 )
    ModelWindow:SetSize( 286, 168 )
    ModelWindow:SetTitle( "SweptDM Model Picker" )
    ModelWindow:SetVisible( true )
    ModelWindow:SetDraggable( false )
    ModelWindow:ShowCloseButton( true )
    ModelWindow:MakePopup()
	ModelWindow:Center()
	ModelWindow.Paint = function( self, w, h ) 
		draw.RoundedBox( 0, 0, 0, w, h, winColor )
	end
	
	--everything from here down just adds model panels
	local ModelGrid = vgui.Create( "DGrid", ModelWindow )
	ModelGrid:SetPos( 6 , 28 )
	ModelGrid:SetCols(4)
	ModelGrid:SetColWide(70)
	ModelGrid:SetRowHeight(70)
	
	local ArcticModel = vgui.Create( "SpawnIcon", ModelWindow )
	ArcticModel:SetModel( "models/player/arctic.mdl" )
	ArcticModel.DoClick = function()
		STModel( "models/player/arctic.mdl" )
		ModelWindow:Close()
	end
	ModelGrid:AddItem( ArcticModel )
	
	local GuerillaModel = vgui.Create( "SpawnIcon", ModelWindow )
	GuerillaModel:SetModel( "models/player/guerilla.mdl" )
	GuerillaModel.DoClick = function()
		STModel( "models/player/guerilla.mdl" )
		ModelWindow:Close()
	end
	ModelGrid:AddItem( GuerillaModel )
	
	local LeetModel = vgui.Create( "SpawnIcon", ModelWindow )
	LeetModel:SetModel( "models/player/leet.mdl" )
	LeetModel.DoClick = function()
		STModel( "models/player/leet.mdl" )
		ModelWindow:Close()
	end
	ModelGrid:AddItem( LeetModel )
	
	local PhoenixModel = vgui.Create( "SpawnIcon", ModelWindow )
	PhoenixModel:SetModel( "models/player/phoenix.mdl" )
	PhoenixModel.DoClick = function()
		STModel( "models/player/phoenix.mdl" )
		ModelWindow:Close()
	end
	ModelGrid:AddItem( PhoenixModel )
	
	
	local GasmaskModel = vgui.Create( "SpawnIcon", ModelWindow )
	GasmaskModel:SetModel( "models/player/gasmask.mdl" )
	GasmaskModel.DoClick = function()
		STModel( "models/player/gasmask.mdl" )
		ModelWindow:Close()
	end
	ModelGrid:AddItem( GasmaskModel )
	
	local RiotModel = vgui.Create( "SpawnIcon", ModelWindow )
	RiotModel:SetModel( "models/player/riot.mdl" )
	RiotModel.DoClick = function()
		STModel( "models/player/riot.mdl" )
		ModelWindow:Close()
	end
	ModelGrid:AddItem( RiotModel )
	
	local SWATModel = vgui.Create( "SpawnIcon", ModelWindow )
	SWATModel:SetModel( "models/player/swat.mdl" )
	SWATModel.DoClick = function()
		STModel( "models/player/swat.mdl" )
		ModelWindow:Close()
	end
	ModelGrid:AddItem( SWATModel )
	
	local UrbanModel = vgui.Create( "SpawnIcon", ModelWindow )
	UrbanModel:SetModel( "models/player/urban.mdl" )
	UrbanModel.DoClick = function()
		STModel( "models/player/urban.mdl" )
		ModelWindow:Close()
	end
	ModelGrid:AddItem( UrbanModel )
	
end )