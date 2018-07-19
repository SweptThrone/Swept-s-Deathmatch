SWEP.Type = "lmg"

if SERVER then
	AddCSLuaFile("shared.lua")
SWEP.ExtraMags = 3
end


SWEP.PrintName = "M60E3"
SWEP.Slot = 3
SWEP.SlotPos = 0
	
SWEP.AimPos = Vector(-2.83, -5.874, 1.8)
SWEP.AimAng = Vector(0.018, 0, 0)

SWEP.SprintPos = Vector(2.5, -6, -1.69)
SWEP.SprintAng = Vector(10.033, 34, 0)
	
SWEP.AimPos_Bipod = Vector(-1.725, -6.874, 1.4)
SWEP.AimAng_Bipod = Vector(0.048, 0, 0)
		
SWEP.CompM4Pos = Vector(-2.56, -2, 0.54)
SWEP.CompM4Ang = Vector(0, 0, 0)

SWEP.MuzzleEffect = "muzzleflash_ak74"
SWEP.Shell = "7.62x51"
SWEP.YawMod = 0.1
SWEP.AttachmentBGs = {["suppressor"] = {bg = 4, sbg = 1}}	


SWEP.Attachments = {
	[1] = {header = "Barrel", y = -200, atts = {"suppressor"}}}

SWEP.BulletLength = 7.62
SWEP.CaseLength = 51
SWEP.EmptySound = Sound("weapons/empty_assaultrifles.wav")

SWEP.Anims = {}
SWEP.Anims.Draw_First = "deploy_first"
SWEP.Anims.Draw = "deploy"
SWEP.Anims.Draw_Empty = "Deploy00"
SWEP.Anims.Holster = "holster"
SWEP.Anims.Holster_Empty = "Holster00"
SWEP.Anims.Fire = {"fire1", "fire2", "fire3"}
SWEP.Anims.Fire_Last = "Fire_Last00"
SWEP.Anims.Fire_Bipod_Last = "bipod_idle00"
SWEP.Anims.Fire_Bipod = {"bipod_Fire1", "bipod_fire2", "bipod_fire3"}
SWEP.Anims.Fire_Aiming = "fire_first"
SWEP.Anims.Fire_Bipod_Aiming = "bipod_fire1"
SWEP.Anims.Idle = "idle_unfired"
SWEP.Anims.Idle_Aim = "idle_scoped"
SWEP.Anims.Fire_Aiming_Last = "idle00"
SWEP.Anims.Reload = "reload"
SWEP.Anims.Reload_Bipod = "bipod_Reload"
SWEP.Anims.Reload_Nomen = "reload_nomen"
SWEP.Anims.Reload_Bipod_Nomen = "bipod_reload07_nomen"
SWEP.Anims.Reload_Empty = "reload_fired00"
SWEP.Anims.Reload_Bipod_Empty = "bipod_reload_fired00"
SWEP.Anims.Reload_Empty_Nomen = "reload_fired00_nomen"
SWEP.Anims.Reload_Bipod_Empty_Nomen = "bipod_reload_fired00_nomen"
SWEP.Anims.Bipod_Deploy = "bipod_dn"
SWEP.Anims.Bipod_UnDeploy = "bipod_up"

SWEP.Sounds = {}

SWEP.Sounds["deploy_first"] = {
	[1] = {time = 1.2, sound = Sound("FAS2_M60.Close")},
	[2] = {time = 1.9, sound = Sound("FAS2_M60.Charge")},
	[3] = {time = 2.2, sound = Sound("FAS2_M60.Open")},
	[4] = {time = 3.6, sound = Sound("FAS2_M60.FeedingMechanism")},
	[5] = {time = 3.9, sound = Sound("FAS2_M60.FeedingMechanism")},
	[6] = {time = 4.6, sound = Sound("weapons/m60/m60_feeding_tray.wav")},
	[7] = {time = 5.5, sound = Sound("FAS2_M60.Belt")},
	[8] = {time = 6, sound = Sound("FAS2_M60.BeltInsert")},
	[9] = {time = 7.05, sound = Sound("FAS2_M60.Close")},
	[10] = {time = 7.6, sound = Sound("FAS2_M60.Flipsights")},
	[11] = {time = 8.1, sound = Sound("FAS2_M60.Bipod")},
	[12] = {time = 9.5, sound = Sound("FAS2_M60.ShoulderRest")},
	[13] = {time = 11, sound = Sound("FAS2_M60.Bipod")},
	[14] = {time = 11.5, sound = Sound("Generic_Cloth")}
}

SWEP.Sounds["bipod_dn"] = {[1] = {time = 0, sound = Sound("Generic_Cloth")},
	[2] = {time = 0.6, sound = Sound("FAS2_RPK.BipodOpen")}}
	
SWEP.Sounds["bipod_up"] = {[1] = {time = 0, sound = Sound("Generic_Cloth")}}
	
SWEP.Sounds["reload"] = {[1] = {time = 0.14, sound = Sound("MagPouch_AR")},
	[2] = {time = 0.32, sound = Sound("FAS2_M60.Open")},
	[3] = {time = 0.7, sound = Sound("FAS2_M60.BeltRemove")},
	[4] = {time = 1.4, sound = Sound("MagPouch_AR")},
	[5] = {time = 2.1, sound = Sound("FAS2_M60.VelcroRip")},
	[6] = {time = 2.6, sound = Sound("FAS2_M60.CardboardRemove")},
	[7] = {time = 4.1, sound = Sound("FAS2_M60.CardboardInsert")},
	[8] = {time = 4.65, sound = Sound("FAS2_M60.CardboardRip")},
	[9] = {time = 5.35, sound = Sound("FAS2_M60.BeltInsert")},
	[10] = {time = 6.58, sound = Sound("FAS2_M60.VelcroClose")},
	[11] = {time = 7.29, sound = Sound("FAS2_M60.Close")}}
	
SWEP.Sounds["bipod_Reload"] = {[1] = {time = 0.14, sound = Sound("MagPouch_AR")},
	[2] = {time = 0.32, sound = Sound("FAS2_M60.Open")},
	[3] = {time = 0.75, sound = Sound("FAS2_M60.BeltRemove")},
	[4] = {time = 1.4, sound = Sound("MagPouch_AR")},
	[5] = {time = 1.8, sound = Sound("FAS2_M60.VelcroRip")},
	[6] = {time = 2.2, sound = Sound("FAS2_M60.CardboardRemove")},
	[7] = {time = 3.6, sound = Sound("MagPouch_AR")},
	[8] = {time = 4.1, sound = Sound("FAS2_M60.CardboardInsert")},
	[9] = {time = 4.65, sound = Sound("FAS2_M60.CardboardRip")},
	[10] = {time = 5.25, sound = Sound("FAS2_M60.BeltInsert")},
	[11] = {time = 6.55, sound = Sound("FAS2_M60.VelcroClose")},
	[12] = {time = 7.15, sound = Sound("FAS2_M60.Close")}}
	
SWEP.Sounds["reload_nomen"] = {[1] = {time = 0.14, sound = Sound("MagPouch_AR")},
	[2] = {time = 0.32, sound = Sound("FAS2_M60.Open")},
	[3] = {time = 0.6, sound = Sound("FAS2_M60.BeltRemove")},
	[4] = {time = 1.4, sound = Sound("MagPouch_AR")},
	[5] = {time = 1.8, sound = Sound("FAS2_M60.VelcroRip")},
	[6] = {time = 2.2, sound = Sound("FAS2_M60.CardboardRemove")},
	[7] = {time = 3.3, sound = Sound("FAS2_M60.CardboardInsert")},
	[8] = {time = 3.75, sound = Sound("FAS2_M60.CardboardRip")},
	[9] = {time = 4.35, sound = Sound("FAS2_M60.BeltInsert")},
	[10] = {time = 5, sound = Sound("FAS2_M60.VelcroClose")},
	[11] = {time = 5.8, sound = Sound("FAS2_M60.Close")}}
	
SWEP.Sounds["bipod_reload07_nomen"] = {[1] = {time = 0.14, sound = Sound("MagPouch_AR")},
	[2] = {time = 0.32, sound = Sound("FAS2_M60.Open")},
	[3] = {time = 0.55, sound = Sound("FAS2_M60.BeltRemove")},
	[4] = {time = 0.8, sound = Sound("MagPouch_AR")},
	[5] = {time = 1.2, sound = Sound("FAS2_M60.VelcroRip")},
	[6] = {time = 1.9, sound = Sound("FAS2_M60.CardboardRemove")},
	[7] = {time = 3.3, sound = Sound("FAS2_M60.CardboardInsert")},
	[8] = {time = 3.75, sound = Sound("FAS2_M60.CardboardRip")},
	[9] = {time = 4.25, sound = Sound("FAS2_M60.BeltInsert")},
	[10] = {time = 5.18, sound = Sound("FAS2_M60.VelcroClose")},
	[11] = {time = 5.69, sound = Sound("FAS2_M60.Close")}}
	
SWEP.Sounds["reload_fired00"] = {[1] = {time = 0.13, sound = Sound("MagPouch_AR")},
	[2] = {time = 0.32, sound = Sound("FAS2_M60.Open")},
	[3] = {time = 0.9, sound = Sound("FAS2_M60.Charge")},
	[4] = {time = 1.2, sound = Sound("MagPouch_AR")},
	[5] = {time = 2.3, sound = Sound("FAS2_M60.VelcroRip")},
	[6] = {time = 2.9, sound = Sound("FAS2_M60.CardboardRemove")},
	[7] = {time = 4.35, sound = Sound("FAS2_M60.CardboardInsert")},
	[8] = {time = 4.8, sound = Sound("FAS2_M60.CardboardRip")},
	[9] = {time = 5.35, sound = Sound("FAS2_M60.BeltInsert")},
	[10] = {time = 6.28, sound = Sound("FAS2_M60.VelcroClose")},
	[11] = {time = 7.2, sound = Sound("FAS2_M60.Close")}}
	
SWEP.Sounds["bipod_reload_fired00"] = {[1] = {time = 0.14, sound = Sound("MagPouch_AR")},
	[2] = {time = 0.2, sound = Sound("FAS2_M60.Charge")},
	[3] = {time = 0.92, sound = Sound("FAS2_M60.Open")},
	[4] = {time = 1.5, sound = Sound("MagPouch_AR")},
	[5] = {time = 2.1, sound = Sound("FAS2_M60.VelcroRip")},
	[6] = {time = 2.5, sound = Sound("FAS2_M60.CardboardRemove")},
	[7] = {time = 4.1, sound = Sound("FAS2_M60.CardboardInsert")},
	[8] = {time = 4.75, sound = Sound("FAS2_M60.CardboardRip")},
	[9] = {time = 5.35, sound = Sound("FAS2_M60.BeltInsert")},
	[10] = {time = 6.39, sound = Sound("FAS2_M60.VelcroClose")},
	[11] = {time = 7.2, sound = Sound("FAS2_M60.Close")}}

SWEP.Sounds["bipod_reload_fired00_nomen"] = {[1] = {time = 0.14, sound = Sound("MagPouch_AR")},
	[2] = {time = 0.2, sound = Sound("FAS2_M60.Charge")},
	[3] = {time = 0.72, sound = Sound("FAS2_M60.Open")},
	[4] = {time = 1.2, sound = Sound("MagPouch_AR")},
	[5] = {time = 1.8, sound = Sound("FAS2_M60.VelcroRip")},
	[6] = {time = 2.3, sound = Sound("FAS2_M60.CardboardRemove")},
	[7] = {time = 3.3, sound = Sound("FAS2_M60.CardboardInsert")},
	[8] = {time = 3.75, sound = Sound("FAS2_M60.CardboardRip")},
	[9] = {time = 4.25, sound = Sound("FAS2_M60.BeltInsert")},
	[10] = {time = 5.18, sound = Sound("FAS2_M60.VelcroClose")},
	[11] = {time = 5.69, sound = Sound("FAS2_M60.Close")}}
	
SWEP.Sounds["reload_fired00_nomen"] = {[1] = {time = 0.13, sound = Sound("MagPouch_AR")},
	[2] = {time = 0.32, sound = Sound("FAS2_M60.Open")},
	[3] = {time = 0.5, sound = Sound("MagPouch_AR")},
	[3] = {time = 0.75, sound = Sound("FAS2_M60.Charge")},
	[4] = {time = 1.6, sound = Sound("FAS2_M60.VelcroRip")},
	[5] = {time = 2.1, sound = Sound("FAS2_M60.CardboardRemove")},
	[6] = {time = 3.25, sound = Sound("FAS2_M60.CardboardInsert")},
	[7] = {time = 3.75, sound = Sound("FAS2_M60.CardboardRip")},
	[8] = {time = 4.25, sound = Sound("FAS2_M60.BeltInsert")},
	[9] = {time = 4.65, sound = Sound("FAS2_M60.VelcroClose")},
	[10] = {time = 5.7, sound = Sound("FAS2_M60.Close")}}
	
SWEP.FireModes = {"auto", "semi"}

SWEP.Category = "FA:S 2 Weapons"
SWEP.Base = "sdm_base"
SWEP.Author            = "This gun is haunts me"
SWEP.Contact        = ""
SWEP.Purpose        = ""

SWEP.ViewModelFOV    = 62
SWEP.ViewModelFlip    = true

SWEP.Spawnable            = true
SWEP.AdminSpawnable        = true

SWEP.VM = "models/weapons/view/support/m60e3.mdl"
SWEP.WM = "models/weapons/w_m60e3.mdl"
SWEP.WorldModel   = "models/weapons/w_m60_machine_gun.mdl"

-- Primary Fire Attributes --
SWEP.Primary.ClipSize        = 100
SWEP.Primary.DefaultClip    = 100
SWEP.Primary.Automatic       = true    
SWEP.Primary.Ammo             = "7.62x51MM"
 
-- Secondary Fire Attributes --
SWEP.Secondary.ClipSize        = -1
SWEP.Secondary.DefaultClip    = -1
SWEP.Secondary.Automatic       = false
SWEP.Secondary.Ammo         = "none"

-- Deploy related
SWEP.FirstDeployTime = 12.5
SWEP.DeployTime = 0.65
SWEP.DeployAnimSpeed = 0.8
SWEP.HolsterTime = 0.45

-- Firing related
SWEP.Shots = 1
SWEP.FireDelay = 0.0899
SWEP.Damage = 41
SWEP.FireSound = Sound("FAS2_M60")
SWEP.FireSound_Suppressed = Sound("FAS2_M60_S")

-- Accuracy related
SWEP.HipCone = 0.0512
SWEP.AimCone = 0.00354
SWEP.SpreadPerShot = 0.017
SWEP.MaxSpreadInc = 0.03551
SWEP.SpreadCooldown = 0.355
SWEP.VelocitySensitivity = 1.4
SWEP.AimFOV = 5

-- Recoil related
SWEP.ViewKick = 1.298
SWEP.Recoil = 1.595

-- Reload related
SWEP.ReloadTime = 7.4
SWEP.ReloadTime_Nomen = 6.1
SWEP.ReloadTime_Empty = 7.65
SWEP.ReloadTime_Empty_Nomen = 6.15
SWEP.CantChamber = true

SWEP.ReloadTime_Bipod = 7.22
SWEP.ReloadTime_Bipod_Nomen = 5.68
SWEP.ReloadTime_Bipod_Empty = 7.34
SWEP.ReloadTime_Bipod_Empty_Nomen = 5.7

-- Misc
SWEP.InstalledBipod = true
SWEP.BipodAngleLimitYaw = 30
SWEP.BipodAngleLimitPitch = 10
SWEP.BipodDeployTime = 0.83
SWEP.BipodUndeployTime = 0.83
