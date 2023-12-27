scoreboard players reset * temp_id
scoreboard players reset * cat_height_temp


tag @s add temp_notselect
execute as @e[tag=!temp_notselect,scores={cat_id=1..}] run scoreboard players operation @s temp_id = @s cat_id
scoreboard players operation @e[tag=cat_tower,tag=!temp_not_selected] temp_id -= @s cat_id

execute as @e[tag=!temp_notselect,scores={temp_id=0}] run scoreboard players operation @s cat_height_temp = @s cat_height
scoreboard players operation @e[tag=!temp_notselect,scores={temp_id=0}] cat_height_temp -= @s cat_height


tag @s remove temp_notselect

## cat tp
tp @s @e[scores={temp_id=0,cat_height_temp=-1},limit=1,sort=nearest]
execute at @s run tp @s ~ ~1.2 ~

scoreboard players reset * temp_id
scoreboard players reset * cat_height_temp
