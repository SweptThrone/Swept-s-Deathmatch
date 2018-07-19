----------------------
-------init.lua-------
--Realm: Client
--Purpose: Include files.
--Net usage: None.
----------------------

AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

include("cl_helpmenu.lua")
include("cl_killfeed.lua")
include("cl_modelmenu.lua")
include("cl_moneyhud.lua")
include("cl_sdmhud.lua")
include("cl_tauntmenu.lua")
include("cl_weaponmenu.lua")
include("cl_scoreboard.lua")

include("sv_modelupdate.lua")
include("sv_moneystuff.lua")
include("sv_playerspawn.lua")
include("sv_sparemenus.lua")
include("sv_weaponmenu.lua")
include("sv_playertaunt.lua")
include("sv_setupgame.lua")