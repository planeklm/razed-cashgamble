local QBCore = exports['qb-core']:GetCoreObject()


--Blip
Citizen.CreateThread(function()
    FreeCash = AddBlipForCoord(87.90196, -1105.933, 29.28292)
    SetBlipSprite (FreeCash, 89)
    SetBlipDisplay(FreeCash, 4)
    SetBlipScale  (FreeCash, Config.BlipScale)
    SetBlipAsShortRange(FreeCash, true)
    SetBlipColour(FreeCash, Config.BlipColour)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName(Config.BlipName)
    EndTextCommandSetBlipName(FreeCash)
end) 


--qb-menu Event
RegisterNetEvent('razed-gamblecash:openMenu', function()
    exports['qb-menu']:openMenu({
        {
            header = "Gamble Cash",
            isMenuHeader = true,
        },
        {
            id = 1,
            header = "Gamble with this creep",
            txt = "Need some extra cash?",
            params = {
                event = "razed-test:gamblecashclient",
            }
        },	
    })
end)

--Spawn The Dealer
CreateThread(function()
    Dealer()
end)

Dealer = function()
    CreateThread(function()
        RequestModel(GetHashKey('a_m_m_business_01'))
        while not HasModelLoaded(GetHashKey('a_m_m_business_01')) do
        wait(1)
        end
        Dealer()
    end)
end


Dealer = function()
    dealer = CreatePed(5, GetHashKey('a_m_m_business_01') ,87.90196, -1105.933, 28.28292, 75.42581, false, true)
    FreezeEntityPosition(dealer, true)
    SetEntityInvincible(dealer, true)
    SetBlockingOfNonTemporaryEvents(dealer, true)
end

RegisterNetEvent('razed-gamblecash:gamblecashclient')
AddEventHandler('razed-gamblecash:gamblecashclient', function()
    local money = Config.AddMoney
    local removemoney = Config.RemoveMoney

    QBCore.Functions.Progressbar("dice", 'Throwing dice...', Config.Delay, false, false, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        flags = 1,
    }, {}, {}, function()
    end)

    Wait(Config.Delay)

    TriggerServerEvent('razed-gamblecash:gamblecash', idk, idk, money)
    TriggerServerEvent("InteractSound_SV:PlayOnSource", "hobbs4", 0.3)
    print('You Got '..money..'!')  
    print('You Lost '..removemoney..'.')  
end)





--Console Shananigans

print(Config.Status)