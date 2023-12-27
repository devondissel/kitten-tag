scoreboard players set loop scoreboard 3
scoreboard players reset * arrow_count


kill @e[type=minecraft:arrow]
kill @e[tag=power_up]



title @a times 0 100 20
title @a title [{"selector":"@a[scores={is_alive=1}]","color":"green"},{"text":" won!","color":"green"}]
title @a[scores={is_alive=1}] title [{"text":"You won!","color":"green"}]
tellraw @a [{"selector":"@a[scores={is_alive=1}]","color":"green"},{"text":" won the game!","color":"green"}]

clear @a minecraft:bow
clear @a minecraft:arrow