scoreboard players reset * temp_id


execute as @a[scores={is_alive=1}] run scoreboard players operation @s temp_id = @s player_id
scoreboard players operation @a[scores={is_alive=1}] temp_id -= @s cat_id


## cat tp
tp @s @a[scores={temp_id=0},limit=1,sort=nearest]
execute at @s run tp @s ~ ~3 ~