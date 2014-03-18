//Arguments:
//arg0: x1
//arg1: y1
//arg2: witdh
//arg3: height
//arg4: att

//if(mouse_inbounds(view_xview+argument0,view_yview+argument1,view_xview+argument2,view_yview+argument3))
if(mouse_inbounds2(argument0*(1+(.0525*((view_wview-1280)/68))),argument1*(1+(.055*((view_hview-720)/40))),argument2*(1+(.0525*((view_wview-1280)/68))),argument3*(1+(.055*((view_hview-720)/40)))))
{
    draw_set_color(c_aqua);
    draw_set_alpha(.4);
    draw_rectangle(argument0,argument1,argument2,argument3,0);
    draw_set_alpha(1);
    if(mouse_check_button_pressed(mb_left))
    {
        global.att_selected = argument4;
        dice_reset();
    }
}
