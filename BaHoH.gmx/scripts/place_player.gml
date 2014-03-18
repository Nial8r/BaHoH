tp = instance_create((argument1*200)+100,(argument2*200)+100,player); //create a player object
with(tp)
{
    script_execute(argument0);
}
tp.tx = argument1;
tp.ty = argument2;
