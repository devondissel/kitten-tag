execute if score countdown lobby matches 0 run function kitten_tag:lobby/buttons_run
execute if block 9 105 84 minecraft:cherry_button[powered=true,face=wall,facing=east] run function kitten_tag:start_game/init



## particles
particle minecraft:end_rod 39 120 100 50 20 50 0 30 force



## tdm & spectator inventory
execute if score gamemode lobby matches 0..1 run function kitten_tag:player/inventory/clear_lobby
execute if score gamemode lobby matches 2 run function kitten_tag:player/inventory/clear_lobby_tdm
item replace entity @a[scores={is_spectator=1}] hotbar.8 with minecraft:diamond_chestplate{display:{Name:'{"text":"Spectate","italic":false}'},HideFlags:255} 1
item replace entity @a[scores={is_spectator=0}] hotbar.8 with minecraft:iron_chestplate{display:{Name:'{"text":"Spectate","italic":false}'},HideFlags:255} 1
scoreboard players set @a[nbt={Inventory:[{Slot:102b,id:"minecraft:diamond_chestplate"}]}] is_spectator 0
scoreboard players set @a[nbt={Inventory:[{Slot:102b,id:"minecraft:iron_chestplate"}]}] is_spectator 1


#
execute if score gamemode lobby matches 2 run function kitten_tag:lobby/tdm
scoreboard players set @a[nbt={Inventory:[{Slot:102b,id:"minecraft:golden_chestplate"}]}] team 2
scoreboard players set @a[nbt={Inventory:[{Slot:102b,id:"minecraft:golden_chestplate"}]}] is_spectator 0
scoreboard players set @a[nbt={Inventory:[{Slot:102b,id:"minecraft:chainmail_chestplate"}]}] team 1
scoreboard players set @a[nbt={Inventory:[{Slot:102b,id:"minecraft:chainmail_chestplate"}]}] is_spectator 0



#
scoreboard players set blue playercount 0
scoreboard players set red playercount 0
execute as @a[scores={team=1,is_spectator=0}] run scoreboard players add red playercount 1
execute as @a[scores={team=2,is_spectator=0}] run scoreboard players add blue playercount 1
execute as @a[scores={is_spectator=0,team=0}] run function kitten_tag:player/random_team


#


item replace entity @a armor.chest with air
title @a[scores={is_spectator=1}] actionbar {"text":"You are a spectator","color":"gray"}
execute if score gamemode lobby matches 0..1 run title @a[scores={is_spectator=0}] actionbar {"text":""}
execute if score gamemode lobby matches 2 run title @a[scores={is_spectator=0,team=1}] actionbar {"text":"You are in team red","color":"red"}
execute if score gamemode lobby matches 2 run title @a[scores={is_spectator=0,team=2}] actionbar {"text":"You are in team blue","color":"blue"}







## teams
execute if score gamemode lobby matches 0..1 run team join spectator @a[scores={is_spectator=1}] 
execute if score gamemode lobby matches 0..1 run team join lobby @a[scores={is_spectator=0}] 

execute if score gamemode lobby matches 2 run team join spectator @a[scores={is_spectator=1}] 
execute if score gamemode lobby matches 2 run team join red @a[scores={is_spectator=0,team=1}]
execute if score gamemode lobby matches 2 run team join blue @a[scores={is_spectator=0,team=2}]




## start game
execute if score countdown lobby matches 15 if score gamemode lobby matches 0 run tellraw @a [{"text":"[","color":"dark_purple"},{"text":"Kitten Tag","color":"light_purple"},{"text":"]","color":"dark_purple"},{"text":" Gamemode: ","color":"white"},{"text":"Classic","color":"gold"}]
execute if score countdown lobby matches 15 if score gamemode lobby matches 1 run tellraw @a [{"text":"[","color":"dark_purple"},{"text":"Kitten Tag","color":"light_purple"},{"text":"]","color":"dark_purple"},{"text":" Gamemode: ","color":"white"},{"text":"9 lives","color":"gold"}]
execute if score countdown lobby matches 15 if score gamemode lobby matches 2 run tellraw @a [{"text":"[","color":"dark_purple"},{"text":"Kitten Tag","color":"light_purple"},{"text":"]","color":"dark_purple"},{"text":" Gamemode: ","color":"white"},{"text":"Team Deathmatch","color":"gold"}]

execute if score countdown lobby matches 20 if score power_ups lobby matches 0 run tellraw @a [{"text":"[","color":"dark_purple"},{"text":"Kitten Tag","color":"light_purple"},{"text":"]","color":"dark_purple"},{"text":" Power Up\'s: ","color":"white"},{"text":"Disabled","color":"red"}]
execute if score countdown lobby matches 20 if score power_ups lobby matches 1 run tellraw @a [{"text":"[","color":"dark_purple"},{"text":"Kitten Tag","color":"light_purple"},{"text":"]","color":"dark_purple"},{"text":" Power Up\'s: ","color":"white"},{"text":"Enabled","color":"green"}]

execute if score countdown lobby matches 25 run tellraw @a [{"text":"[","color":"dark_purple"},{"text":"Kitten Tag","color":"light_purple"},{"text":"]","color":"dark_purple"},{"text":" Time: ","color":"white"},{"score":{"name":"game_time","objective":"lobby"},"color":"gold"},{"text":":00","color":"gold"}]




execute if score countdown lobby matches 1.. run scoreboard players add countdown lobby 1
execute if score countdown lobby matches 20 run function kitten_tag:start_game/countdown
execute if score countdown lobby matches 40 run function kitten_tag:start_game/countdown
execute if score countdown lobby matches 60 run function kitten_tag:start_game/countdown
execute if score countdown lobby matches 80 run function kitten_tag:start_game/countdown
execute if score countdown lobby matches 100 run function kitten_tag:start_game/countdown
execute if score countdown lobby matches 120 run function kitten_tag:start_game/countdown
execute if score countdown lobby matches 140 run function kitten_tag:start_game/countdown
execute if score countdown lobby matches 160 run function kitten_tag:start_game/countdown
execute if score countdown lobby matches 180 run function kitten_tag:start_game/countdown
execute if score countdown lobby matches 200 run function kitten_tag:pregame/init