------------------------
-------shared.lua-------
--Realm: Client
--Purpose: Include files and define names and such.
--Net usage: None.
------------------------

GM.Name = "Swept's Deathmatch"
GM.Author = "SweptThrone"
GM.Email = "sweptthrone971@gmail.com"
GM.Website = "no website (yet)"

AddCSLuaFile("cl_helpmenu.lua")
AddCSLuaFile("cl_killfeed.lua")
AddCSLuaFile("cl_modelmenu.lua")
AddCSLuaFile("cl_moneyhud.lua")
AddCSLuaFile("cl_sdmhud.lua")
AddCSLuaFile("cl_tauntmenu.lua")
AddCSLuaFile("cl_weaponmenu.lua")
AddCSLuaFile("cl_scoreboard.lua")

AddCSLuaFile("sv_modelupdate.lua")
AddCSLuaFile("sv_moneystuff.lua")
AddCSLuaFile("sv_playerspawn.lua")
AddCSLuaFile("sv_sparemenus.lua")
AddCSLuaFile("sv_weaponmenu.lua")
AddCSLuaFile("sv_playertaunt.lua")
AddCSLuaFile("sv_setupgame.lua")

AddAmmoType("M84 Grenades", "M84 Grenades")

--[[
Hello, developers and decompilers alike!  Welcome to the code of my first gamemode!

You may be looking at these files thinking "Holy shit!  That's a lot of files!"
Yes, you are right.  And if you look closer, you're probably thinking,
"Holy shit!  There's no organization!" to which I say, you're somewhat correct.

Each file is basically a day's worth of work.  I think every day I added something,
I made a new file for it.  sv_weaponmenu is such a clusterfuck of shit because
it was the first thing I worked on.  I kinda threw everything there without thinking.

While browsing this, you'll probably find a bunch of inefficient shit and maybe
some unused shit.  If you know of a better way to do something like I mentioned,
just let me know, and I'll fix it right up.
]]--
