## login
scoreboard players add @a login 0
execute as @a[scores={login=0}] at @s run function kitten_tag:player/login_first
scoreboard players set @a[scores={disconnect=1}] login 1
execute as @a[scores={login=1}] at @s run function kitten_tag:player/login



## cat ears
function kitten_tag:player/cat_ears



## player count
scoreboard players set online playercount 0
execute as @a run scoreboard players add online playercount 1

scoreboard players set playing playercount 0
execute as @a[scores={is_spectator=0}] run scoreboard players add playing playercount 1



## bossbar
bossbar set minecraft:clock players @a




## player manage
xp set @a 0 points
scoreboard players add @a arrow_count 0
xp set @a[scores={arrow_count=0}] 0 levels
xp set @a[scores={arrow_count=1}] 1 levels
xp set @a[scores={arrow_count=2}] 2 levels
xp set @a[scores={arrow_count=3}] 3 levels
xp set @a[scores={arrow_count=4}] 4 levels
xp set @a[scores={arrow_count=5}] 5 levels
xp set @a[scores={arrow_count=6}] 6 levels
xp set @a[scores={arrow_count=7}] 7 levels
xp set @a[scores={arrow_count=8}] 8 levels
xp set @a[scores={arrow_count=9}] 9 levels
xp set @a[scores={arrow_count=10}] 10 levels
effect give @a saturation infinite 10 true
effect give @a resistance infinite 255 true
effect give @a weakness infinite 10 true
clear @a minecraft:arrow






## Items
execute as @e[type=item,nbt={Age:0s}] run data merge entity @s {PickupDelay:0s}






##store uuid
scoreboard players add @a uuid_stored 0
execute as @a[scores={uuid_stored=0}] store result score @s uuid0 run data get entity @s UUID[0]
execute as @a[scores={uuid_stored=0}] store result score @s uuid1 run data get entity @s UUID[1]
scoreboard players set @a uuid_stored 1



## trigger stop
execute if score loop scoreboard matches 0 run scoreboard players reset * stop
execute if score loop scoreboard matches 1.. run scoreboard players enable @a stop
execute if score loop scoreboard matches 1.. as @a unless score @s stop matches 0 run function kitten_tag:player/trigger_stop
scoreboard players set @a stop 0
scoreboard players remove @a[scores={stop_count=1..}] stop_count 1


##update player count
#scoreboard players set ingame playercount 0
#scoreboard players set ingamealive playercount 0
#scoreboard players set ingamered playercount 0
#scoreboard players set ingameblue playercount 0
#
#execute as @a[tag=ingame] run scoreboard players add ingame playercount 1
#execute as @a[tag=ingame,tag=alive] run scoreboard players add ingamealive playercount 1
#execute as @a[tag=ingame,tag=alive,team=red] run scoreboard players add ingamered playercount 1
#execute as @a[tag=ingame,tag=alive,team=blue] run scoreboard players add ingameblue playercount 1
#
#
#
#
##join leave detection
#execute as @a[tag=!joined] at @s run function kitten_tag:debug/login
#execute as @a[scores={leave=1..}] at @s run function kitten_tag:debug/login
#
#
#
##effects (remove later?)
#effect give @a saturation 99999 10 true
#effect give @a weakness 99999 10 true
#
#
#
#
#
##player ears (fix lateer)
#function kitten_tag:global/cat_ears
#
#
#execute as @a at @s unless score @s outfit matches 0 if entity @e[tag=lobby_cat1,distance=..1] run playsound minecraft:block.note_block.pling master @s
#execute as @a at @s unless score @s outfit matches 1 if entity @e[tag=lobby_cat2,distance=..1] run playsound minecraft:block.note_block.pling master @s
#execute as @a at @s unless score @s outfit matches 2 if entity @e[tag=lobby_cat3,distance=..1] run playsound minecraft:block.note_block.pling master @s
#execute as @a at @s unless score @s outfit matches 3 if entity @e[tag=lobby_cat4,distance=..1] run playsound minecraft:block.note_block.pling master @s
#execute as @a at @s unless score @s outfit matches 4 if entity @e[tag=lobby_cat5,distance=..1] run playsound minecraft:block.note_block.pling master @s
#execute as @a at @s unless score @s outfit matches 5 if entity @e[tag=lobby_cat6,distance=..1] run playsound minecraft:block.note_block.pling master @s
#execute as @a at @s unless score @s outfit matches 6 if entity @e[tag=lobby_cat7,distance=..1] run playsound minecraft:block.note_block.pling master @s
#
#execute as @a at @s unless score @s outfit matches 0 if entity @e[tag=lobby_cat1,distance=..1] run function kitten_tag:ears_select
#execute as @a at @s unless score @s outfit matches 1 if entity @e[tag=lobby_cat2,distance=..1] run function kitten_tag:ears_select
#execute as @a at @s unless score @s outfit matches 2 if entity @e[tag=lobby_cat3,distance=..1] run function kitten_tag:ears_select
#execute as @a at @s unless score @s outfit matches 3 if entity @e[tag=lobby_cat4,distance=..1] run function kitten_tag:ears_select
#execute as @a at @s unless score @s outfit matches 4 if entity @e[tag=lobby_cat5,distance=..1] run function kitten_tag:ears_select
#execute as @a at @s unless score @s outfit matches 5 if entity @e[tag=lobby_cat6,distance=..1] run function kitten_tag:ears_select
#execute as @a at @s unless score @s outfit matches 6 if entity @e[tag=lobby_cat7,distance=..1] run function kitten_tag:ears_select
#
#
#
#scoreboard players add @a team 0