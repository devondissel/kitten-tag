scoreboard players set @s disconnect 0
scoreboard players set @s login 2

execute if score loop scoreboard matches 1.. run scoreboard players set @s is_alive 0
execute if score loop scoreboard matches 0 run scoreboard players set @s is_spectator 0
execute if score loop scoreboard matches 1.. run scoreboard players set @s is_spectator 1

gamemode adventure @s[scores={is_spectator=0}]
gamemode creative @s[scores={is_spectator=1}] 


function kitten_tag:player/login_teleport