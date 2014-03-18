dx = floor(mouse_x/200);
dy = floor(mouse_y/200);
cr = get_room(player.tx,player.ty);

if(!space_has_room(dx,dy))
{
    if(cr.tx==dx||cr.ty==dy)
    {
        draw_set_color(c_red);
        if((abs(cr.tx-dx)==1&&abs(cr.ty-dy)==0)||(abs(cr.ty-dy)==1&&abs(cr.tx-dx)==0))
        {
            if(player.moves_left>0)
            {
                if(cr.tx<dx&&cr.door[DOOR_RIGHT])
                    draw_set_color(c_green);
                if(cr.tx>dx&&cr.door[DOOR_LEFT])
                    draw_set_color(c_green);
                if(cr.ty<dy&&cr.door[DOOR_BOTTOM])
                    draw_set_color(c_green);
                if(cr.ty>dy&&cr.door[DOOR_TOP])
                    draw_set_color(c_green);
            }
        }
    }
    else
    {
        draw_set_color(c_red);
        empty_nextto(player.tx,player.ty,dx,dy);
    }
}


else if(can_move(player,get_room(dx,dy)))
{
    dr = get_room(dx,dy);
    draw_set_color(c_blue);
    if((abs(cr.tx-dx)==1&&abs(cr.ty-dy)==0)||(abs(cr.ty-dy)==1&&abs(cr.tx-dx)==0))
    {
        if(cr.tx<dx&&cr.door[DOOR_RIGHT]&&dr.door[DOOR_LEFT])
            draw_set_color(c_aqua);
        if(cr.tx>dx&&cr.door[DOOR_LEFT]&&dr.door[DOOR_RIGHT])
            draw_set_color(c_aqua);
        if(cr.ty<dy&&cr.door[DOOR_BOTTOM]&&dr.door[DOOR_TOP])
            draw_set_color(c_aqua);
        if(cr.ty>dy&&cr.door[DOOR_TOP]&&dr.door[DOOR_BOTTOM])
            draw_set_color(c_aqua);
    }
}
else
{
    draw_set_color(c_red);
}


if(player.turn)
{
    if(cr.tx==dx&&cr.ty==dy)
        draw_set_alpha(0);
    else if(moved_check(get_room(dx,dy)))
        draw_set_alpha(0);
    else
        draw_set_alpha(.35);
    draw_rectangle(dx*200,dy*200,((dx+1)*200)-1,((dy+1)*200)-1,0);
    draw_set_alpha(1);
    
    moved_draw();
}
