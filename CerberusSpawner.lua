repeat task.wait() until game:IsLoaded()
local notifs = loadstring(game:HttpGet('https://raw.githubusercontent.com/fissurectomy/open-source-code/main/notification.lua'))()
notifs.alert('Cerberus Spawner', nil, 1000000, 'rainbow')
notifs.alert('Loading! Lag spikes are normal.', nil, 5)
loadstring(game:HttpGet("https://raw.githubusercontent.com/fissurectomy/1x1.lua/main/Cerberus.lua"))()
