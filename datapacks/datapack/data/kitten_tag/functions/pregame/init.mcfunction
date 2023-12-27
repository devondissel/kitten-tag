

effect give @a blindness infinite 1 true
effect give @a invisibility infinite 1 true
title @a times 20 250 0
title @a title {"text":"❤","color":"dark_red"}
tellraw @a [{"text":"[","color":"dark_purple"},{"text":"Kitten Tag","color":"light_purple"},{"text":"]","color":"dark_purple"},{"text":" Loading map...","color":"white"}]


scoreboard players set start lobby 0
scoreboard players set countdown lobby 0
scoreboard players set loop scoreboard 1
scoreboard players set pregame game 0


scoreboard players add .id game_id 1
scoreboard players operation @a game_id = .id game_id



scoreboard players operation selected_map scoreboard = selected_map lobby

scoreboard players reset * active_spawn
execute if score selected_map scoreboard matches 0 run scoreboard players set @e[tag=spawnspot_map0] active_spawn 1




execute if score selected_map scoreboard matches 0 run tp @a 1006.51 91.00 25.28



scoreboard players operation power_ups scoreboard = power_ups lobby
scoreboard players operation max_arrows scoreboard = max_arrows lobby
scoreboard players operation gamemode scoreboard = gamemode lobby



scoreboard players operation minutes clock = game_time lobby
scoreboard players set seconds clock 0
scoreboard players set ticks clock 20
scoreboard players set extrazero clock 0
scoreboard players set power_up clock 0




## players
scoreboard players reset * is_playing
scoreboard players set @a[scores={is_spectator=0}] is_playing 1
scoreboard players set ingame playercount 0
execute as @a[scores={is_playing=1}] run scoreboard players add ingame playercount 1

scoreboard players set @a[scores={is_playing=1}] is_alive 1

scoreboard players set @a stop_count 0



## player id
scoreboard players reset * player_id
scoreboard players add @a[scores={is_playing=1}] player_id 0
execute as @a[scores={is_playing=1}] run function kitten_tag:pregame/assign_player_id
execute if score gamemode scoreboard matches 0..1 run function kitten_tag:pregame/link_player_id

execute unless score gamemode scoreboard matches 1 run function kitten_tag:pregmae/no_prefix


## arrows
scoreboard players reset * arrow_charge
scoreboard players reset * arrow_count
scoreboard players set @a[scores={is_playing=1}] arrow_charge 0
scoreboard players set @a[scores={is_playing=1}] arrow_count 0




scoreboard players reset * kill_count
scoreboard players set @a[scores={is_alive=1}] kill_count 0



##gamerule
gamerule naturalRegeneration true
execute if score gamemode scoreboard matches 1 run gamerule naturalRegeneration false
effect clear @a[scores={is_playing=1}] resistance
execute if score gamemode scoreboard matches 1 as @a[scores={is_playing=1}] run damage @s 2
effect give @a[scores={is_playing=1}] resistance infinite 255 true


## player
clear @a
gamemode adventure @a 



time set 10000