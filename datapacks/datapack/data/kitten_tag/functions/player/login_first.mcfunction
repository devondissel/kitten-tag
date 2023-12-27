## player config
scoreboard players add @s is_spectator 0
scoreboard players add @s is_playing 0
scoreboard players set @s login 1
scoreboard players set @s team 1


scoreboard players operation @s skin_id = @e[tag=RNG,sort=random,limit=1] rng

