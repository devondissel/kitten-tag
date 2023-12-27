scoreboard players add @s spawnspot_cooldown 250


scoreboard players operation output rng = @e[tag=RNG,sort=random,limit=1] rng

execute if score output rng matches 1 run summon text_display ~ ~1 ~ {NoGravity:1b,billboard:"center",Tags:["power_up","power_up_1","new_power_up"],Passengers:[{id:"minecraft:item",PickupDelay:32767,Tags:["power_up","new_power_up"],Invulnerable:1b,NoGravity:1b,Item:{id:"minecraft:arrow",Count:1b}}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.55f,0f],scale:[1f,1f,1f]},text:'{"text":"10.0","color":"green"}',background:16777215}
execute if score output rng matches 2 run summon text_display ~ ~1 ~ {NoGravity:1b,billboard:"center",Tags:["power_up","power_up_2","new_power_up"],Passengers:[{id:"minecraft:item",PickupDelay:32767,Tags:["power_up","new_power_up"],Invulnerable:1b,NoGravity:1b,Item:{id:"minecraft:cobweb",Count:1b}}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.55f,0f],scale:[1f,1f,1f]},text:'{"text":"10.0","color":"green"}',background:16777215}
execute if score output rng matches 3 run summon text_display ~ ~1 ~ {NoGravity:1b,billboard:"center",Tags:["power_up","power_up_3","new_power_up"],Passengers:[{id:"minecraft:item",PickupDelay:32767,Tags:["power_up","new_power_up"],Invulnerable:1b,NoGravity:1b,Item:{id:"minecraft:ink_sac",Count:1b}}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.55f,0f],scale:[1f,1f,1f]},text:'{"text":"10.0","color":"green"}',background:16777215}
execute if score output rng matches 4 run summon text_display ~ ~1 ~ {NoGravity:1b,billboard:"center",Tags:["power_up","power_up_4","new_power_up"],Passengers:[{id:"minecraft:item",PickupDelay:32767,Tags:["power_up","new_power_up"],Invulnerable:1b,NoGravity:1b,Item:{id:"minecraft:feather",Count:1b}}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.55f,0f],scale:[1f,1f,1f]},text:'{"text":"10.0","color":"green"}',background:16777215}
execute if score output rng matches 5 run summon text_display ~ ~1 ~ {NoGravity:1b,billboard:"center",Tags:["power_up","power_up_5","new_power_up"],Passengers:[{id:"minecraft:item",PickupDelay:32767,Tags:["power_up","new_power_up"],Invulnerable:1b,NoGravity:1b,Item:{id:"minecraft:leather_boots",Count:1b}}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.55f,0f],scale:[1f,1f,1f]},text:'{"text":"10.0","color":"green"}',background:16777215}
execute if score output rng matches 6 run summon text_display ~ ~1 ~ {NoGravity:1b,billboard:"center",Tags:["power_up","power_up_6","new_power_up"],Passengers:[{id:"minecraft:item",PickupDelay:32767,Tags:["power_up","new_power_up"],Invulnerable:1b,NoGravity:1b,Item:{id:"minecraft:shulker_shell",Count:1b}}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.55f,0f],scale:[1f,1f,1f]},text:'{"text":"10.0","color":"green"}',background:16777215}
execute if score output rng matches 7 run summon text_display ~ ~1 ~ {NoGravity:1b,billboard:"center",Tags:["power_up","power_up_7","new_power_up"],Passengers:[{id:"minecraft:item",PickupDelay:32767,Tags:["power_up","new_power_up"],Invulnerable:1b,NoGravity:1b,Item:{id:"minecraft:ender_pearl",Count:1b}}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.55f,0f],scale:[1f,1f,1f]},text:'{"text":"10.0","color":"green"}',background:16777215}
execute if score output rng matches 8 run summon text_display ~ ~1 ~ {NoGravity:1b,billboard:"center",Tags:["power_up","power_up_8","new_power_up"],Passengers:[{id:"minecraft:item",PickupDelay:32767,Tags:["power_up","new_power_up"],Invulnerable:1b,NoGravity:1b,Item:{id:"minecraft:glowstone_dust",Count:1b}}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.55f,0f],scale:[1f,1f,1f]},text:'{"text":"10.0","color":"green"}',background:16777215}





scoreboard players set @e[tag=new_power_up] powerup_cooldown 200
tag @e[tag=new_power_up] remove new_power_up

