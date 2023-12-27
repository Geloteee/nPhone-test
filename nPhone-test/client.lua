local testImage = 'https://dunb17ur4ymx4.cloudfront.net/webstore/logos/7796102248647a8b012db89e4e700f4e4de81ecc.png'

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