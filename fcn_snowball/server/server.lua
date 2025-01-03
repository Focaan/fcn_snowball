RegisterNetEvent('fcn_snowball:pickup')
AddEventHandler('fcn_snowball:pickup', function()
    local playerId = source
    if exports.ox_inventory:CanCarryItem(playerId, 'weapon_snowball', 1) then
        exports.ox_inventory:AddItem(playerId, "weapon_snowball", 1)
    else
        TriggerClientEvent('ox_lib:notify', playerId, {
            description = 'You dont have enough weight for the snowball!',
            type = 'error'
        })
    end
end)