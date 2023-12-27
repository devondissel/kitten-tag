## tick functions

function kitten_tag:tick/tick_always

execute if score loop scoreboard matches 0 run function kitten_tag:tick/tick_lobby
execute if score loop scoreboard matches 1 run function kitten_tag:tick/tick_pregame
execute if score loop scoreboard matches 2 if score gamemode scoreboard matches 0 run function kitten_tag:tick/tick_ingame_classic
execute if score loop scoreboard matches 2 if score gamemode scoreboard matches 1 run function kitten_tag:tick/tick_ingame_9lives
execute if score loop scoreboard matches 2 if score gamemode scoreboard matches 2 run function kitten_tag:tick/tick_ingame_tdm
execute if score loop scoreboard matches 3 run function kitten_tag:tick/tick_aftergame

