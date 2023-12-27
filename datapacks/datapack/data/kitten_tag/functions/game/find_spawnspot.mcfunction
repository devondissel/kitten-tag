scoreboard players add @e[tag=spawnspot] spawnspot_cooldown 0
scoreboard players set @e[tag=spawnspot,scores={active_spawn=1,spawnspot_cooldown=0},limit=1,sort=random] spawnspot_cooldown 200
execute at @e[tag=spawnspot,scores={active_spawn=1,spawnspot_cooldown=200},limit=1,sort=random] run tp @s ~ ~ ~
scoreboard players set @e[tag=spawnspot,scores={spawnspot_cooldown=200}] spawnspot_cooldown 100