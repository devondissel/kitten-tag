setblock 25 105 68 minecraft:cherry_button[powered=false,face=wall,facing=south]

scoreboard players add gamemode lobby 1
#execute if score gamemode lobby matches 3 run scoreboard players set gamemode lobby 0
execute if score gamemode lobby matches 2 run scoreboard players set gamemode lobby 0

execute if score gamemode lobby matches 0 run data merge entity @e[type=text_display,tag=text_display_gamemode,limit=1] {text:'{"text":"Classic","color":"gold"}'}
execute if score gamemode lobby matches 1 run data merge entity @e[type=text_display,tag=text_display_gamemode,limit=1] {text:'{"text":"9 lives","color":"gold"}'}
execute if score gamemode lobby matches 2 run data merge entity @e[type=text_display,tag=text_display_gamemode,limit=1] {text:'{"text":"Team Deathmatch","color":"gold"}'}