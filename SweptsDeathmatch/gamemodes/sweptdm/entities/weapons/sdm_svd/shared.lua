SWEP.Type = "sniper"

if SERVER then
	AddCSLuaFile("shared.lua")
	SWEP.ExtraMags = 6
end


SWEP.PrintName = "Dragunov SVD"
SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.YawMod = 0.1
	
SWEP.AimPos = Vector(-2.286, -4.191, 0.825)
SWEP.AimAng = Vector(0, -0.05, 0)

SWEP.AimSens = 0.15

SWEP.MuzzleEffect = "muzzleflash_SR25"
SWEP.Shell = "7.62x51"
SWEP.AttachmentBGs = {["suppressor"] = {bg = 2, sbg = 1}}
	
SWEP.WMAng = Vector(-15, 180, 180)
SWEP.WMPos = Vector(1, -3, -1.25)
SWEP.TargetViewModelFOV = 50
SWEP.CanPeek = true
SWEP.BlurOnAim = true

SWEP.Attachments = {[1] = {header = "Barrel", x = 50, atts = {"suppressor"}}}

SWEP.BulletLength = 7.62
SWEP.CaseLength = 51
SWEP.EmptySound = Sound("weapons/empty_sniperrifles.wav")

SWEP.Anims = {}
SWEP.Anims.Draw_First = "deploy_first"
SWEP.Anims.Draw = "deploy"
SWEP.Anims.Draw_Empty = "deploy"
SWEP.Anims.Holster = "holster"
SWEP.Anims.Holster_Empty = "holster"
SWEP.Anims.Fire = {"fire", "fire2", "fire3"}
SWEP.Anims.Fire_Last = "fire"
SWEP.Anims.Idle = "idle"
SWEP.Anims.Idle_Aim = "idle_scoped"
SWEP.Anims.Reload = "reload"
SWEP.Anims.Reload_Nomen = "reload_nomen"
SWEP.Anims.Reload_Empty = "reload_empty"
SWEP.Anims.Reload_Empty_Nomen = "reload_empty_nomen"
SWEP.Anims.Fire_Aiming = {"fire", "fire2", "fire3"}

SWEP.Sounds = {}
SWEP.Sounds = {}
SWEP.Sounds["deploy_first"] = {
	--[1] = {time = 1.5, sound = Sound("FAS2_M14.BoltRelease")},
	[1] = {time = 1.2, sound = Sound("FAS2_RPK.BoltForward")},
	[2] = {time = 1.8, sound = Sound("FAS2_SVD.BoltBack")},
	[3] = {time = 2.1, sound = Sound("FAS2_SVD.BoltForward")}
}

SWEP.Sounds["reload"] = {[1] = {time = 0.45, sound = Sound("FAS2_SVD.MagOut")},
	[2] = {time = 1, sound = Sound("MagPouch_AR")},
	[3] = {time = 1.7, sound = Sound("FAS2_SVD.MagIn")}}
	
SWEP.Sounds["reload_nomen"] = {[1] = {time = 0.5, sound = Sound("FAS2_SVD.MagOut")},
	[2] = {time = 1.0, sound = Sound("MagPouch_AR")},
	[3] = {time = 1.5, sound = Sound("FAS2_SVD.MagIn")}}
	
SWEP.Sounds["reload_empty"] = {[1] = {time = 0.45, sound = Sound("FAS2_SVD.MagOutEmpty")},
	[2] = {time = 1, sound = Sound("MagPouch_AR")},
	[3] = {time = 1.96, sound = Sound("FAS2_SVD.MagIn")},
	[4] = {time = 3.81, sound = Sound("FAS2_SVD.BoltBack")},
	[5] = {time = 3.99, sound = Sound("FAS2_SVD.BoltForward")}}
	
SWEP.Sounds["reload_empty_nomen"] = {[1] = {time = 0.35, sound = Sound("FAS2_SVD.MagOutEmpty")},
	[2] = {time = 1, sound = Sound("MagPouch_AR")},
	[3] = {time = 1.82, sound = Sound("FAS2_SVD.MagIn")},
	[4] = {time = 3, sound = Sound("FAS2_SVD.BoltBack")},
	[5] = {time = 3.28, sound = Sound("FAS2_SVD.BoltForward")}}

SWEP.FireModes = {"semi"}

SWEP.Category = "FA:S 2 Weapons"
SWEP.Base = "sdm_base"
SWEP.Author            = "Spy"
SWEP.Instructions    = ""
SWEP.Contact        = ""
SWEP.Purpose        = ""

SWEP.ViewModelFOV    = 52
SWEP.ViewModelFlip    = false

SWEP.Spawnable            = true
SWEP.AdminSpawnable        = true

SWEP.VM = "models/weapons/view/support/svd.mdl"
SWEP.WM = "models/weapons/w_svd_dragunov.mdl"
SWEP.WorldModel   = "models/weapons/w_svd_dragunov.mdl"

-- Primary Fire Attributes --
SWEP.Primary.ClipSize        = 10
SWEP.Primary.DefaultClip    = 10
SWEP.Primary.Automatic       = false   
SWEP.Primary.Ammo             = "7.62x51MM"
 
-- Secondary Fire Attributes --
SWEP.Secondary.ClipSize        = -1
SWEP.Secondary.DefaultClip    = -1
SWEP.Secondary.Automatic       = false
SWEP.Secondary.Ammo         = "none"

-- Deploy related
SWEP.FirstDeployTime = 3.25
SWEP.DeployTime = 0.7
SWEP.DeployAnimSpeed = 0.75

-- Firing related
SWEP.Shots = 1
SWEP.FireDelay = 0.2
SWEP.Damage = 56
SWEP.FireSound = Sound("FAS2_SVD")
SWEP.FireSound_Suppressed = Sound("FAS2_SVD_S")

-- Accuracy related
SWEP.HipCone = 0.085
SWEP.AimCone = 0.0005
SWEP.SpreadPerShot = 0.015
SWEP.MaxSpreadInc = 0.041
SWEP.SpreadCooldown = 0.2
SWEP.VelocitySensitivity = 2.2
SWEP.AimFOV = 5

-- Recoil related
SWEP.ViewKick = 2.86
SWEP.Recoil = 2.45552

-- Reload related
SWEP.ReloadTime = 2.6
SWEP.ReloadTime_Nomen = 1.9
SWEP.ReloadTime_Empty = 4.5
SWEP.ReloadTime_Empty_Nomen = 3.2

if CLIENT then
	local old, x, y, ang
	local sight = surface.GetTextureID("sprites/scope_leo")
	local lens = surface.GetTextureID("VGUI/fas2/lense")
	local lensring = surface.GetTextureID("VGUI/fas2/lensring")
	local cd, alpha = {}, 0.5
	local Ini = true
	
	function SWEP:DrawRenderTarget()
		if self.dt.Status == FAS_STAT_ADS then
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
		cd.fov = 2.85
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