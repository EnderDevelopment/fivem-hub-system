local ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('zoroHubSystem:menuOptionSelected')
AddEventHandler('zoroHubSystem:menuOptionSelected', function(option)
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer then
        if option == 'option1' then
            -- Handle option 1
            xPlayer.showNotification('You selected Option 1')
        elseif option == 'option2' then
            -- Handle option 2
            xPlayer.showNotification('You selected Option 2')
        elseif option == 'option3' then
            -- Handle option 3
            xPlayer.showNotification('You selected Option 3')
        end
    end
end)