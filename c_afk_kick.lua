 -- Made with 🖤 By Philip-J.Fry
 -- https://github.com/fribblet56
 -- https://discord.gg/MDEwtKr

local key_list = {}

CreateTimer(function()
    if #key_list == 0 then return end
    key_list = {}
    CallRemoteEvent("afk:update")
end, 1000)


AddEvent("OnKeyPress", function(key)
    table.insert(key_list, key)
end)
