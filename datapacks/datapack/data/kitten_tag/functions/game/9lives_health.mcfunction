scoreboard players reset * lives2
scoreboard players operation @s lives2 = @s lives
scoreboard players operation @s lives2 += @s lives2


execute if score @s health > @s lives2 run effect clear @s resistance
execute if score @s health > @s lives2 run damage @s 1
execute if score @s health > @s lives2 run effect give @s resistance infinite 255 true





scoreboard players reset * lives2
scoreboard players operation @s lives2 = @s lives
scoreboard players operation @s lives2 += @s lives2


effect clear @s instant_health
execute if score @s health < @s lives2 run tag @s add addhealth
effect clear @s[tag=addhealth] resistance
effect give @s[tag=addhealth] instant_health 1 1 true
damage @s[tag=addhealth] 6
effect give @s[tag=addhealth] resistance infinite 255 true
tag @s remove addhealth