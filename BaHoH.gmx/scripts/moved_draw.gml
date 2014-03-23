/*for(i=0;i<8;i+=1)
{
    if(global.movedsquare[i]!=-1)
    {
        draw_set_alpha(.35);
        if(global.movedsquare[i] == global.lastmoved)
            draw_set_alpha(.4);
        draw_set_color(c_yellow);
        draw_rectangle(global.movedsquare[i].tx*200,global.movedsquare[i].ty*200,((global.movedsquare[i].tx+1)*200)-1,((global.movedsquare[i].ty+1)*200)-1,0);
        draw_set_alpha(1);
    }
}
