 -- Made with 🖤 By Philip-J.Fry
 -- https://github.com/fribblet56
 -- https://discord.gg/MDEwtKr

AddRemoteEvent("afk:kick", function(player)
    print("[AFK-KICK] "..GetPlayerName(player).."("..player..") has been kicked for AFK.")
    KickPlayer(player, AFK_KICK_MESSAGE) 
end)

AddEvent("OnPlayerJoin", function(player)
    CallRemoteEvent(player,"afk:setup", AFK_KICK_TIME)
end)
