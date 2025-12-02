lib.locale()

local function pickupBall()
    local ped = PlayerPedId()

    if IsPedInAnyVehicle(ped, false) then
        lib.notify({
            title = 'Snowball',
            description = locale("pickup_no_vehicle"),
            type = 'error'
        })
        return
    end

    local interior = GetInteriorFromEntity(ped)
    if interior ~= 0 then
        lib.notify({
            title = 'Snowball',
            description = locale("pickup_not_outside"),
            type = 'error'
        })
        return
    end

    if lib.progressBar({
        duration = 1400,
        label = locale("pickup_progress"),
        useWhileDead = false,
        canCancel = true,
        disable = {
            car = true,
            move = true,
        },
        anim = {
            dict = 'anim@mp_snowball',
            clip = 'pickup_snowball'
        }
    }) then
        TriggerServerEvent("fcn_snowball:pickup")
    end
end

lib.addRadialItem({
    {
        id = 'pickup',
        label = locale("pickup"),
        icon = 'snowflake',
        onSelect = function()
            pickupBall()
        end
    }
})
