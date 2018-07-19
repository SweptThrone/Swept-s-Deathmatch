SWEP.Type = "lmg"

if SERVER then
	AddCSLuaFile("shared.lua")
SWEP.ExtraMags = 3
end


SWEP.PrintName = "M249"
SWEP.Slot = 3
SWEP.SlotPos = 0
	
SWEP.AimPos = Vector(-3.516, -2.974, 2.01)
SWEP.AimAng = Vector(0.5, 0, 0)
	
SWEP.SprintPos = Vector(1.5, -7, -1.69)
SWEP.SprintAng = Vector(15.033, 34, 0)
	
SWEP.AimPos_Bipod = Vector(-2.591, -2.874, 1.215)
SWEP.AimAng_Bipod = Vector(0.5, 0, 0)
		
SWEP.CompM4Pos = Vector(-3.516, -4, 1.565)
SWEP.CompM4Ang = Vector(0, 0, 0)

SWEP.CompM4Pos_Bipod = Vector(-2.591, -4.874, 0.775)
SWEP.CompM4Ang_Bipod = Vector(0, 0, 0)

SWEP.ELCANPos = Vector(-3.515, -2.64, 1.1)
SWEP.ELCANAng = Vector(-0.6, 0, 0)
	
SWEP.ELCANPos_Bipod = Vector(-2.591, -1.474, 0.275)
SWEP.ELCANAng_Bipod = Vector(-0.6, 0, 0)

SWEP.EoTechPos_Bipod = Vector(-2.591, -3.874, 0.315)
SWEP.EoTechAng_Bipod = Vector(0, 0, 0)
	
SWEP.EoTechPos = Vector(-3.516, -5, 1.162)
SWEP.EoTechAng = Vector(0, 0, 0)


SWEP.MuzzleEffect = "muzzleflash_ak47"
SWEP.Shell = "5.56x45"
SWEP.YawMod = 0.1
SWEP.AttachmentBGs = {["suppressor"] = {bg = 4, sbg = 1},
		["compm4"] = {bg = 3, sbg = 1},
		["eotech"] = {bg = 3, sbg = 2},
		["c79"] = {bg = 3, sbg = 3},	
		["stanagx30mag"] = {bg = 6, sbg = 2}}


SWEP.Attachments = {
	[2] = {header = "Barrel", y = -100, atts = {"suppressor"}},
	[1] = {header = "Sight", sight = true, x = 800, y = -200, atts = {"c79", "compm4", "eotech"}},
	[3] = {header = "Magazine", x = 300, y = 50, atts = {"stanagx30mag"}}}

SWEP.BulletLength = 5.56
SWEP.CaseLength = 45
SWEP.EmptySound = Sound("weapons/empty_assaultrifles.wav")

SWEP.Anims = {}
SWEP.Anims.Draw_First = "deploy_first01"
SWEP.Anims.Draw = "deploy"
SWEP.Anims.Draw_Empty = "Deploy"
SWEP.Anims.Holster = "holster"
SWEP.Anims.Fire = "fire1"
SWEP.Anims.Fire_Last = "Fire_empty"
SWEP.Anims.Fire_Bipod_Last = "bipod_fire_empty"
SWEP.Anims.Fire_Bipod = "bipod_Fire1"
SWEP.Anims.Fire_Aiming = "fire1_scoped"
SWEP.Anims.Fire_Bipod_Aiming = "bipod_fire1_scoped"
SWEP.Anims.Idle = "idle"
SWEP.Anims.Idle_Aim = "idle_scoped"
SWEP.Anims.Fire_Aiming_Last = "fire_empty_scoped"
SWEP.Anims.Reload = "reload_stanag"
SWEP.Anims.Reload_Bipod = "bipod_Reload_stanag"
SWEP.Anims.Reload_Nomen = "reload_stanag_nomen"
SWEP.Anims.Reload_Bipod_Nomen = "bipod_reload_stanag_nomen"
SWEP.Anims.Reload_Empty = "reload_stanag_empty"
SWEP.Anims.Reload_Bipod_Empty = "bipod_reload_stanag_empty"
SWEP.Anims.Reload_Empty_Nomen = "reload_stanag_empty_nomen"
SWEP.Anims.Reload_Bipod_Empty_Nomen = "bipod_reload_stanag_empty_nomen"
SWEP.Anims.Bipod_Deploy = "bipod_down"
SWEP.Anims.Bipod_UnDeploy = "bipod_up"

SWEP.Sounds = {}

SWEP.Sounds["deploy_first01"] = {[1] = {time = .05, sound = Sound("Generic_Cloth")},
	[2] = {time = 0.8, sound = Sound("FAS2_M24.Butt")},
	[3] = {time = 1.17, sound = Sound("FAS2_M24.Butt")},
	[4] = {time = 1.3, sound = Sound("Generic_Cloth")}}

SWEP.Sounds["bipod_down"] = {[1] = {time = 0, sound = Sound("Generic_Cloth")},
	[2] = {time = 0.09, sound = Sound("FAS2_M249.Bipod")}}
	
SWEP.Sounds["bipod_up"] = {[1] = {time = 0, sound = Sound("Generic_Cloth")},
	[2] = {time = 0.45, sound = Sound("Grip_Medium")}}
	
SWEP.Sounds["reload_stanag"] = {[1] = {time = 0.07, sound = Sound("MagPouch_AR")},
	[2] = {time = 0.7, sound = Sound("Weapon_AK47.MagOut")},
	[3] = {time = 1, sound = Sound("MagPouch_AR")},
	[4] = {time = 1.31, sound = Sound("Generic_Cloth")},
	[5] = {time = 1.52, sound = Sound("MagPouch_AR")},
	[6] = {time = 2, sound = Sound("Weapon_AK47.MagIn")},
	[7] = {time = 2.15, sound = Sound("Generic_Cloth")}}
	
SWEP.Sounds["bipod_Reload_stanag"] = {[1] = {time = 0.07, sound = Sound("MagPouch_AR")},
	[2] = {time = 0.44, sound = Sound("Weapon_AK47.MagOut")},
	[3] = {time = 0.85, sound = Sound("MagPouch_AR")},
	[4] = {time = 1.01, sound = Sound("Generic_Cloth")},
	[5] = {time = 1.25, sound = Sound("MagPouch_AR")},
	[6] = {time = 1.44, sound = Sound("Weapon_AK47.MagIn")},
	[7] = {time = 1.75, sound = Sound("Generic_Cloth")}}
	
SWEP.Sounds["reload_stanag_nomen"] = {[1] = {time = 0.05, sound = Sound("MagPouch_AR")},
	[2] = {time = 0.5, sound = Sound("Weapon_AK47.MagOut")},
	[3] = {time = 0.8, sound = Sound("MagPouch_AR")},
	[4] = {time = 1.11, sound = Sound("Generic_Cloth")},
	[5] = {time = 1.32, sound = Sound("MagPouch_AR")},
	[6] = {time = 1.55, sound = Sound("Weapon_AK47.MagIn")},
	[7] = {time = 1.7, sound = Sound("Generic_Cloth")}}
	
SWEP.Sounds["bipod_reload_stanag_nomen"] = {[1] = {time = 0.05, sound = Sound("MagPouch_AR")},
	[2] = {time = 0.35, sound = Sound("Weapon_AK47.MagOut")},
	[3] = {time = 0.6, sound = Sound("MagPouch_AR")},
	[4] = {time = 0.71, sound = Sound("Generic_Cloth")},
	[5] = {time = 0.82, sound = Sound("MagPouch_AR")},
	[6] = {time = 1.05, sound = Sound("Weapon_AK47.MagIn")},
	[7] = {time = 1.2, sound = Sound("Generic_Cloth")}}
	
SWEP.Sounds["reload_stanag_empty"] = {[1] = {time = 0.07, sound = Sound("MagPouch_AR")},
	[2] = {time = 0.35, sound = Sound("FAS2_M60.Charge")},
	[3] = {time = 0.95, sound = Sound("Generic_Cloth")},
	[4] = {time = 1.69, sound = Sound("Weapon_AK47.MagOut")},
	[5] = {time = 1.8, sound = Sound("MagPouch_AR")},
	[6] = {time = 2.452, sound = Sound("MagPouch_AR")},
	[7] = {time = 2.95, sound = Sound("Weapon_AK47.MagIn")},
	[8] = {time = 3.15, sound = Sound("Generic_Cloth")}}
	
SWEP.Sounds["bipod_reload_stanag_empty"] = {[1] = {time = 0.07, sound = Sound("MagPouch_AR")},
	[2] = {time = 0.35, sound = Sound("FAS2_M60.Charge")},
	[3] = {time = 0.95, sound = Sound("Generic_Cloth")},
	[4] = {time = 1.39, sound = Sound("Weapon_AK47.MagOut")},
	[5] = {time = 1.5, sound = Sound("MagPouch_AR")},
	[6] = {time = 1.81, sound = Sound("Generic_Cloth")},
	[7] = {time = 2.152, sound = Sound("MagPouch_AR")},
	[8] = {time = 2.45, sound = Sound("Weapon_AK47.MagIn")},
	[9] = {time = 2.65, sound = Sound("Generic_Cloth")}}

SWEP.Sounds["bipod_reload_stanag_empty_nomen"] = {[1] = {time = 0.07, sound = Sound("MagPouch_AR")},
	[2] = {time = 0.15, sound = Sound("FAS2_M60.Charge")},
	[3] = {time = 0.45, sound = Sound("Generic_Cloth")},
	[4] = {time = 0.89, sound = Sound("Weapon_AK47.MagOut")},
	[5] = {time = 1, sound = Sound("MagPouch_AR")},
	[6] = {time = 1.21, sound = Sound("Generic_Cloth")},
	[7] = {time = 1.32, sound = Sound("MagPouch_AR")},
	[8] = {time = 1.69, sound = Sound("Weapon_AK47.MagIn")},
	[9] = {time = 1.85, sound = Sound("Generic_Cloth")}}
	
SWEP.Sounds["reload_stanag_empty_nomen"] = {[1] = {time = 0.07, sound = Sound("MagPouch_AR")},
	[2] = {time = 0.25, sound = Sound("FAS2_M60.Charge")},
	[3] = {time = 0.65, sound = Sound("Generic_Cloth")},
	[4] = {time = 1.19, sound = Sound("Weapon_AK47.MagOut")},
	[5] = {time = 1.3, sound = Sound("MagPouch_AR")},
	[6] = {time = 1.51, sound = Sound("Generic_Cloth")},
	[7] = {time = 1.82, sound = Sound("MagPouch_AR")},
	[8] = {time = 2.19, sound = Sound("Weapon_AK47.MagIn")},
	[9] = {time = 2.25, sound = Sound("Generic_Cloth")}}
	
SWEP.FireModes = {"auto", "semi"}

SWEP.Category = "FA:S 2 Weapons"
SWEP.Base = "sdm_base"
SWEP.Author            = "Spy"
SWEP.Contact        = ""
SWEP.Purpose        = ""

SWEP.ViewModelFOV    = 50
SWEP.ViewModelFlip    = false

SWEP.Spawnable            = true
SWEP.AdminSpawnable        = true

SWEP.VM = "models/weapons/view/support/m249.mdl"
SWEP.WM = "models/weapons/w_m249.mdl"
SWEP.WorldModel   = "models/weapons/w_m249_machine_gun.mdl"

-- Primary Fire Attributes --
SWEP.Primary.ClipSize        = 0
SWEP.Primary.DefaultClip    = 50
SWEP.Primary.Automatic       = true    
SWEP.Primary.Ammo             = "5.56x45MM"
 
-- Secondary Fire Attributes --
SWEP.Secondary.ClipSize        = -1
SWEP.Secondary.DefaultClip    = -1
SWEP.Secondary.Automatic       = false
SWEP.Secondary.Ammo         = "none"

-- Deploy related
SWEP.FirstDeployTime = 1.65
SWEP.DeployTime = 0.65
SWEP.DeployAnimSpeed = 0.8
SWEP.HolsterTime = 0.45

-- Firing related
SWEP.Shots = 1
SWEP.FireDelay = 0.0895
SWEP.Damage = 42
SWEP.FireSound = Sound("FAS2_M249")
SWEP.FireSound_Suppressed = Sound("FAS2_M249_S")

-- Accuracy related
SWEP.HipCone = 0.05521
SWEP.AimCone = 0.00352
SWEP.SpreadPerShot = 0.021
SWEP.MaxSpreadInc = 0.0355
SWEP.SpreadCooldown = 0.05
SWEP.VelocitySensitivity = 1.4
SWEP.AimFOV = 10

-- Recoil related
SWEP.ViewKick = 0.97
SWEP.Recoil = 1.08

-- Reload related
SWEP.ReloadTime = 2.65
SWEP.ReloadTime_Nomen = 1.98
SWEP.ReloadTime_Empty = 3.65
SWEP.ReloadTime_Empty_Nomen = 2.6
SWEP.CantChamber = true
SWEP.ReloadTime_Bipod = 1.62
SWEP.ReloadTime_Bipod_Nomen = 1.48
SWEP.ReloadTime_Bipod_Empty = 2.74
SWEP.ReloadTime_Bipod_Empty_Nomen = 1.7

-- Misc
SWEP.InstalledBipod = true
SWEP.BipodAngleLimitYaw = 30
SWEP.BipodAngleLimitPitch = 10
SWEP.BipodDeployTime = 0.93
SWEP.BipodUndeployTime = 0.93

if CLIENT then
	local x, y, old, ang
	local sight = surface.GetTextureID("models/weapons/view/accessories/elcan_reticle")
	local lens = surface.GetTextureID("VGUI/fas2/lense")
	local lensring = surface.GetTextureID("VGUI/fas2/lensring")
	local cd, alpha = {}, 0.5
	local Ini = true
	
	function SWEP:DrawRenderTarget()
		if self.AimPos != self.ELCANPos then
			return
		end
		
		if self.dt.Status == FAS_STAT_ADS then
			alpha = math.Approach(alpha, 0, FrameTime() * 5)
		else
			alpha = math.Approach(alpha, 1, FrameTime() * 5)
		end
			
		x, y = ScrW(), ScrH()
		old = render.GetRenderTarget()
		
		ang = self.Wep:GetAttachment(self.Wep:LookupAttachment("muzzle")).Ang
		ang:RotateAroundAxis(ang:Forward(), -90)
		ang:RotateAroundAxis(ang:Right(), 0.55)
		
		cd.angles = ang
		cd.origin = self.Owner:GetShootPos()
		cd.x = 0
		cd.y = 0
		cd.w = 512 
		cd.h = 512
		cd.fov = 5.6
		cd.drawviewmodel = false
		cd.drawhud = false
		render.SetRenderTarget(self.ScopeRT)
		render.SetViewPort(0, 0, 512, 512)
			
			if alpha < 1 or Ini then
				render.RenderView(cd)
				Ini = false
			end
			
			ang = self.Owner:EyeAngles()
			ang.p = ang.p + self.BlendAng.x
			ang.y = ang.y + self.BlendAng.y
			ang.r = ang.r + self.BlendAng.z
			ang = -ang:Forward()
			local light = render.ComputeLighting(self.Owner:GetShootPos(), ang)
			
			cam.Start2D()
				surface.SetDrawColor(255, 255, 255, 255)
				surface.SetTexture(lensring)
				surface.DrawTexturedRect(0, 0, 512, 512)
				surface.SetDrawColor(255, 255, 255, 255)
				surface.SetTexture(sight)
				surface.DrawTexturedRect(0, 0, 512, 512)
				surface.SetDrawColor(150 * light[1], 150 * light[2], 150 * light[3], 255 * alpha)
				surface.SetTexture(lens)
				surface.DrawTexturedRect(0, 0, 512, 512)
			cam.End2D()
			
		render.SetViewPort(0, 0, x, y)
		render.SetRenderTarget(old)
			
		if self.PSO1Glass then
			self.PSO1Glass:SetTexture("$basetexture", self.ScopeRT)
		end
	end
end