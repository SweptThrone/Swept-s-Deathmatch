-------------------------
-------cl_init.lua-------
--Realm: Client
--Purpose: Include files and setup ConVars.
--Net usage: None.
-------------------------

include("shared.lua")

include("cl_helpmenu.lua")
include("cl_killfeed.lua")
include("cl_modelmenu.lua")
include("cl_moneyhud.lua")
include("cl_sdmhud.lua")
include("cl_tauntmenu.lua")
include("cl_weaponmenu.lua")
include("cl_scoreboard.lua")

AddCSLuaFile("cl_helpmenu.lua")
AddCSLuaFile("cl_killfeed.lua")
AddCSLuaFile("cl_modelmenu.lua")
AddCSLuaFile("cl_moneyhud.lua")
AddCSLuaFile("cl_sdmhud.lua")
AddCSLuaFile("cl_tauntmenu.lua")
AddCSLuaFile("cl_weaponmenu.lua")
AddCSLuaFile("cl_scoreboard.lua")

CreateConVar( "cl_playercolor", "0.24 0.34 0.41", {FCVAR_DONTRECORD, FCVAR_USERINFO, FCVAR_ARCHIVE}, "The value is a Vector - so between 0-1 - not between 0-255" )
CreateConVar( "cl_weaponcolor", "0.30 1.80 2.10", {FCVAR_DONTRECORD, FCVAR_USERINFO, FCVAR_ARCHIVE}, "The value is a Vector - so between 0-1 - not between 0-255" )