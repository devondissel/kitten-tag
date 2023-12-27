function kitten_tag:tick/tick_map_running




function kitten_tag:game/cat_tower/init




scoreboard players add aftergame game 1
execute if score aftergame game matches 115.. as @e[tag=cat_tower] at @s run tp @s ~ -10000 ~
execute if score aftergame game matches 116.. run kill @e[tag=cat_tower]
execute if score aftergame game matches 120.. run function kitten_tag:game/stop

title @a subtitle [{"text":""}]



##cat towers
#execute if score playercount scoreboard matches 0..20 run function general:tower/20
#execute if score playercount scoreboard matches 21..60 run function general:tower/60
#execute as @e[tag=cattower] at @s run tp @s ~ ~ ~ ~10 ~
#
#
#
##give effects
#execute as @e[type=item,nbt={Age:0s}] run data merge entity @s {PickupDelay:0s}