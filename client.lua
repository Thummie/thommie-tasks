local taskActive = false

local function sendNUI(action, data)
    SendNUIMessage({
        action = action,
        data = data
    })
end

local function showTask(title, description)
    sendNUI('show', {title = title, description = description})
    taskActive = true
end
exports('showTask', showTask)

local function hideTask()
    sendNUI('hide')
    taskActive = false
end
exports('hideTask', hideTask)

-- exports['thommie-tasks']:showTask(title, desc)
-- exports['thommie-tasks']:hideTask()