summon text_display ~ ~-50 ~ {Tags:["temp_textdisplay"],text:'{"selector":"@a[tag=was_killed]"}'}
execute if score @a[tag=was_killed,limit=1] skin_id matches 1 run summon cat ~ ~ ~ {Invulnerable:1b,variant:"minecraft:black",CustomNameVisible:1b,Tags:["temp_cat","cat_tower"],CustomName:'{"text":""}'}
execute if score @a[tag=was_killed,limit=1] skin_id matches 2 run summon cat ~ ~ ~ {Invulnerable:1b,variant:"minecraft:tabby",CustomNameVisible:1b,Tags:["temp_cat","cat_tower"],CustomName:'{"text":""}'}
execute if score @a[tag=was_killed,limit=1] skin_id matches 3 run summon cat ~ ~ ~ {Invulnerable:1b,variant:"minecraft:all_black",CustomNameVisible:1b,Tags:["temp_cat","cat_tower"],CustomName:'{"text":""}'}
execute if score @a[tag=was_killed,limit=1] skin_id matches 4 run summon cat ~ ~ ~ {Invulnerable:1b,variant:"minecraft:calico",CustomNameVisible:1b,Tags:["temp_cat","cat_tower"],CustomName:'{"text":""}'}
execute if score @a[tag=was_killed,limit=1] skin_id matches 5 run summon cat ~ ~ ~ {Invulnerable:1b,variant:"minecraft:jellie",CustomNameVisible:1b,Tags:["temp_cat","cat_tower"],CustomName:'{"text":""}'}
execute if score @a[tag=was_killed,limit=1] skin_id matches 6 run summon cat ~ ~ ~ {Invulnerable:1b,variant:"minecraft:persian",CustomNameVisible:1b,Tags:["temp_cat","cat_tower"],CustomName:'{"text":""}'}
execute if score @a[tag=was_killed,limit=1] skin_id matches 7 run summon cat ~ ~ ~ {Invulnerable:1b,variant:"minecraft:ragdoll",CustomNameVisible:1b,Tags:["temp_cat","cat_tower"],CustomName:'{"text":""}'}
execute if score @a[tag=was_killed,limit=1] skin_id matches 8 run summon cat ~ ~ ~ {Invulnerable:1b,variant:"minecraft:red",CustomNameVisible:1b,Tags:["temp_cat","cat_tower"],CustomName:'{"text":""}'}
data modify entity @e[tag=temp_cat,limit=1] CustomName set from entity @e[tag=temp_textdisplay,limit=1] text
kill @e[tag=temp_textdisplay]







scoreboard players operation @e[tag=temp_cat] cat_id = @s player_id
scoreboard players operation @e[tag=temp_cat] cat_height = @s kill_count




tag @e remove temp_cat