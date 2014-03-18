//moving GUI
if(keyboard_check(vk_left))
{
    view_xview -= 8;
}
if(keyboard_check(vk_right))
{
    view_xview += 8;
}
if(keyboard_check(vk_up))
{
    view_yview -= 8;
}
if(keyboard_check(vk_down))
{
    view_yview += 8;
}
if(mouse_wheel_down()&&view_hview<1440)
{
    view_hview += 40;
    view_wview += 68;
    view_yview -= 20;
    view_xview -= 34;
}
if(mouse_wheel_up()&&view_hview>720)
{
    view_hview -= 40;
    view_wview -= 68;
    view_yview += 20;
    view_xview += 34;
}

