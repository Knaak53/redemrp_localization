AddEventHandler("onClientResourceStart", function()
    TriggerEvent("onLocaleEvent", Config.Locales[Config.localeCode])
end)
