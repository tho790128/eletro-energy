scale += vel

if qtd > 0
{
    temp_qtd--
    if temp_qtd <= 0
    {
        instance_create_depth(x,y,depth,o_explosao)
        qtd= 0
        temp_qtd = 30
    }
}


if alpha <= 0
{
    instance_destroy()
}

dist_1 = scale - 2
dist_2 = scale + 2

with(o_entidades)
{
    var _dist = point_distance(x,y,other.x,other.y)
    
    if _dist < other.dist_2 && _dist > other.dist_1 && id != other.dono
    {
        perde_vida(other.dano)
    }
}

alpha -= temp