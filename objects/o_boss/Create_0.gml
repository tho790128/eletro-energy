// Inherit the parent event
event_inherited();

vida = 250

estado = noone

temp_idle = 60 * 4
temp_atk1 = 30
temp_atk1_2 = 60 * 3

idle_estado = function()
{
    velh = 0
    velv = 0
    temp_idle--
    if temp_idle<= 0
    {
        temp_idle = irandom_range(60 * 2,60 * 7)
        estado = attack1_estado
    }
}

attack1_estado = function()
{
    temp_atk1--
    if temp_atk1<= 0
    {
        instance_create_depth(x,y,depth,o_tiro_boss)
        temp_atk1 = 30
    }
    temp_atk1_2--
    if temp_atk1_2<= 0
    {
        temp_atk1_2=60 * 3
        estado = idle_estado
    }
}

estado = idle_estado