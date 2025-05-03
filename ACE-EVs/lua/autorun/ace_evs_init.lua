-- Initialization script for ACE-EVs addon

if SERVER then
    -- Send necessary files to the client
    AddCSLuaFile()
    AddCSLuaFile("acf/shared/ace_evs_config.lua")
    AddCSLuaFile("acf/shared/ace_evs_motors.lua")
    
    print("[ACE EVs] Addon initialized on SERVER!")
else
    print("[ACE EVs] Addon initialized on CLIENT!")
end

-- Include shared files
include("acf/shared/ace_evs_config.lua")
include("acf/shared/ace_evs_motors.lua")