execute if score playing playercount matches 101.. run tellraw @a [{"text":"[","color":"dark_red"},{"text":"ERROR","color":"red"},{"text":"]","color":"dark_red"},{"text":" Kitten Tag only supports a maximum of 100 players!","color":"white"}]
execute if score playing playercount matches 101.. run scoreboard players set start lobby 0
execute if score playing playercount matches ..100 run function kitten_tag:start_game/checklist_complete