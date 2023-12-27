effect clear @a invisibility
effect clear @a blindness

execute if score gamemode scoreboard matches 0 run scoreboard objectives setdisplay list kill_count
execute if score gamemode scoreboard matches 0 run scoreboard objectives setdisplay sidebar kill_count

execute if score gamemode scoreboard matches 1 run scoreboard objectives setdisplay list
execute if score gamemode scoreboard matches 1 run scoreboard objectives setdisplay sidebar lives
scoreboard players reset * lives
execute if score gamemode scoreboard matches 1 run scoreboard players set @a[scores={is_playing=1}] lives 9
execute if score gamemode scoreboard matches 1 as @a[scores={is_playing=1}] run function kitten_tag:game/update_prefix

scoreboard players set loop scoreboard 2


item replace entity @a[scores={is_playing=1}] hotbar.0 with minecraft:bow{HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:infinity",lvl:1s}]} 1