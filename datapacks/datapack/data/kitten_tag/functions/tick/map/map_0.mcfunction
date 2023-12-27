##spawn spots
scoreboard players remove @e[scores={spawnspot_cooldown=1..}] spawnspot_cooldown 1




## power ups
scoreboard players remove power_up clock 1
execute if score power_ups scoreboard matches 1 if score power_up clock matches 0 as @e[limit=1,tag=spawnspot,scores={active_spawn=1,spawnspot_cooldown=0},sort=random] at @s run function kitten_tag:game/powerup_spawn
execute if score power_up clock matches ..0 run scoreboard players set power_up clock 7


execute as @e[tag=power_up] run function kitten_tag:game/powerup_run
function kitten_tag:game/powerup_loop



## spectator
execute as @a[scores={is_spectator=1}] positioned 1000 160 0 unless entity @s[distance=..125] run tp @s ~ 110 ~
execute if score gamemode scoreboard matches 1.. as @a[scores={is_alive=0}] positioned 1000 160 0 unless entity @s[distance=..125] run tp @s ~ 110 ~