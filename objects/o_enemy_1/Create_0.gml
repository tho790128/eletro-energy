event_inherited()

randomise()

velh = 0
velv = 0

max_vel = 1

campo_visao = 64

temp_idle = random_range(10,60 * 3)
temp_knock_back = 6
temp_attack = 10

temp_explode = 15

dir = 0

vida = 2

estado = noone

idle_estado = function()
{
    velh = 0
    velv = 0
    
    temp_idle --
    if temp_idle <= 0
    {
       
    
        estado = attack_estado
        
        temp_idle = 60 * 3
    }
    
}



attack_estado = function()
{
    var _dist = point_distance(x,y,o_player.x,o_player.y)
    
    if _dist >= campo_visao
    {
        temp_attack = 10
        dir = point_direction(x,y,o_player.x,o_player.y)
    
        velh = lengthdir_x(max_vel,dir)
        velv = lengthdir_y(max_vel,dir)
        
        
    
    }
    else
    {
        temp_attack --
        if temp_attack <= 0
        {
            estado = explode_estado
        }
        
    }
    
    
}

explode_estado = function()
{
    
    
    
    temp_explode--
    velh=0
    velv= 0
    if temp_explode <= 0
    {
        xscale += 0.2 * sign(xscale)
        yscale += 0.2 
        if xscale >= 2 or xscale <= -2
        {
            instance_destroy()
        }
    }
}

knockback_estado = function()
{
    
    velh = lengthdir_x(10,dir-180)
    velv = lengthdir_y(10,dir-180) 
    
    
    
    temp_knock_back--
    if temp_knock_back <= 0
    {
        estado= idle_estado
        temp_knock_back = 6
    }
}

estado = idle_estado