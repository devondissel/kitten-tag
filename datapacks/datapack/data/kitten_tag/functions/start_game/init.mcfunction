scoreboard players add start lobby 1


execute if score start lobby matches 1 run function kitten_tag:start_game/check1_progress
execute if score start lobby matches 2 run function kitten_tag:start_game/cancel

execute if score start lobby matches 2 run scoreboard players set start lobby 0


setblock 9 105 84 minecraft:cherry_button[powered=false,face=wall,facing=east]