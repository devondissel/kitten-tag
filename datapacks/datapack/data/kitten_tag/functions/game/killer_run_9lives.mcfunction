## prefix
scoreboard players remove @a[tag=was_killed] lives 1
scoreboard players set @a[tag=was_killed,scores={lives=0}] is_alive 0
execute as @a[tag=was_killed] run function kitten_tag:game/update_prefix


title @s times 0 20 0
title @a[tag=was_killed] times 0 20 0

title @s title [{"text":""}]
title @s subtitle [{"text":"You killed ","color":"red"},{"selector":"@a[tag=was_killed]","color":"red"},{"text":"!","color":"red"}]

title @a[tag=was_killed] title [{"text":""}]
title @a[tag=was_killed] subtitle [{"text":"You were killed by ","color":"red"},{"selector":"@s","color":"red"},{"text":"!","color":"red"}]



execute at @a[tag=was_killed] run particle minecraft:heart ~ ~0.4 ~ 0.18 0.7 0.18 0 40 force







tellraw @a [{"selector":"@a[tag=was_killed]","color":"light_purple"},{"text":" was killed by ","color":"white"},{"selector":"@s","color":"light_purple"},{"text":"!","color":"light_purple"}]
execute if entity @a[tag=was_killed,scores={is_alive=0}] run tellraw @a [{"selector":"@a[tag=was_killed]","color":"red"},{"text":" died!","color":"red"}]


effect clear @a[tag=was_killed] resistance
damage @a[tag=was_killed,limit=1,scores={is_alive=1}] 3
effect give @a[tag=was_killed] resistance infinite 255 true

scoreboard players set @a[tag=was_killed] arrow_count 1
scoreboard players set @a[tag=was_killed] arrow_charge 0

execute as @a[tag=was_killed] run function kitten_tag:game/find_spawnspot
execute as @a[tag=was_killed,scores={is_alive=0}] run function kitten_tag:game/9lives_died
spectate @s @a[tag=was_killed,scores={is_alive=0},limit=1]



