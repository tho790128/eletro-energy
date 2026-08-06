event_inherited()

velh = 0
velv = 0

max_vel = 4

vel_dash = 40
temp_dash = 5

temp_dash2 = 0

dash = false

up = false
down = false
left = false
right = false

vida = 5

estado = noone
idle_estado = function()
{
    troca_sprite(s_player_idle)
    velh = 0
    velv = 0
    
    xscale = lerp(xscale,1,0.1)
    yscale = lerp(yscale,1,0.1)
    
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
    xscale = lerp(xscale,1.1,0.1)
    yscale = lerp(yscale,1.1,0.1)
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
    
    yscale = lerp(yscale,0.5,0.1)
    
    
    if mouse_check_button(mb_left)
    {
        troca_sprite(s_player_loading_dash)
        
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
        
        
        
        if temp_dash <= 0
        {
            if global.combo > 0
            {
                global.dash_combo ++
            }
            
            dash = false
            
            temp_dash = 5
            
            temp_dash2 = 60
            
            estado = idle_estado
        }
    }
}
estado = idle_estado