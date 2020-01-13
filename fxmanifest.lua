fx_version "adamant"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
client_scripts {
	'client/cl_main.lua',
	'config.lua',
	'locales/en.lua',
	'locales/es.lua',
	'locales/pl.lua',
	'locales/fr.lua',
	'locales/tr.lua',
}

server_scripts {
	'config.lua',
	'server/sv_main.lua',
}

files{}

ui_page 'html/ui.html'
