setblock 23 105 68 minecraft:cherry_button[powered=false,face=wall,facing=south]

scoreboard players add power_ups lobby 1
execute if score power_ups lobby matches 2 run scoreboard players set power_ups lobby 0

execute if score power_ups lobby matches 0 run data merge entity @e[type=text_display,tag=text_display_ups,limit=1] {text:'{"text":"Disabled","color":"red"}'}
execute if score power_ups lobby matches 1 run data merge entity @e[type=text_display,tag=text_display_ups,limit=1] {text:'{"text":"Enabled","color":"green"}'}