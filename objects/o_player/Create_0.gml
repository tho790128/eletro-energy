event_inherited()

velh = 0
velv = 0

max_vel = 4

vel_dash = 20
temp_dash = 5

temp_dash2 = 60 * 1

dash = false

up = false
down = false
left = false
right = false

vida = 5

estado = noone
idle_estado = function()
{
    sprite_index = s_player_idle
    velh = 0
    velv = 0
    
    if up or down or left or right
    {
        estado = walk_estado
    }
    if mouse_check_button(mb_left) && temp_dash2 <= 0
    {
        estado = dash_estado
    }
}


walk_estado = function()
{
    if up or down or left or right
    {
        var _dir = point_direction(0,0,right -left,down - up)
    
        velh = lengthdir_x(max_vel,_dir)
        velv = lengthdir_y(max_vel,_dir)
    }
    else
    {
        estado = idle_estado
    }
    
    if mouse_check_button(mb_left) && temp_dash2 <= 0
    {
        estado = dash_estado
    }
}


dash_estado = function()
{
    
    var _dir = point_direction(x,y,mouse_x,mouse_y)
    
    
    
    
    if mouse_check_button(mb_left)
    {
        sprite_index = s_player_loading_dash
        
        velh = 0
        velv = 0
        temp_dano = 10
        dash = true
    }
    if dash
    {
        temp_dano = 10
        var _rastro = instance_create_depth(x,y,depth,o_rastro_dash)
        _rastro.sprite_index = sprite_index
        _rastro.image_index =  image_index
        _rastro.dono = id
        _rastro.image_alpha = image_alpha
        
        temp_dash --
        
        velh = lengthdir_x(vel_dash,_dir)
        velv = lengthdir_y(vel_dash,_dir)
        
        x += velh
        y += velv
        
        if temp_dash <= 0
        {
            
            
            dash = false
            
            temp_dash = 5
            
            temp_dash2 = 60
            
            estado = idle_estado
        }
    }
}
estado = idle_estado