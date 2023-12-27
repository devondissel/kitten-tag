tp @a 34 102 89

time set 12500


effect clear @a blindness
effect clear @a invisibility
gamemode adventure @a

scoreboard players reset * player_id
scoreboard players reset * arrow_count
scoreboard players reset * arrow_charge
scoreboard players reset * killed_by
scoreboard players reset * is_alive
scoreboard players reset * kill_count
scoreboard players reset * stop
scoreboard players reset * stop_count


scoreboard players set @e[scores={spawnspot_cooldown=1..}] spawnspot_cooldown 0
scoreboard players set @e active_spawn 0


scoreboard players set countdown lobby 0
scoreboard players set loop scoreboard 0
scoreboard players set game pregame 0
scoreboard players set lobby start 0

scoreboard players set aftergame game 0


scoreboard players set minutes clock 0
scoreboard players set seconds clock 0
scoreboard players set ticks clock 0
scoreboard players set extrazero clock 0


gamerule naturalRegeneration true
effect give @a instant_health 1 10 true

setblock 23 105 68 minecraft:cherry_button[powered=false,face=wall,facing=south]
setblock 25 105 68 minecraft:cherry_button[powered=false,face=wall,facing=south]
setblock 27 105 68 minecraft:cherry_button[powered=false,face=wall,facing=south]


clear @a bow
clear @a arrow

bossbar set minecraft:clock visible false
bossbar set minecraft:clock name [{"score":{"name":"minutes","objective":"clock"},"color":"light_purple"},{"text":":","color":"light_purple"},{"score":{"name":"extrazero","objective":"clock"},"color":"light_purple"},{"score":{"name":"seconds","objective":"clock"},"color":"light_purple"}]


title @a times 0 20 0
title @a title {"text":""}
title @a subtitle {"text":""}


scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list

function kitten_tag:pregmae/no_prefix

kill @e[tag=power_up]
kill @e[tag=cat_tower]