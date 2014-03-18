//Arguments:
//arg0: room
//arg1: slot x num
//arg2: slot Y num

tr = instance_create(argument1*200,argument2*200,roomtile); //create a room object
with(tr)
{
    script_execute(argument0);
}
tr.tx = argument1;
tr.ty = argument2;
global.rest[argument1,argument2] = tr; //store room in array
