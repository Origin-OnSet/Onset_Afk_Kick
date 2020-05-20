-- Made with 🖤 By Philip-J.Fry
-- https://github.com/fribblet56
-- https://discord.gg/MDEwtKr

local delay = 0
local last_key_press = GetTimeSeconds()

AddEvent("OnKeyPress", function(key)
    last_key_press = GetTimeSeconds()
end)

CreateTimer(function()      
    if GetTimeSeconds() - last_key_press > delay*60 then
        CallRemoteEvent("afk:kick")
    end 
end, 2000)

AddRemoteEvent("afk:setup", function(_delay)
    delay = _delay
end)
