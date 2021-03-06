SWEP.Type = "lmg"

if SERVER then
	AddCSLuaFile("shared.lua")
SWEP.ExtraMags = 3
end


SWEP.PrintName = "RPK-47"
SWEP.Slot = 3
SWEP.SlotPos = 0
	
SWEP.AimPos = Vector(-1.872, -4.874, 0.587)
SWEP.AimAng = Vector(0.048, 0, 0)
	
SWEP.AimPos_Bipod = Vector(-1.22, -4.874, 0.9)
SWEP.AimAng_Bipod = Vector(0.048, 0, 0)
		
SWEP.PSO1Pos = Vector(-1.765, -2.217, 0.164)
SWEP.PSO1Ang = Vector(0, 0, 0)
	
SWEP.PSO1Pos_Bipod = Vector(-1.124, -2.7, 0.475)
SWEP.PSO1Ang_Bipod = Vector(0, 0, 0)
	
SWEP.MuzzleEffect = "muzzleflash_ak47"
SWEP.Shell = "7.62x39"
SWEP.YawMod = 0.1
SWEP.AttachmentBGs = {["pso1"] = {bg = 3, sbg = 1},
		["suppressor"] = {bg = 2, sbg = 1}}	
		


SWEP.Attachments = {
	[1] = {header = "Sight", sight = true, x = 800, y = -50, atts = {"pso1"}},
	[2] = {header = "Barrel", y = -200, atts = {"suppressor"}}}

SWEP.BulletLength = 7.62
SWEP.CaseLength = 39
SWEP.EmptySound = Sound("weapons/empty_assaultrifles.wav")

SWEP.Anims = {}
SWEP.Anims.Draw_First = "deploy_first"
SWEP.Anims.Draw = "deploy"
SWEP.Anims.Holster = "holster"
SWEP.Anims.Fire = {"fire1", "fire2", "fire3"}
SWEP.Anims.Fire_Bipod = {"fire1_bipod", "fire2_bipod", "fire3_bipod"}
SWEP.Anims.Fire_Aiming = {"fire1_scoped", "fire2_scoped", "fire3_scoped"}
SWEP.Anims.Fire_Bipod_Aiming = {"fire1_bipod_scoped", "fire2_bipod_scoped"}
SWEP.Anims.Idle = "idle"
SWEP.Anims.Idle_Aim = "idle_scoped"
SWEP.Anims.Reload = "reload"
SWEP.Anims.Reload_Bipod = "reload_bipod"
SWEP.Anims.Reload_Nomen = "reload_nomen"
SWEP.Anims.Reload_Bipod_Nomen = "reload_nomen_bipod"
SWEP.Anims.Reload_Empty = "reload_empty"
SWEP.Anims.Reload_Bipod_Empty = "reload_empty_bipod"
SWEP.Anims.Reload_Empty_Nomen = "reload_empty_nomen"
SWEP.Anims.Reload_Bipod_Empty_Nomen = "reload_empty_nomen_bipod"
SWEP.Anims.Bipod_Deploy = "bipod_down"
SWEP.Anims.Bipod_UnDeploy = "bipod_up"

SWEP.Sounds = {}

SWEP.Sounds["deploy_first"] = {
	[1] = {time = 0.85, sound = Sound("FAS2_RPK.MagIn")},
	[2] = {time = 1.8, sound = Sound("FAS2_RPK.MagInPartial")},
	[3] = {time = 3, sound = Sound("FAS2_RPK.BoltForward")},
	[4] = {time = 3.5, sound = Sound("FAS2_RPK.BoltBack")},
	[5] = {time = 3.7, sound = Sound("FAS2_RPK.BoltForward")}
}

SWEP.Sounds["bipod_down"] = {[1] = {time = 0, sound = Sound("Generic_Cloth")},
	[2] = {time = 0.6, sound = Sound("FAS2_RPK.BipodOpen")}}
	
SWEP.Sounds["bipod_up"] = {[1] = {time = 0, sound = Sound("Generic_Cloth")}}
	
SWEP.Sounds["reload"] = {[1] = {time = 0.85, sound = Sound("FAS2_RPK.MagOut")},
	[2] = {time = 1.5, sound = Sound("MagPouch_AR")},
	[3] = {time = 2.2, sound = Sound("FAS2_RPK.MagInPartial")},
	[4] = {time = 2.4, sound = Sound("FAS2_RPK.MagIn")}}
	
SWEP.Sounds["reload_bipod"] = {[1] = {time = 0.6, sound = Sound("FAS2_RPK.MagOut")},
	[2] = {time = 1.1, sound = Sound("MagPouch_AR")},
	[3] = {time = 1.6, sound = Sound("FAS2_RPK.MagInPartial")},
	[4] = {time = 1.75, sound = Sound("FAS2_RPK.MagIn")}}
	
SWEP.Sounds["reload_nomen"] = {[1] = {time = 0.6, sound = Sound("MagPouch_AR")},
	[2] = {time = 1.2, sound = Sound("FAS2_RPK.MagOut")},
	[3] = {time = 1.4, sound = Sound("FAS2_RPK.MagInPartial")},
	[4] = {time = 1.6, sound = Sound("FAS2_RPK.MagIn")}}
	
SWEP.Sounds["reload_nomen_bipod"] = {[1] = {time = 0.4, sound = Sound("FAS2_RPK.MagOut")},
	[2] = {time = 0.9, sound = Sound("MagPouch_AR")},
	[3] = {time = 1.2, sound = Sound("FAS2_RPK.MagInPartial")},
	[4] = {time = 1.3, sound = Sound("FAS2_RPK.MagIn")}}
	
SWEP.Sounds["reload_empty"] = {[1] = {time = 1, sound = Sound("FAS2_RPK.MagOutEmpty")},
	[2] = {time = 1.5, sound = Sound("MagPouch_AR")},
	[3] = {time = 2.9, sound = Sound("FAS2_RPK.MagInPartial")},
	[4] = {time = 3.1, sound = Sound("FAS2_RPK.MagIn")},
	[5] = {time = 4.45, sound = Sound("FAS2_RPK.BoltBack")},
	[6] = {time = 4.75, sound = Sound("FAS2_RPK.BoltForward")}}
	
SWEP.Sounds["reload_empty_bipod"] = {[1] = {time = 0.6, sound = Sound("FAS2_RPK.MagOutEmpty")},
	[2] = {time = 1.2, sound = Sound("MagPouch_AR")},
	[3] = {time = 1.6, sound = Sound("FAS2_RPK.MagInPartial")},
	[4] = {time = 1.75, sound = Sound("FAS2_RPK.MagIn")},
	[5] = {time = 3, sound = Sound("FAS2_RPK.BoltBack")},
	[6] = {time = 3.15, sound = Sound("FAS2_RPK.BoltForward")}}

SWEP.Sounds["reload_empty_nomen_bipod"] = {[1] = {time = 0.4, sound = Sound("FAS2_RPK.MagOutEmpty")},
	[2] = {time = 0.9, sound = Sound("MagPouch_AR")},
	[3] = {time = 1.2, sound = Sound("FAS2_RPK.MagInPartial")},
	[4] = {time = 1.3, sound = Sound("FAS2_RPK.MagIn")},
	[5] = {time = 2.2, sound = Sound("FAS2_RPK.BoltBack")},
	[6] = {time = 2.35, sound = Sound("FAS2_RPK.BoltForward")}}
	
SWEP.Sounds["reload_empty_nomen"] = {[1] = {time = 0.6, sound = Sound("MagPouch_AR")},
	[2] = {time = 1, sound = Sound("FAS2_RPK.MagOutEmptyNomen")},
	[3] = {time = 1.4, sound = Sound("FAS2_RPK.MagInPartial")},
	[4] = {time = 1.6, sound = Sound("FAS2_RPK.MagIn")},
	[5] = {time = 2.15, sound = Sound("FAS2_RPK.BoltBack")},
	[6] = {time = 2.35, sound = Sound("FAS2_RPK.BoltForward")}}
	
SWEP.FireModes = {"auto", "semi"}

SWEP.Category = "FA:S 2 Weapons"
SWEP.Base = "sdm_base"
SWEP.Author            = "Spy"
SWEP.Contact        = ""
SWEP.Purpose        = ""

SWEP.ViewModelFOV    = 60
SWEP.ViewModelFlip    = false

SWEP.Spawnable            = true
SWEP.AdminSpawnable        = true

SWEP.VM = "models/weapons/view/support/rpk.mdl"
SWEP.WM = "models/weapons/w_ak47.mdl"
SWEP.WorldModel   = "models/weapons/w_rif_ak47.mdl"

-- Primary Fire Attributes --
SWEP.Primary.ClipSize        = 45
SWEP.Primary.DefaultClip    = 90
SWEP.Primary.Automatic       = true    
SWEP.Primary.Ammo             = "7.62x39MM"
 
-- Secondary Fire Attributes --
SWEP.Secondary.ClipSize        = -1
SWEP.Secondary.DefaultClip    = -1
SWEP.Secondary.Automatic = true --       = false
SWEP.Secondary.Ammo         = "none"

-- Deploy related
SWEP.FirstDeployTime = 4
SWEP.DeployTime = 0.7
SWEP.DeployAnimSpeed = 0.75
SWEP.HolsterTime = 0.3

-- Firing related
SWEP.Shots = 1
SWEP.FireDelay = 0.1
SWEP.Damage = 34
SWEP.FireSound = Sound("FAS2_RPK")
SWEP.FireSound_Suppressed = Sound("FAS2_RPK_S")

-- Accuracy related
SWEP.HipCone = 0.053
SWEP.AimCone = 0.004
SWEP.SpreadPerShot = 0.01
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadCooldown = 0.18
SWEP.VelocitySensitivity = 2
SWEP.AimFOV = 5

-- Recoil related
SWEP.ViewKick = 1.4
SWEP.Recoil = 1

-- Reload related
SWEP.ReloadTime = 2.7
SWEP.ReloadTime_Nomen = 2.2
SWEP.ReloadTime_Empty = 5.15
SWEP.ReloadTime_Empty_Nomen = 2.65

SWEP.ReloadTime_Bipod = 2.15
SWEP.ReloadTime_Bipod_Nomen = 1.5
SWEP.ReloadTime_Bipod_Empty = 3.3
SWEP.ReloadTime_Bipod_Empty_Nomen = 2.45

-- Misc
SWEP.InstalledBipod = true
SWEP.BipodAngleLimitYaw = 30
SWEP.BipodAngleLimitPitch = 10
SWEP.BipodDeployTime = 0.7
SWEP.BipodUndeployTime = 0.7

if CLIENT then
	local x, y, old, ang
	local sight = surface.GetTextureID("sprites/scope_pso_illum")
	local sight2 = surface.GetTextureID("sprites/scope_pso")
	local lens = surface.GetTextureID("VGUI/fas2/lense")
	local lensring = surface.GetTextureID("VGUI/fas2/lensring")
	local cd, alpha = {}, 0.5
	local Ini = true
	
	function SWEP:DrawRenderTarget()
		if self.AimPos != self.PSO1Pos and self.AimPos != self.PSO1Pos_Bipod then
			return
		end
		
		if self.dt.Status == FAS_STAT_ADS and not self.Peeking then
			alpha = math.Approach(alpha, 0, FrameTime() * 5)
		else
			alpha = math.Approach(alpha, 1, FrameTime() * 5)
		end
			
		x, y = ScrW(), ScrH()
		old = render.GetRenderTarget()
		
		ang = self.Wep:GetAttachment(self.Wep:LookupAttachment("muzzle")).Ang
		ang:RotateAroundAxis(ang:Forward(), -90)
		
		cd.angles = ang
		cd.origin = self.Owner:GetShootPos()
		cd.x = 0
		cd.y = 0
		cd.w = 512 
		cd.h = 512
		cd.fov = 4
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
				surface.SetTexture(sight2)
				surface.DrawTexturedRect(1, 1, 512, 512)
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