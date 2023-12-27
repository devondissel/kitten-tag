execute as @e[type=minecraft:interaction,tag=lobby_cat1] on target run scoreboard players set @s skin_id 1
execute as @e[type=minecraft:interaction,tag=lobby_cat2] on target run scoreboard players set @s skin_id 2
execute as @e[type=minecraft:interaction,tag=lobby_cat3] on target run scoreboard players set @s skin_id 3
execute as @e[type=minecraft:interaction,tag=lobby_cat4] on target run scoreboard players set @s skin_id 4
execute as @e[type=minecraft:interaction,tag=lobby_cat5] on target run scoreboard players set @s skin_id 5
execute as @e[type=minecraft:interaction,tag=lobby_cat6] on target run scoreboard players set @s skin_id 6
execute as @e[type=minecraft:interaction,tag=lobby_cat7] on target run scoreboard players set @s skin_id 7
execute as @e[type=minecraft:interaction,tag=lobby_cat8] on target run scoreboard players set @s skin_id 8

playsound minecraft:entity.cat.ambient master @s

tellraw @s[scores={skin_id=1}] [{"text":"[","color":"purple"},{"text":"Kitten Tag","color":"light_purple"},{"text":"]","color":"purple"},{"text":" You are now a black cat!","color":"green"}]
tellraw @s[scores={skin_id=2}] [{"text":"[","color":"purple"},{"text":"Kitten Tag","color":"light_purple"},{"text":"]","color":"purple"},{"text":" You are now a tabby cat!","color":"green"}]
tellraw @s[scores={skin_id=3}] [{"text":"[","color":"purple"},{"text":"Kitten Tag","color":"light_purple"},{"text":"]","color":"purple"},{"text":" You are now a purple cat!","color":"green"}]
tellraw @s[scores={skin_id=4}] [{"text":"[","color":"purple"},{"text":"Kitten Tag","color":"light_purple"},{"text":"]","color":"purple"},{"text":" You are now a calico cat!","color":"green"}]
tellraw @s[scores={skin_id=5}] [{"text":"[","color":"purple"},{"text":"Kitten Tag","color":"light_purple"},{"text":"]","color":"purple"},{"text":" You are now a jellie cat!","color":"green"}]
tellraw @s[scores={skin_id=6}] [{"text":"[","color":"purple"},{"text":"Kitten Tag","color":"light_purple"},{"text":"]","color":"purple"},{"text":" You are now a persian cat!","color":"green"}]
tellraw @s[scores={skin_id=7}] [{"text":"[","color":"purple"},{"text":"Kitten Tag","color":"light_purple"},{"text":"]","color":"purple"},{"text":" You are now a ragdoll cat!","color":"green"}]
tellraw @s[scores={skin_id=8}] [{"text":"[","color":"purple"},{"text":"Kitten Tag","color":"light_purple"},{"text":"]","color":"purple"},{"text":" You are now an orange cat!","color":"green"}]