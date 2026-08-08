image_alpha -= temp

if image_alpha <= 0
{
    
    instance_destroy()
}
if explode
{
    var _enemy = instance_place(x,y,o_entidades)
    if _enemy && _enemy != o_player
    {
        _enemy.perde_vida(dano,1)
    }
}

