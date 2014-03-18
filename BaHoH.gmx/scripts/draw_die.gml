//Arguments:
//arg0: ID of die
//arg1: num to draw
did = argument0;
//num = argument1;

dx = 1010 + (did * 60);
dy = 190;
if(did > 3)
    {
        dx = 1010 + ((did-4) * 60);
        dy = 250;
    }

draw_set_color(c_black);
draw_rectangle(dx,dy,dx+40,dy+40,1); 
if(global.att_selected>=did+1)
{
    draw_set_color(c_white);
    draw_rectangle(dx+1,dy+1,dx+39,dy+39,0);
    if(global.dicenum[did]!=-1)
    {
        draw_set_color(c_black);
        draw_set_font(fnt_bold);
        draw_text(dx+17,dy+16,string(global.dicenum[did]));
    }
}
