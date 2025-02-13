fx_version  'cerulean'
game        'gta5'
lua54       'yes'

name        'murstein'
description 'murstein.'
author      'alex'
version '1.3.3'

files {
    'client.lua',
    'server.lua'
}

shared_script {
    '@ox_lib/init.lua',
    '@qbx_core/modules/lib.lua',
    'config.lua'
}
client_script {
    'client.lua',
    '@qbx_core/modules/playerdata.lua'
}
server_script {
    'server.lua',

}

escrow_ignore {
	"config.lua",
}