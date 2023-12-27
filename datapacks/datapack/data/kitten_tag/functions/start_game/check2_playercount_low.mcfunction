execute if score playing playercount matches ..1 run tellraw @a [{"text":"[","color":"dark_red"},{"text":"ERROR","color":"red"},{"text":"]","color":"dark_red"},{"text":" Need at least 2 players to start!","color":"white"}]
execute if score playing playercount matches ..1 run scoreboard players set start lobby 0
execute if score playing playercount matches 2.. run function kitten_tag:start_game/check3_playercount_high
 