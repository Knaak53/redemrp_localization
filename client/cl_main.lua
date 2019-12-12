AddEventHandler("onClientResourceStart", function(resourcename)
    if(GetCurrentResourceName() == resourcename) then
        TriggerEvent("onLocaleEvent", Config.Locales[Config.localeCode])
    end
end)

RegisterCommand("translateForMe", function(source, args, rawCommand)
    local _source = source
    if #args == 1 then
        if Config.Locales[args[1]] ~= nil then
            TriggerEvent("onLocaleEvent", Config.Locales[args[1]])
        else
            print("This language is not set up at this server, contact to administrator if you would like to use it")
            TriggerEvent('chat:addMessage', {
                color = { 255, 0, 0},
                multiline = true,
                args = {"Localization Error", "This language is not set up at this server, contact to administrator if you would like to use it"}
              })
        end
    else
        print("Number of args is invalid") 
        TriggerEvent('chat:addMessage', {
            color = { 255, 0, 0},
            multiline = true,
            args = {"Localization Error", "Number of args is invalid Usage: /translateForMe [localeCode]"}
          })
        return 
    end
end)


