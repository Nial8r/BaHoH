//Arguments:
//arg0: tx
//arg1: ty

tp = player;
//check leave event

if(script_execute(get_room(tp.tx,tp.ty).event_leave))
{                                                       //show_message("1");
    if(get_room(argument0,argument1)!=-1)
    {                                                   //show_message("2");
        if(!lastmoved_check(get_room(argument0,argument1)))
        {                                               //show_message("3");
            global.movedsquare[player.att_speed-player.moves_left]=get_room(tp.tx,tp.ty);
            global.lastmoved = get_room(tp.tx,tp.ty);
            tp.moves_left -=1;
        }
        else
        {                                               //show_message("4");
            tp.moves_left +=1;
            global.movedsquare[player.att_speed-player.moves_left] = -1;
            global.lastmoved = global.movedsquare[player.att_speed-player.moves_left-1];
        }
    }                                                   //show_message("5");
    else
    {
        place_room(/*server*/room_dummy,argument0,argument1);
        global.movedsquare[player.att_speed-player.moves_left]=get_room(tp.tx,tp.ty);
        global.lastmoved = get_room(tp.tx,tp.ty);
        tp.moves_left=0;
        script_execute(get_room(argument0,argument1).event_create);
    }
    tp.x = (argument0*200)+100;
    tp.y = (argument1*200)+100;
    tp.tx = argument0;
    tp.ty = argument1;
}                                                       //show_message("6");

//check join event
script_execute(get_room(argument0,argument1).event_join);
