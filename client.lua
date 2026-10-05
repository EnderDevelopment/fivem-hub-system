local ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end

    while true do
        Citizen.Wait(0)
        local playerCoords = GetEntityCoords(PlayerPedId())
        local distance = #(playerCoords - Config.HubCoords)

        if distance < 10.0 then
            DrawMarker(Config.HubMarker, Config.HubCoords.x, Config.HubCoords.y, Config.HubCoords.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, Config.HubMarkerSize.x, Config.HubMarkerSize.y, Config.HubMarkerSize.z, Config.HubMarkerColor.r, Config.HubMarkerColor.g, Config.HubMarkerColor.b, Config.HubMarkerColor.a, false, true, 2, false, nil, nil, false)

            if distance < 1.5 then
                ESX.ShowHelpNotification('Press ~INPUT_CONTEXT~ to open the ~g~' .. Config.HubName .. '~s~ menu.')

                if IsControlJustReleased(0, 38) then
                    OpenHubMenu()
                end
            end
        end
    end
end)

function OpenHubMenu()
    local elements = {}

    for i=1, #Config.MenuOptions, 1 do
        table.insert(elements, {label = Config.MenuOptions[i].label, value = Config.MenuOptions[i].value})
    end

    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'hub_menu', {
        title    = Config.MenuTitle,
        align    = 'top-left',
        elements = elements
    }, function(data, menu)
        TriggerServerEvent('zoroHubSystem:menuOptionSelected', data.current.value)
    end, function(data, menu)
        menu.close()
    end)
end