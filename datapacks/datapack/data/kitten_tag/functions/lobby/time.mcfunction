setblock 27 105 68 minecraft:cherry_button[powered=false,face=wall,facing=south]


scoreboard players add game_time lobby 1
execute if score game_time lobby matches 11 run scoreboard players set game_time lobby 15
execute if score game_time lobby matches 16 run scoreboard players set game_time lobby 20
execute if score game_time lobby matches 21 run scoreboard players set game_time lobby 30
execute if score game_time lobby matches 31 run scoreboard players set game_time lobby 1


data merge entity @e[type=text_display,tag=text_display_time,limit=1] {text:'[{"score":{"name":"game_time","objective":"lobby"},"color":"gold"},{"text":":00","color":"gold"}]'}

