global.qtd_enemy--
global.combo ++
global.temp_combo = global.maxtemp_combo

repeat (irandom_range(1,5))
{
	instance_create_depth(x,y,depth,o_coin)
}