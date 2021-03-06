SWEP.Type = "lmg"

if SERVER then
	AddCSLuaFile("shared.lua")
SWEP.ExtraMags = 4
end


SWEP.PrintName = "MC51B Vollmer"
SWEP.Slot = 3
SWEP.SlotPos = 0
	
SWEP.AimPos = Vector(-1.8625, -3.646, 0.775)
SWEP.AimAng = Vector(0.264, 0, 0)

SWEP.SprintPos = Vector(2.5, -6, -1.69)
SWEP.SprintAng = Vector(10.033, 34, 0)	

SWEP.CompM4Pos = Vector(-1.8625, -1.5, 0.055)
SWEP.CompM4Ang = Vector(1, 0, 0)
	
SWEP.MuzzleEffect = "muzzleflash_ak47"
SWEP.Shell = "7.62x51"
SWEP.AttachmentBGs = {["compm4"] = {bg = 4, sbg = 1},
		["suppressor"] = {bg = 3, sbg = 1}}
		

SWEP.Attachments = {
	[1] = {header = "Sight", sight = true, x = 800, y = -50, atts = {"compm4"}},
	[2] = {header = "Barrel", y = -200, atts = {"suppressor"}}}

SWEP.BulletLength = 7.62
SWEP.CaseLength = 51
SWEP.EmptySound = Sound("weapons/empty_assaultrifles.wav")

SWEP.Anims = {}
SWEP.Anims.Draw_First = "deploy_first"
SWEP.Anims.Draw = "deploy"
SWEP.Anims.Draw_Empty = "Deploy00"
SWEP.Anims.Holster = "holster"
SWEP.Anims.Fire = {"fire1", "fire2", "fire3"}
SWEP.Anims.Fire_Last = "Fire_Last01"
SWEP.Anims.Fire_Aiming_Last = "idle00"
SWEP.Anims.Fire_Aiming = "fire1_scoped"
SWEP.Anims.Idle = "idle"
SWEP.Anims.Idle_Aim = "idle_scoped"
SWEP.Anims.Reload = "reload"
SWEP.Anims.Reload_Nomen = "reload_nomen"
SWEP.Anims.Reload_Empty = "reload00"
SWEP.Anims.Reload_Empty_Nomen = "reload00_nomen"

SWEP.Sounds = {}

SWEP.Sounds["deploy_first"] = {[1] = {time = .25, sound = Sound("FAS2_MC51.stock")},
	[2] = {time = 0.8, sound = Sound("MagPouch_AR")},
	[3] = {time = 1.47, sound = Sound("FAS2_MC51.boltback")},
	[4] = {time = 2.5, sound = Sound("FAS2_MC51.box")},
	[5] = {time = 3, sound = Sound("FAS2_MC51.Beltload")},
	[6] = {time = 3.3, sound = Sound("FAS2_MC51.Beltpull")},
	[7] = {time = 4, sound = Sound("FAS2_MC51.Belt")},
	[8] = {time = 4.92, sound = Sound("FAS2_MC51.Boltforward")}}

SWEP.Sounds["reload"] = {[1] = {time = 0.5, sound = Sound("FAS2_MC51.Belt")},
	[2] = {time = 0.5, sound = Sound("MagPouch_AR")},
	[3] = {time = 0.95, sound = Sound("FAS2_MC51.open")},
	[4] = {time = 1.55, sound = Sound("FAS2_MC51.boxout")},
	[5] = {time = 3.1, sound = Sound("FAS2_MC51.boxin")},
	[6] = {time = 3.6, sound = Sound("FAS2_MC51.rip")},
	[7] = {time = 4.15, sound = Sound("FAS2_MC51.Beltpull")},
	[8] = {time = 4.9, sound = Sound("FAS2_MC51.box")},
	[9] = {time = 5.35, sound = Sound("FAS2_MC51.close")},
	[10] = {time = 6, sound = Sound("FAS2_MC51.Belt")}}
	
SWEP.Sounds["reload_nomen"] = {[1] = {time = 0.4, sound = Sound("FAS2_MC51.Belt")},
	[2] = {time = 0.5, sound = Sound("MagPouch_AR")},
	[3] = {time = 0.95, sound = Sound("FAS2_MC51.open")},
	[4] = {time = 1.3, sound = Sound("FAS2_MC51.boxout")},
	[5] = {time = 2.55, sound = Sound("FAS2_MC51.boxin")},
	[6] = {time = 2.9, sound = Sound("FAS2_MC51.rip")},
	[7] = {time = 3.4, sound = Sound("FAS2_MC51.Beltpull")},
	[8] = {time = 3.9, sound = Sound("FAS2_MC51.box")},
	[9] = {time = 4.3, sound = Sound("FAS2_MC51.close")},
	[10] = {time = 4.8, sound = Sound("FAS2_MC51.Belt")}}

SWEP.Sounds["reload00"] = {[1] = {time = 0.45, sound = Sound("FAS2_MC51.boltback")},
	[2] = {time = 0.5, sound = Sound("MagPouch_AR")},
	[3] = {time = 0.99, sound = Sound("FAS2_MC51.open")},
	[4] = {time = 1.55, sound = Sound("FAS2_MC51.boxout")},
	[5] = {time = 3.1, sound = Sound("FAS2_MC51.boxin")},
	[6] = {time = 3.6, sound = Sound("FAS2_MC51.rip")},
	[7] = {time = 4.15, sound = Sound("FAS2_MC51.Beltpull")},
	[8] = {time = 4.9, sound = Sound("FAS2_MC51.box")},
	[9] = {time = 5.35, sound = Sound("FAS2_MC51.close")},
	[10] = {time = 6, sound = Sound("FAS2_MC51.Belt")},
	[11] = {time = 6.8, sound = Sound("FAS2_MC51.Boltforward")}}
	
SWEP.Sounds["reload00_nomen"] = {[1] = {time = 0.5, sound = Sound("FAS2_MC51.boltback")},
	[2] = {time = 0.5, sound = Sound("MagPouch_AR")},
	[3] = {time = 0.99, sound = Sound("FAS2_MC51.open")},
	[4] = {time = 1.45, sound = Sound("FAS2_MC51.boxout")},
	[5] = {time = 2.76, sound = Sound("FAS2_MC51.boxin")},
	[6] = {time = 3, sound = Sound("FAS2_MC51.rip")},
	[7] = {time = 3.45, sound = Sound("FAS2_MC51.Beltpull")},
	[8] = {time = 3.9, sound = Sound("FAS2_MC51.box")},
	[9] = {time = 4.35, sound = Sound("FAS2_MC51.close")},
	[10] = {time = 4.8, sound = Sound("FAS2_MC51.Belt")},
	[11] = {time = 5.4, sound = Sound("FAS2_MC51.Boltforward")}}
	
SWEP.FireModes = {"auto", "semi"}

SWEP.Category = "FA:S 2 Weapons"
SWEP.Base = "sdm_base"
SWEP.Author            = "Spy"

SWEP.Contact        = ""
SWEP.Purpose        = ""

SWEP.ViewModelFOV    = 47
SWEP.ViewModelFlip    = false

SWEP.Spawnable            = true
SWEP.AdminSpawnable        = true

SWEP.VM = "models/weapons/view/support/mc51b.mdl"
SWEP.WM = "models/weapons/w_mc51.mdl"
SWEP.WorldModel   = "models/weapons/w_smg_mp5.mdl"

-- Primary Fire Attributes --
SWEP.Primary.ClipSize        = 50
SWEP.Primary.DefaultClip    = 50
SWEP.Primary.Automatic       = true    
SWEP.Primary.Ammo             = "7.62x51MM"
 
-- Secondary Fire Attributes --
SWEP.Secondary.ClipSize        = -1
SWEP.Secondary.DefaultClip    = -1
SWEP.Secondary.Automatic       = false
SWEP.Secondary.Ammo         = "none"

-- Deploy related
SWEP.FirstDeployTime = 5.6
SWEP.DeployTime = 0.8
SWEP.DeployAnimSpeed = 0.8

-- Firing related
SWEP.Shots = 1
SWEP.FireDelay = 0.07945
SWEP.Damage = 32
SWEP.FireSound = Sound("FAS2_MC51")
SWEP.FireSound_Suppressed = Sound("FAS2_MC51_S")

-- Accuracy related
SWEP.HipCone = 0.0412
SWEP.AimCone = 0.003112
SWEP.SpreadPerShot = 0.027
SWEP.MaxSpreadInc = 0.04151
SWEP.SpreadCooldown = 0.355
SWEP.VelocitySensitivity = 1.4
SWEP.AimFOV = 5

-- Recoil related
SWEP.ViewKick = 1.15
SWEP.Recoil = 1.219

-- Reload related
SWEP.ReloadTime = 6.6
SWEP.ReloadTime_Nomen = 5.3
SWEP.ReloadTime_Empty = 7
SWEP.ReloadTime_Empty_Nomen = 5.75
SWEP.CantChamber = true

SWEP.WElements = {
	["gun"] = { type = "Model", model = "models/weapons/w_mc51.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(2.072, 1.8, -0.241), angle = Angle(4.646, -180, 171.199), size = Vector(1.194, 1.194, 1.194), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.ShowWorldModel = false