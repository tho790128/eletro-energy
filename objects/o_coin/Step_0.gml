var _player = instance_place(x,y,o_player)

if _player
{
    global.coin += valor
    instance_destroy()
}

x += lengthdir_x(vel,dir)
y += lengthdir_y(vel,dir)

vel = lerp(vel,0,0.05)
if instance_exists(o_player)
{
    if point_distance(x,y,o_player.x,o_player.y) <= 60 
    {
        dir = point_direction(x,y,o_player.x,o_player.y)
        vel += vel + 0.1
    }

}
