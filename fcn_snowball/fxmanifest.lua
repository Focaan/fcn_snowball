game 'gta5'
fx_version 'cerulean'
lua54 'yes'
author "Focaan"
version "2.0.1"

shared_scripts {
    '@ox_lib/init.lua',
}

client_scripts {
    'client/*.lua',
}

server_scripts {
    'server/*.lua'
}

files {
  'locales/*.json'
}