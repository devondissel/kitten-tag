
scoreboard players reset * temp_id
execute as @e[tag=cat_tower] run scoreboard players operation @s temp_id = @s cat_id
scoreboard players operation @e[tag=cat_tower] temp_id -= @s player_id
execute as @e[tag=cat_tower,scores={temp_id=0}] at @s run tp @s ~ -1000 ~
execute as @e[tag=cat_tower,scores={temp_id=0}] at @s run kill @s 
scoreboard players reset * temp_id