local function pickupBall()
  if lib.progressBar({
        duration = 1400,
        label = 'Picking snowball...',
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
    else
      
    end
end


lib.addRadialItem({
  {
    id = 'pickup',
    label = "Pickup snowball",
    icon = 'snowflake',
    onSelect = function()
      pickupBall()
    end
  }
})