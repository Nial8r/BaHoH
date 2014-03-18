player.turn = false;
script_execute(get_room(player.tx,player.ty).event_endturn);
moved_reset();
