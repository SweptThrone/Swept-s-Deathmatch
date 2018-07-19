-- init.lua
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

ENT.Contained = 100
ENT.pickup = false

function ENT:Initialize()

	self:SetModel("models/weapons/w_defuser.mdl")
	self:SetMoveType( MOVETYPE_VPHYSICS )
	self:SetSolid( SOLID_VPHYSICS )
	self:SetColor(Color(200,255,200,255))
	if ( SERVER ) then self:PhysicsInit( SOLID_VPHYSICS ) end
	local phys = self:GetPhysicsObject()
	if ( IsValid( phys ) ) then phys:Wake() end
	self:SetTrigger(true)
	
	timer.Simple(300, function()
		if IsValid(self) then
			print("A money bag of " .. self.Contained .. " cR just despawned!")
			self:Remove()
		end
	end)
	
end

function ENT:StartTouch(ent)
	
	local ply = ent

	if ply:GetClass() != "player" then return end
			
	ply:SetNWInt("stmoney", ply:GetNWInt("stmoney") + self.Contained)
			
	ply:SetNWString("st_moneynotif", "Gained " .. self.Contained .. " cR from a money bag.")
	timer.Remove(ply:Name() .. "st_notif_reset")
	timer.Create(ply:Name() .. "st_notif_reset", 5, 1, function() ply:SetNWString("st_moneynotif", "") end)
			
	self:EmitSound("items/gift_pickup.wav")
	self:Remove()
			
end