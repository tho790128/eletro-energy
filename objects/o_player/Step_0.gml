up = keyboard_check(ord("W"))
down = keyboard_check(ord("S"))
left = keyboard_check(ord("A"))
right = keyboard_check(ord("D"))

estado()

if global.p_regen
{
    temp_reg--
    if temp_reg <= 0
    {
        global.vida += global.p_qtd_reg
    }
}

temp_dash2 --

vida= global.vida