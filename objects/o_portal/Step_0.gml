if in
{
    var _player = instance_place(x,y,o_player)

    if _player && mouse_check_button(mb_left)
    {
        instance_destroy(_player)
        image_speed = 1
        image_index = 1
        
    }
    
    if image_speed == 1
    {
        if image_index >=  image_number-1.1
        {
            room_goto(rm_game)
        }
    }
}
else
{

    image_speed = 1

if image_index >=  image_number-1.5
{
    var _player = instance_create_depth(x,y,depth,o_player)
    _player.xscale = 1
    _player.yscale = 1
    troca_sprite(s_portal_in)
    image_index = image_number-1
    in = true
    image_speed = 0
}


       
    
    
}
