#arrows
execute as @a[scores={is_playing=1,is_alive=1,arrow_count=..9}] at @s if entity @e[tag=power_up_1,distance=..1.5] run scoreboard players add @s arrow_count 1
execute as @a[scores={is_playing=1,is_alive=1,arrow_count=..9}] at @s if entity @e[tag=power_up_1,distance=..1.5] run scoreboard players add @s arrow_count 1
execute as @a[scores={is_playing=1,is_alive=1}] at @s if entity @e[tag=power_up_1,distance=..1.5] run kill @e[type=text_display,tag=power_up_1,distance=..1.5]

#cobweb
execute as @a[scores={is_playing=1,is_alive=1}] at @s if entity @e[tag=power_up_2,distance=..1.5] run effect give @s slowness 5 5 true
execute as @a[scores={is_playing=1,is_alive=1}] at @s if entity @e[tag=power_up_2,distance=..1.5] run effect give @s jump_boost 5 250 true
execute as @a[scores={is_playing=1,is_alive=1}] at @s if entity @e[tag=power_up_2,distance=..1.5] run playsound minecraft:entity.spider.step master @s ~ ~ ~ 1 2
execute as @a[scores={is_playing=1,is_alive=1}] at @s if entity @e[tag=power_up_2,distance=..1.5] run kill @e[type=text_display,tag=power_up_2,distance=..1.5]


#blindness
execute as @a[scores={is_playing=1,is_alive=1}] at @s if entity @e[tag=power_up_3,distance=..1.5] run effect give @s blindness 5 1 true
execute as @a[scores={is_playing=1,is_alive=1}] at @s if entity @e[tag=power_up_3,distance=..1.5] run playsound minecraft:entity.player.splash master @s ~ ~ ~ 1 2
execute as @a[scores={is_playing=1,is_alive=1}] at @s if entity @e[tag=power_up_3,distance=..1.5] run kill @e[type=text_display,tag=power_up_3,distance=..1.5]

#speed
execute as @a[scores={is_playing=1,is_alive=1}] at @s if entity @e[tag=power_up_4,distance=..1.5] run effect give @s speed 5 1 true
execute as @a[scores={is_playing=1,is_alive=1}] at @s if entity @e[tag=power_up_4,distance=..1.5] run playsound minecraft:entity.experience_orb.pickup master @s
execute as @a[scores={is_playing=1,is_alive=1}] at @s if entity @e[tag=power_up_4,distance=..1.5] run kill @e[type=text_display,tag=power_up_4,distance=..1.5]

#jumpboost
execute as @a[scores={is_playing=1,is_alive=1}] at @s if entity @e[tag=power_up_5,distance=..1.5] run effect give @s jump_boost 5 3 true
execute as @a[scores={is_playing=1,is_alive=1}] at @s if entity @e[tag=power_up_5,distance=..1.5] run playsound minecraft:entity.experience_orb.pickup master @s
execute as @a[scores={is_playing=1,is_alive=1}] at @s if entity @e[tag=power_up_5,distance=..1.5] run kill @e[type=text_display,tag=power_up_5,distance=..1.5]

#levitation
execute as @a[scores={is_playing=1,is_alive=1}] at @s if entity @e[tag=power_up_6,distance=..1.5] run effect give @s levitation 5 3 true
execute as @a[scores={is_playing=1,is_alive=1}] at @s if entity @e[tag=power_up_6,distance=..1.5] run playsound minecraft:entity.experience_orb.pickup master @s
execute as @a[scores={is_playing=1,is_alive=1}] at @s if entity @e[tag=power_up_6,distance=..1.5] run kill @e[type=text_display,tag=power_up_6,distance=..1.5]

#teleport
execute as @a[scores={is_playing=1,is_alive=1}] at @s if entity @e[tag=power_up_7,distance=..1.5] run tag @s add teleport
execute as @a[scores={is_playing=1,is_alive=1}] at @s if entity @e[tag=power_up_7,distance=..1.5] run kill @e[type=text_display,tag=power_up_7,distance=..1.5]
tp @a[tag=teleport] @e[tag=spawnspot,limit=1,sort=random,distance=10..]
execute as @a[tag=teleport] at @s run playsound minecraft:entity.enderman.teleport master @s
tag @a[tag=teleport] remove teleport


#glowing
execute as @a[scores={is_playing=1,is_alive=1}] at @s if entity @e[tag=power_up_8,distance=..1.5] run effect give @a[scores={is_alive=1},limit=4,sort=nearest] glowing 5 3 true
execute as @a[scores={is_playing=1,is_alive=1}] at @s if entity @e[tag=power_up_8,distance=..1.5] run playsound minecraft:block.enchantment_table.use master @s
execute as @a[scores={is_playing=1,is_alive=1}] at @s if entity @e[tag=power_up_8,distance=..1.5] run effect clear @s glowing
execute as @a[scores={is_playing=1,is_alive=1}] at @s if entity @e[tag=power_up_8,distance=..1.5] run kill @e[type=text_display,tag=power_up_8,distance=..1.5]



#kill
execute as @e[type=item,tag=power_up] at @s unless entity @e[tag=power_up,type=text_display,distance=..2] run kill @s