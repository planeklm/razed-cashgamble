local QBCore = exports['qb-core']:GetCoreObject()
local Player = QBCore.Functions.GetPlayer(src)
local src = source
local money = Config.AddMoney
local removemoney = Config.RemoveMoney
                          

print('^4██████╗░░█████╗░███████╗███████╗██████╗░')
print('^4██╔══██╗██╔══██╗╚════██║██╔════╝██╔══██╗')
print('^4██████╔╝███████║░░███╔═╝█████╗░░██║░░██║')
print('^4██╔══██╗██╔══██║██╔══╝░░██╔══╝░░██║░░██║')
print('^4██║░░██║██║░░██║███████╗███████╗██████╔╝')
print('^4╚═╝░░╚═╝╚═╝░░╚═╝╚══════╝╚══════╝╚═════╝░')
print('^1         Scripts and Resources          ')
print(Config.Status)





RegisterNetEvent('razed-gamblecash:gamblecash')
AddEventHandler('razed-gamblecash:gamblecash', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddMoney("cash", money)
    TriggerClientEvent('QBCore:Notify', src, "You got $"..money.." For Free!")     

    Wait(8000)

    Player.Functions.RemoveMoney("cash", removemoney)
    TriggerClientEvent('QBCore:Notify', src, "You lost $"..removemoney.."!")     
end)

--Waypoint
RegisterServerEvent('man_location')
AddEventHandler('man_location', function(x,y,z)
	TriggerClientEvent('man_location',-1,x,y,z)
end)