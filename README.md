# redemrp_localization
Localization resource for RedEM: Roleplay

# RedEM Roleplay: Localization - Modular Localization system

Join our discord to get the newest updates and support! - https://discord.gg/FKH4uwb

## 1. Features
- Translate all you resources in a single one, with this resource you can keep all your translatiosn at the same site and change it with a simple change

## 2. Requirements
 
- You just have to use it with the resource that you want to translate see Usage for more info

## 3. Installation
- Put redemrp_localization into server-data/resources/[RedEM] or [redemrp]


- Open your server.cfg and put bellow command on the end of you file (it need to load the last for translate all resources)


```
ensure redemrp_localization
```

## 4. Documentation and Usage
this resource provide a file for each language if there is not one for your language, create it or make a pull request.

we will take English as example:
```
Config.Locales["en"] = { -- code lang for the language
    ["redemrp_respawn"] ={ -- resource name which contain the locales names
        ["LocaleDead"] = "You died!", -- locales
        ["LocaleTimer"] = "Respawning in"
    }
    ["nameOfYourResource_example"] ={ -- resource name which contain the locales names
        ["SomeText"] = "Translation text example!", -- locales
        ...
        ...
        ...
    }
}
```

To work in your language you have only to change the Config.localeCode at config.lua

### If you are Dev and want to your resource work with redemrp_localization

You have to add somewhere in your client resource (Its recommended you put it at the end of the file) a handler for "onLocaleEvent" and asing your locales variables with the given params:
```
--=============================================================-- Localization SECTION--=============================================================--
-- your resource should have some type of array or variables to use the locales at this case we take redemrp_respawn as example
AddEventHandler('onLocaleEvent', function(locales)
	print("Loading Locales for:"..GetCurrentResourceName()) -- log printing info
	locales = locales[GetCurrentResourceName()] -- get the locales for your resource
	Config.LocaleDead = locales["LocaleDead"] -- we asign the locales retrieved by redemrp_localization
	Config.LocaleTimer = locales["LocaleTimer"] -- we asign the locales retrieved by redemrp_localization
  ...
  ...
  ...
end)
```

## 5. Credits

https://github.com/kanersps for all work he done with RedEM and RedEM Roleplay
https://github.com/amakuu for all the work in RedEM Roleplay
