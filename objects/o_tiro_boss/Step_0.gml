if desce
{
    vel +=0.01
    
    dir = lerp(dir,point_direction(x,y,tergetx,tergety),0.1)
    
    
    if point_distance(x,y,tergetx,tergety) <= 2
    {
        if place_meeting(x,y,o_player) && instance_exists(o_rastro_dash)
        {
            pow = true
        }
        troca_sprite(s_tiro_boss2)
        temp--
        if !pow vel = 0
        
        if temp <= 0
        {
            instance_create_depth(x,y,depth,o_explosao)
            instance_destroy()
        }
    }
    
}

if pow
{
    dir = point_direction(x,y,o_boss.x,o_boss.y)
    temp -= 0.1
    if temp <= 0
    {
        var _exp = instance_create_depth(x,y,depth,o_explosao)
        _exp.dano = 10
        instance_destroy()
    }
}

if y <= -20 desce = true

x += lengthdir_x(vel,dir)
y += lengthdir_y(vel,dir)

image_angle = dir