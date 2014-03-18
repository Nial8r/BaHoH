r_name = "Foyer"; //Room Name

r_top = false;  //can be on top
r_grd = true;   //can be on ground
r_bot = false;  //can be on bottom

r_type = RTYPE_NONE;    //room type

sprite_index = sprite0; //room sprite

door[DOOR_LEFT] = true;
door[DOOR_RIGHT] = true;
door[DOOR_TOP] = true;
door[DOOR_BOTTOM] = true;
//do events and such later
event_join = room_join;
event_leave = room_leave;
event_endturn = room_endturn;
event_create = room_create;
