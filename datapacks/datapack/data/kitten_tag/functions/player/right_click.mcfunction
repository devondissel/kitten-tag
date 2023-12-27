advancement revoke @s only kitten_tag:right_click
## cat ears
execute as @e[type=minecraft:interaction,tag=lobby_cat1] on target unless score @s skin_id matches 1 at @s run function kitten_tag:player/select_ears
execute as @e[type=minecraft:interaction,tag=lobby_cat2] on target unless score @s skin_id matches 2 at @s run function kitten_tag:player/select_ears
execute as @e[type=minecraft:interaction,tag=lobby_cat3] on target unless score @s skin_id matches 3 at @s run function kitten_tag:player/select_ears
execute as @e[type=minecraft:interaction,tag=lobby_cat4] on target unless score @s skin_id matches 4 at @s run function kitten_tag:player/select_ears
execute as @e[type=minecraft:interaction,tag=lobby_cat5] on target unless score @s skin_id matches 5 at @s run function kitten_tag:player/select_ears
execute as @e[type=minecraft:interaction,tag=lobby_cat6] on target unless score @s skin_id matches 6 at @s run function kitten_tag:player/select_ears
execute as @e[type=minecraft:interaction,tag=lobby_cat7] on target unless score @s skin_id matches 7 at @s run function kitten_tag:player/select_ears
execute as @e[type=minecraft:interaction,tag=lobby_cat8] on target unless score @s skin_id matches 8 at @s run function kitten_tag:player/select_ears


execute as @e[type=minecraft:interaction,tag=lobby_cat] run data remove entity @s interaction