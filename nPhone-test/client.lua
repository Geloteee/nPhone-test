local testImage = 'https://cdn.discordapp.com/attachments/1178375780867264594/1178375812383264788/nuvil_logo.png'

RegisterCommand('SetPhoneDisplayStatus', function()
    exports["nPhone"]:SetPhoneDisplayStatus(true)
end)

RegisterCommand('GetPhoneStatus', function()
    local displayStatus = exports["nPhone"]:GetPhoneStatus()
    print(displayStatus)
end)

RegisterCommand('GetPhoneAvailability', function()
    local availabilityStatus = exports["nPhone"]:GetPhoneAvailability()
    print(availabilityStatus)
end)

RegisterCommand('SetPhoneAvailability', function()
    exports["nPhone"]:SetPhoneAvailability(true)
end)

RegisterCommand('ShowClientNotification', function()
    exports["nPhone"]:ShowNotification('Title', 'Content', 2000, testImage)
end)

RegisterCommand('SetFlashlightStatus', function()
    exports["nPhone"]:SetFlashlightStatus(true)
end)

RegisterCommand('GetFlashlightStatus', function()
    local flashlightStatus = exports["nPhone"]:GetFlashlightStatus(status)
    print(flashlightStatus)
end)
