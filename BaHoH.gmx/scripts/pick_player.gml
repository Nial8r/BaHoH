switch(get_string("wha' 'cho wan'","doctor"))
{
    case "doctor":
        return player_doctor;
    break;
    case "bigman":
        return player_bigman;
    break;
    case "whore":
        return player_whore;
    break;
    case "demongirl":
        return player_demongirl;
    break;
    case "faggotkid":
        return player_faggotkid;
    break;
    case "voodoowoman":
        return player_voodoowoman;
    break;
    default:
        return player_doctor;
    break;
}
