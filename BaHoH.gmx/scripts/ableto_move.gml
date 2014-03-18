//Arguments:
//arg0: tx
//arg1: ty

//cr is equal to mouse. use
gx = argument0;
gy = argument1;
dr = get_room(gx,gy); //destination
cr = get_room(player.tx,player.ty); //current room

if(!player.turn||(player.moves_left<=0&&!moved_check(dr)))
    return false;


if(dr!=-1) //if destination is room
{
    if(dr.tx==player.tx||dr.ty==player.ty) //if destination is adjacent
    {
        if(moved_check(dr))
            return true;
        
        if(abs(dr.tx-player.tx)==1||abs(dr.ty-player.ty)==1) //if destination is 1 sq away
        {
            if(player.moves_left>0) //player has moves left
            {
                if(dr.tx<player.tx&&dr.door[DOOR_RIGHT]&&cr.door[DOOR_LEFT])
                    return true;
                if(dr.tx>player.tx&&dr.door[DOOR_LEFT]&&cr.door[DOOR_RIGHT])
                    return true;
                if(dr.ty<player.ty&&dr.door[DOOR_BOTTOM]&&cr.door[DOOR_TOP])
                    return true;
                if(dr.ty>player.ty&&dr.door[DOOR_TOP]&&cr.door[DOOR_BOTTOM])
                    return true;
            }
                if(moved_check(dr))
                {
                    return true;
                }
        }
    }
    

}
else //tile is empty
{
    if(gx==player.tx||gy==player.ty) //if destination is adjacent
    {
        if(abs(gx-player.tx)==1||abs(gy-player.ty)==1) //if destination is 1 sq away
        {
            if(gx<player.tx&&cr.door[DOOR_LEFT])
                return true;
            if(gx>player.tx&&cr.door[DOOR_RIGHT])
                return true;
            if(gy<player.ty&&cr.door[DOOR_TOP])
                return true;
            if(gy>player.ty&&cr.door[DOOR_BOTTOM])
                return true;
        }
    }
}

return false;
