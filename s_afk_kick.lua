 -- Made with 🖤 By Philip-J.Fry
 -- https://github.com/fribblet56
 -- https://discord.gg/MDEwtKr

 local afk = {}

 CreateTimer(function()
     local now = os.time(os.date("!*t"))
     for k,v in pairs(GetAllPlayers()) do
         if GetPlayerMovementMode(v) ~= 0 then break end
         if afk[v] == nil then break end
         
         if afk[v].timer < (now - AFK_KICK_TIME*60) then
             print("[AFK-KICK] "..GetPlayerName(v).."("..v..") has been kicked for AFK.")
             KickPlayer(v, AFK_KICK_MESSAGE) 
         end
     end
 end, 1000)
 
 AddRemoteEvent("afk:update", function(player)
     afk[player].timer = os.time(os.date("!*t"))
 end)
 
 AddEvent("OnPlayerJoin", function(player)
     afk[player] = {}
     afk[player].timer = os.time(os.date("!*t"))
 end)
 
