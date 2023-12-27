execute if score blue playercount > red playercount run scoreboard players set @s team 1
execute if score blue playercount <= red playercount run scoreboard players set @s team 2
scoreboard players set blue playercount 0
scoreboard players set red playercount 0
execute as @a[scores={team=1,is_spectator=0}] run scoreboard players add red playercount 1
execute as @a[scores={team=2,is_spectator=0}] run scoreboard players add blue playercount 1