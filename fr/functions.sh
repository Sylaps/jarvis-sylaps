#!/bin/bash
# Here you can create functions which will be available from the commands file
# You can also use here user variables defined in your config file



create_room () {
	[[ -z $(which uuid) ]] && sudo apt-get install uuid
	ROOMNAME=`echo $(uuid)`
}

open_app () {
#open defaut web browser
jv_browse_url "$SYLAPS_URL/room/$ROOMNAME?utm_source=jarvis"
}
