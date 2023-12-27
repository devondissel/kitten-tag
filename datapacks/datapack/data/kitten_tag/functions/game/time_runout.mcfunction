scoreboard players set loop scoreboard 3
scoreboard players reset * arrow_count


kill @e[type=minecraft:arrow]
kill @e[tag=power_up]


title @a times 0 100 20
title @a title [{"text":"Time's up!","color":"red"}]

clear @a minecraft:bow
clear @a minecraft:arrow