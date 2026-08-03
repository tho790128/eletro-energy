event_inherited()

randomise()

velh = 0
velv = 0

max_vel = 1

campo_visao = 64

temp_idle = random_range(10,60 * 3)
temp_walk = 60 * 5
temp_attack = 60 * 10

temp_explode = 15

dir = 0

estado = noone

idle_estado = function()
{
    velh = 0
    velv = 0
    
    temp_idle --
    if temp_idle <= 0
    {
        estado = choose(walk_estado,attack_estado)
       var _dist = point_distance(x,y,o_player.x,o_player.y)
    
        if _dist <= campo_visao * 2 estado = attack_estado
        
        dir = irandom(360)
        temp_idle = 60 * 3
    }
    
}

walk_estado = function()
{
    
    
    velh = lengthdir_x(max_vel,dir)
    velv = lengthdir_y(max_vel,dir)
    
    temp_walk --
    if temp_walk <= 0
    {
        estado = idle_estado
        temp_walk = 60 * 5
    }
}

attack_estado = function()
{
    var _dist = point_distance(x,y,o_player.x,o_player.y)
    
    if _dist >= campo_visao
    {
        temp_attack--
        dir = point_direction(x,y,o_player.x,o_player.y)
    
        velh = lengthdir_x(max_vel,dir)
        velv = lengthdir_y(max_vel,dir)
        
        if temp_attack <= 0
        {
            temp_attack = 60 * 10
            estado = idle_estado
        }
    
    }
    else
    {
        estado = explode_estado
    }
    
    
}

explode_estado = function()
{
    
    
    
    temp_explode--
    velh=0
    velv= 0
    if temp_explode <= 0
    {
        image_xscale += 0.2 * sign(image_xscale)
        image_yscale += 0.2 
        if image_xscale >= 2 or image_xscale <= -2
        {
            instance_destroy()
        }
    }
}

estado = idle_estado