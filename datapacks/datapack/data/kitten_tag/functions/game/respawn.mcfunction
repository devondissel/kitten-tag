tellraw @a [{"selector":"@s","color":"green"},{"text":" respawned!","color":"green"}]

scoreboard players set @s is_alive 1
scoreboard players set @s arrow_count 1
scoreboard players set @s arrow_charge 0

scoreboard players reset @s killed_by

gamemode adventure @s
function kitten_tag:game/find_spawnspot

clear @s minecraft:bow

item replace entity @s hotbar.0 with minecraft:bow{HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:infinity",lvl:1s}]} 1