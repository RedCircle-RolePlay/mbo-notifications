local QBCore = exports['qb-core']:GetCoreObject()

-- Send a notification to the NUI
function SendAdvancedNotification(data)
    SendNUIMessage({
        action = 'notify',
        type = data.type or 'info',
        title = data.title or 'Notification',
        message = data.message or '',
        duration = data.duration or 5000,
        position = data.position or 'top-right'
    })
end

-- Example command
RegisterCommand('advnotify', function()
    SendAdvancedNotification({
        type = 'success',
        title = 'Success',
        message = 'This is a test notification!',
        duration = 4000,
        position = 'top-right'
    })
end, false)

-- Export
exports('SendNotification', SendAdvancedNotification)

-- NUI Focus (if needed)
RegisterNUICallback('notificationDismissed', function(_, cb)
    cb('ok')
end)
