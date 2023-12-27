execute as @s[scores={stop_count=0}] run tellraw @a [{"text":"[","color":"dark_purple"},{"text":"Kitten Tag","color":"light_purple"},{"text":"] ","color":"dark_purple"},{"selector":"@s","color":"dark_red"},{"text":" wants to stop the game!","color":"dark_red"}]
execute as @s[scores={stop_count=0}] run tellraw @s [{"text":"[","color":"dark_purple"},{"text":"Kitten Tag","color":"light_purple"},{"text":"] ","color":"dark_purple"},{"text":" Are you sure that you want to stop the game? Trigger again to confirm!","color":"green"}]
execute as @s[scores={stop_count=1..}] run tellraw @a [{"text":"[","color":"dark_purple"},{"text":"Kitten Tag","color":"light_purple"},{"text":"] ","color":"dark_purple"},{"selector":"@s","color":"dark_red"},{"text":" stopped the game!","color":"dark_red"}]
execute as @s[scores={stop_count=1..}] run function kitten_tag:game/stop
scoreboard players set @s stop_count 120
