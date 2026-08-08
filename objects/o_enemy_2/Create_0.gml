// Inherit the parent event
event_inherited();

max_vel = 2

estado = noone

temp_idle = 60 * 2
temp_attack = 38
temp_attack2 = 0
temp_attack3 = 60 * 5

idle_estado = function()
{
    troca_sprite(s_enemy2_idle)
    velh = 0
    velv = 0
    temp_idle--
    if temp_idle <= 0
    { 
        estado = attack_estado
    }
}

attack_estado = function()
{
    
    temp_attack--
    if temp_attack<= 0
    {
        troca_sprite(s_enemy2_floor)
        
        temp_attack2 --
        if temp_attack2 <= 0
        {
            dir = point_direction(x,y,o_player.x,o_player.y)
            temp_attack2 = 40
            
            
        }
        velh = lengthdir_x(max_vel,dir)
        velv = lengthdir_y(max_vel,dir)
        temp_dano = 1
        temp_attack3--
        if temp_attack3<= 0
        {
            temp_attack = 38
            temp_attack2 = 0
            temp_attack3 = 60 * 5
            estado = exit_floor
        }
        
        var _dano = instance_place(x,y,o_player) 
        var _enemy = instance_place(x,y,o_enemy)
        
        if _dano 
        {
            _dano.perde_vida(1,2)
        }
        
        if _enemy && instance_exists(_enemy)
        {
            _enemy.perde_vida(1)
        }
    }
    else
    {
        troca_sprite(s_enemy2_to_floor)
    }
}

exit_floor = function()
{
    velh = 0
    velv = 0
    temp_attack--
    troca_sprite(s_enemy2_exit_floor)
    if temp_attack <= 0
    {
        temp_attack = 38
        temp_idle = 60*2
        estado= idle_estado
    }
}

estado = idle_estado