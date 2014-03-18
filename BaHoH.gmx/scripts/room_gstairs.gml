r_name = "Grand Staircase"; //Room Name

r_top = false;  //can be on top
r_grd = true;   //can be on ground
r_bot = false;  //can be on bottom

r_type = RTYPE_NONE;    //room type

sprite_index = sprite0; //room sprite

door[DOOR_LEFT] = false;
door[DOOR_RIGHT] = true;
door[DOOR_TOP] = false;
door[DOOR_BOTTOM] = false;

//do events and such later
event_join = room_join;
event_leave = room_gstairs_leave;
event_endturn = room_endturn;
event_create = room_create;
