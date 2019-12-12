AddEventHandler("onClientResourceStart", function(resourcename)
    if(GetCurrentResourceName() == resourcename) then
        TriggerEvent("onLocaleEvent", Config.Locales[Config.localeCode])
    end
end)
