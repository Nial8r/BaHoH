//Arguments:
//arg0: current tx
//arg1: current ty
//arg2: ty
//arg3: tx

dpx = argument0;
dpy = argument1;
dtx = argument2;
dty = argument3;

if(can_move2(player,dtx,dty))
{

    if(space_has_room(dtx-1,dty))
    {
        if(get_room(dtx-1,dty).door[DOOR_RIGHT])
        {
            draw_set_color(c_blue);
            if(space_has_room(dpx,dpy))
                empty_nextto(dtx,dty,dtx-1,dty);
        }
    }
    else
    {
    }
    
    
    if(space_has_room(dtx+1,dty))
    {
        if(get_room(dtx+1,dty).door[DOOR_LEFT])
        {
            draw_set_color(c_blue);
            if(space_has_room(dpx,dpy))
                empty_nextto(dtx,dty,dtx+1,dty);
        }
    }
    else
    {
    }
    
    
    if(space_has_room(dtx,dty-1))
    {
        if(get_room(dtx,dty-1).door[DOOR_BOTTOM])
        {
            draw_set_color(c_blue);
            if(space_has_room(dpx,dpy))
                empty_nextto(dtx,dty,dtx,dty-1);
        }
    }
    else
    {
    }
    
    
    if(space_has_room(dtx,dty+1))
    {
        if(get_room(dtx,dty+1).door[DOOR_TOP])
        {
            draw_set_color(c_blue);
            if(space_has_room(dpx,dpy))
                empty_nextto(dtx,dty,dtx,dty+1);
        }
    }
    else
    {
    }
    
    
    if(!space_has_room(dtx-1,dty)&&!space_has_room(dtx+1,dty)&&!space_has_room(dtx,dty-1)&&!space_has_room(dtx,dty+1))
        draw_set_color(c_red);

}
else
{
    draw_set_color(c_red);
}
