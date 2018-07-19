AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

local phys, ef

function ENT:Initialize()
	self:SetModel("models/weapons/w_eq_flashbang_thrown.mdl") 
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetCollisionGroup(COLLISION_GROUP_NONE)
	self.NextImpact = 0
	phys = self:GetPhysicsObject()

	if phys and phys:IsValid() then
		phys:Wake()
	end
	
	self:GetPhysicsObject():SetBuoyancyRatio(0)
end

function ENT:Use(activator, caller)
	return false
end

function ENT:OnRemove()
	return false
end 

local vel, len, CT, pos, own

function ENT:PhysicsCollide(data, physobj)
	vel = physobj:GetVelocity()
	len = vel:Length()
	
	if len > 500 then -- let it roll
		physobj:SetVelocity(vel * 0.6) -- cheap as fuck, but it works
	end
	
	if len > 100 then
		CT = CurTime()
		
		if CT > self.NextImpact then
			self:EmitSound("weapons/flashbang/grenade_hit1.wav", 75, 100)
			self.NextImpact = CT + 0.1
		end
	end
end

function ENT:Fuse(t)
	timer.Simple(t, function()
		if self:IsValid() then
			pos = self:GetPos()
			own = self:GetOwner()
			
			--[[util.BlastDamage(self, own, pos, 384, 100)
			util.BlastDamage(self, own, pos, 768, 75)
			
			ef = EffectData()
			ef:SetOrigin(pos)
			ef:SetMagnitude(1)
			
			util.Effect("Explosion", ef)
			
			if self:WaterLevel() > 0 then
				ParticleEffect("water_explosion", pos, Angle(0, 0, 0), nil)
			else
				ParticleEffect("grenade_final", pos, Angle(0, 0, 0), nil)
			end]]--
			for _, pl in pairs(player.GetAll()) do

				local ang = (self.Entity:GetPos() - pl:GetShootPos()):GetNormalized():Angle()

				local tracedata = {}

				tracedata.start = pl:GetShootPos()
				tracedata.endpos = self.Entity:GetPos()
				tracedata.filter = pl
				local tr = util.TraceLine(tracedata)

				if (!tr.HitWorld) then
					local dist = pl:GetShootPos():Distance(self.Entity:GetPos())  
					local endtime = 5000 / (dist * 2)

					if (endtime > 6) then
						endtime = 6
					elseif (endtime < 1) then
						endtime = 0
					end

					simpendtime = math.floor(endtime)
					tenthendtime = math.floor((endtime - simpendtime) * 10)

					pl:SetNetworkedFloat("FLASHED_END", endtime + CurTime())

					pl:SetNetworkedFloat("FLASHED_END_START", CurTime())
				end
			end
			
			self:EmitSound("weapons/flashbang/flashbang_explode2.wav", 120, math.random(95, 105))
			self:Remove()
		end
	end)
end