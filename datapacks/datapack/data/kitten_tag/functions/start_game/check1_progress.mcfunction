execute if score loop scoreboard matches 1.. run tellraw @a [{"text":"[","color":"dark_red"},{"text":"ERROR","color":"red"},{"text":"]","color":"dark_red"},{"text":" There is already a game already in progress!","color":"white"}]
execute if score loop scoreboard matches 1.. run scoreboard players set start lobby 0
execute if score loop scoreboard matches 0 run function kitten_tag:start_game/check2_playercount_low
