// Inherit the parent event
event_inherited();

estado = noone

temp_idle = irandom_range(30,60)
temp_attack = 5

max_vel = 3

vida = 5

idle_estado= function()
{
    velh = 0
    velv = 0
    temp_idle--
    if temp_idle <= 0
    {
        temp_idle=irandom_range(60*3,60*8)
        estado = attack_estado
    }
}

attack_estado = function()
{
    var _dir = point_direction(x,y,o_player.x,o_player.y)
    velh = lengthdir_x(max_vel*8,_dir)
    velv = lengthdir_y(max_vel*8,_dir)
    temp_attack--
    var _rastro = instance_create_depth(x,y,depth,o_rastro_dash)
    _rastro.sprite_index = sprite_index
    _rastro.explode = false
    
    if temp_attack<= 0
    {
        temp_attack= 5
        var _exp = instance_create_depth(x,y,depth,o_explosao)
        _exp.vel = 1
        estado = idle_estado
    }
}

estado = idle_estado
