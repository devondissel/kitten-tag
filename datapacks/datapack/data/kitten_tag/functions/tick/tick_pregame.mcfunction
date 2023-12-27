function kitten_tag:tick/tick_map_running




scoreboard players add pregame game 1
execute if score pregame game matches 150 run function kitten_tag:pregame/load_map



execute if score pregame game matches 210 run title @a title {"text":"❤","color":"dark_red"}
execute if score pregame game matches 211 run title @a title {"text":"❤❤","color":"dark_red"}
execute if score pregame game matches 212 run title @a title [{"text":"❤","color":"dark_red"},{"text":" ","color":"light_purple"},{"text":"❤","color":"dark_red"}]
execute if score pregame game matches 213 run title @a title [{"text":"❤","color":"dark_red"},{"text":"en","color":"light_purple"},{"text":"❤","color":"dark_red"}]
execute if score pregame game matches 214 run title @a title [{"text":"❤","color":"dark_red"},{"text":"ten ","color":"light_purple"},{"text":"❤","color":"dark_red"}]
execute if score pregame game matches 215 run title @a title [{"text":"❤","color":"dark_red"},{"text":"tten T","color":"light_purple"},{"text":"❤","color":"dark_red"}]
execute if score pregame game matches 216 run title @a title [{"text":"❤","color":"dark_red"},{"text":"itten Ta","color":"light_purple"},{"text":"❤","color":"dark_red"}]
execute if score pregame game matches 217 run title @a title [{"text":"❤","color":"dark_red"},{"text":"Kitten Tag","color":"light_purple"},{"text":"❤","color":"dark_red"}]
execute if score pregame game matches 218 run title @a title [{"text":"❤","color":"dark_red"},{"text":" Kitten Tag ","color":"light_purple"},{"text":"❤","color":"dark_red"}]
execute if score pregame game matches 219 run title @a title [{"text":"❤","color":"dark_red"},{"text":"  Kitten Tag  ","color":"light_purple"},{"text":"❤","color":"dark_red"}]
execute if score pregame game matches 220 run title @a title [{"text":"❤","color":"dark_red"},{"text":"   Kitten Tag   ","color":"light_purple"},{"text":"❤","color":"dark_red"}]
execute if score pregame game matches 220 run title @a times 0 30 10
execute if score pregame game matches 220 run title @a subtitle [{"text":"By Mynckey","color":"white"}]


execute if score pregame game matches 230 run function kitten_tag:game/start