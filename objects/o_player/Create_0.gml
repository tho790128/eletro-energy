event_inherited()

velh = 0
velv = 0

max_vel = 4

vel_dash = 1
temp_dash = 1

dash = false

up = false
down = false
left = false
right = false

vida = 5

estado = noone
idle_estado = function()
{
    velh = 0
    velv = 0
    
    if up or down or left or right
    {
        estado = walk_estado
    }
    if mouse_check_button(mb_left)
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
    
    if mouse_check_button(mb_left)
    {
        estado = dash_estado
    }
}


dash_estado = function()
{
    
    var _dir = point_direction(x,y,mouse_x,mouse_y)
    
    
    if mouse_check_button(mb_left)
    {
        vel_dash += 2
        temp_dash += 0.1
        
        velh = 0
        velv = 0
    }
    
    if mouse_check_button_released(mb_left)
    {
        dash = true
    }
    if dash
    {
        temp_dash --
        
        velh = lengthdir_x(vel_dash,_dir)
        velv = lengthdir_y(vel_dash,_dir)
        
        if temp_dash <= 0
        {
            var _explosao = instance_create_depth(x,y,depth,o_explosao)
            
            _explosao.temp = 0.02
            _explosao.dono = id
            
            dash = false
            vel_dash = 1
            
            estado = idle_estado
        }
    }
}
estado = idle_estado