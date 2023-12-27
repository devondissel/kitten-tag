execute if score minutes clock matches 1.. run scoreboard players remove ticks clock 1
execute if score minutes clock matches 0 if score seconds clock matches 1.. run scoreboard players remove ticks clock 1


execute if score ticks clock matches ..0 run scoreboard players remove seconds clock 1
execute if score ticks clock matches ..0 run scoreboard players set ticks clock 20


execute if score seconds clock matches ..-1 if score minutes clock matches 1.. run scoreboard players remove minutes clock 1
execute if score seconds clock matches ..-1 if score minutes clock matches 0.. run scoreboard players set seconds clock 59


execute if score seconds clock matches 10.. run scoreboard players reset extrazero clock
execute if score seconds clock matches ..9 run scoreboard players set extrazero clock 0


bossbar set minecraft:clock name [{"score":{"name":"minutes","objective":"clock"},"color":"light_purple"},{"text":":","color":"light_purple"},{"score":{"name":"extrazero","objective":"clock"},"color":"light_purple"},{"score":{"name":"seconds","objective":"clock"},"color":"light_purple"}]