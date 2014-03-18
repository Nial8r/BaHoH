//Arguments:
//arg0: tile
if(argument0!=-1)
{
    /*
    for(i=0;i<8;i+=1)
    {
        if(argument0 = global.movedsquare[i])
        return true;
    }
    */
    if(argument0 == global.lastmoved)
        return true;
}
return false;
