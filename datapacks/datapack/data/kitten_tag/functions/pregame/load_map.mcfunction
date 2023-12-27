title @a times 0 100 20
title @a title {"text":"❤","color":"dark_red"}


scoreboard players reset * active_spawn
execute if score selected_map scoreboard matches 0 run scoreboard players set @e[tag=spawnspot_map0] active_spawn 1



execute as @a at @s if block ~ ~-2 ~ minecraft:pink_wool if block ~ ~-3 ~ minecraft:yellow_wool run function kitten_tag:game/find_spawnspot



execute as @a at @s if block ~ ~-2 ~ minecraft:pink_wool if block ~ ~-3 ~ minecraft:yellow_wool run scoreboard players set pregame game 0


bossbar set minecraft:clock visible true
bossbar set minecraft:clock name [{"score":{"name":"minutes","objective":"clock"},"color":"light_purple"},{"text":":","color":"light_purple"},{"score":{"name":"extrazero","objective":"clock"},"color":"light_purple"},{"score":{"name":"seconds","objective":"clock"},"color":"light_purple"}]