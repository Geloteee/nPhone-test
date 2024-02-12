local testImage = 'https://cdn.discordapp.com/attachments/1178375780867264594/1178375812383264788/nuvil_logo.png'

RegisterCommand('SetVerifiedStatus', function()
    exports["nPhone"]:SetVerifiedStatus('y', 'geloteee', true)
end)

RegisterCommand('GetVerifiedStatus', function()
    exports["nPhone"]:GetVerifiedStatus('y', 'geloteee', function(status)
        print(status)
    end)
end)

RegisterCommand('ChangeAccountPassword', function()
    exports["nPhone"]:ChangeAccountPassword('nCloud', 'geloteee', 'passwordexample')
end)

RegisterCommand('GetAppPost', function()
    exports["nPhone"]:GetAppPost('y', 'BzOYo3NrTd', function(content)
        print(content)
    end)

    exports["nPhone"]:GetAppPost('mail', '4434', function(content)
        print(content)
    end)
end)

RegisterCommand('RemoveAppPost', function()
    exports["nPhone"]:RemoveAppPost('y', 'BzOYo3NrTd')
    exports["nPhone"]:RemoveAppPost('mail', '4434')
end)

RegisterCommand('ResetSmartphone', function()
    exports["nPhone"]:ResetSmartphone('char1:ec4983efa254bcf442c35fea513aa1f7c59e9088')
end)

RegisterCommand('GetSourceFromNumber', function()
    local sourceNumber = exports["nPhone"]:GetSourceFromNumber('999-9969')
    print(sourceNumber)
end)

RegisterCommand('ShowServerNotification', function(source)
    exports["nPhone"]:ShowNotification(source, 'Title', 'Content', 2000, testImage)
end)

RegisterCommand('GetPasscodeFromPhoneId', function()
    exports["nPhone"]:GetPasscodeFromPhoneId('char1:ec4983efa254bcf442c35fea513aa1f7c59e9088', function(passcode)
        print(passcode)
    end)
end)

RegisterCommand('GetSourceCurrentAccount', function(source)
    local sourceAccount = exports["nPhone"]:GetSourceCurrentAccount(source)
    print(sourceAccount)
end)

RegisterCommand('SendEmail', function()
    exports["nPhone"]:SendEmail('geloteee', 'Subject', 'Content', testImage, 'geloteee2')
end)

RegisterCommand('GetCall', function()
    local callId = exports["nPhone"]:GetCall('999-9969')
    print(callId)
end)

RegisterCommand('EndCall', function()
    exports["nPhone"]:EndCall('')
end)

RegisterCommand('IsInCall', function()
    local callStatus = exports["nPhone"]:IsInCall('999-9969')
    print(callStatus)
end)

RegisterNetEvent('nPhone:messageTrigger', function(chat, phone, message, messageId, attachments)
    print(chat, phone, message, messageId, attachments)
end)
