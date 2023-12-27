## message
title @s times 0 20 0
title @a[tag=was_killed] times 0 20 0

title @s title [{"text":""}]
title @s subtitle [{"text":"You killed ","color":"red"},{"selector":"@a[tag=was_killed]","color":"red"},{"text":"!","color":"red"}]
title @a[tag=was_killed] title [{"text":"You were killed by ","color":"red"},{"selector":"@s","color":"red"},{"text":"!","color":"red"}]

tellraw @a [{"selector":"@a[tag=was_killed]","color":"red"},{"text":" was killed by ","color":"red"},{"selector":"@s","color":"red"},{"text":"!","color":"red"}]


execute at @a[tag=was_killed] run particle minecraft:heart ~ ~0.4 ~ 0.18 0.7 0.18 0 40 force




## killed
scoreboard players set @a[tag=was_killed] is_alive 0
gamemode spectator @a[tag=was_killed]
spectate @s @a[tag=was_killed,limit=1]

scoreboard players add @s kill_count 1
scoreboard players set @a[tag=was_killed] kill_count 0



## summon cat
function kitten_tag:game/summon_cat




## respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 1 as @a[scores={killed_by=1}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 2 as @a[scores={killed_by=2}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 3 as @a[scores={killed_by=3}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 4 as @a[scores={killed_by=4}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 5 as @a[scores={killed_by=5}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 6 as @a[scores={killed_by=6}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 7 as @a[scores={killed_by=7}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 8 as @a[scores={killed_by=8}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 9 as @a[scores={killed_by=9}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 10 as @a[scores={killed_by=10}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 11 as @a[scores={killed_by=11}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 12 as @a[scores={killed_by=12}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 13 as @a[scores={killed_by=13}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 14 as @a[scores={killed_by=14}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 15 as @a[scores={killed_by=15}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 16 as @a[scores={killed_by=16}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 17 as @a[scores={killed_by=17}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 18 as @a[scores={killed_by=18}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 19 as @a[scores={killed_by=19}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 20 as @a[scores={killed_by=20}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 21 as @a[scores={killed_by=21}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 22 as @a[scores={killed_by=22}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 23 as @a[scores={killed_by=23}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 24 as @a[scores={killed_by=24}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 25 as @a[scores={killed_by=25}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 26 as @a[scores={killed_by=26}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 27 as @a[scores={killed_by=27}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 28 as @a[scores={killed_by=28}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 29 as @a[scores={killed_by=29}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 30 as @a[scores={killed_by=30}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 31 as @a[scores={killed_by=31}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 32 as @a[scores={killed_by=32}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 33 as @a[scores={killed_by=33}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 34 as @a[scores={killed_by=34}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 35 as @a[scores={killed_by=35}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 36 as @a[scores={killed_by=36}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 37 as @a[scores={killed_by=37}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 38 as @a[scores={killed_by=38}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 39 as @a[scores={killed_by=39}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 40 as @a[scores={killed_by=40}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 41 as @a[scores={killed_by=41}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 42 as @a[scores={killed_by=42}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 43 as @a[scores={killed_by=43}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 44 as @a[scores={killed_by=44}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 45 as @a[scores={killed_by=45}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 46 as @a[scores={killed_by=46}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 47 as @a[scores={killed_by=47}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 48 as @a[scores={killed_by=48}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 49 as @a[scores={killed_by=49}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 50 as @a[scores={killed_by=50}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 51 as @a[scores={killed_by=51}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 52 as @a[scores={killed_by=52}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 53 as @a[scores={killed_by=53}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 54 as @a[scores={killed_by=54}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 55 as @a[scores={killed_by=55}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 56 as @a[scores={killed_by=56}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 57 as @a[scores={killed_by=57}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 58 as @a[scores={killed_by=58}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 59 as @a[scores={killed_by=59}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 60 as @a[scores={killed_by=60}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 61 as @a[scores={killed_by=61}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 62 as @a[scores={killed_by=62}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 63 as @a[scores={killed_by=63}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 64 as @a[scores={killed_by=64}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 65 as @a[scores={killed_by=65}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 66 as @a[scores={killed_by=66}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 67 as @a[scores={killed_by=67}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 68 as @a[scores={killed_by=68}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 69 as @a[scores={killed_by=69}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 70 as @a[scores={killed_by=70}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 71 as @a[scores={killed_by=71}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 72 as @a[scores={killed_by=72}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 73 as @a[scores={killed_by=73}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 74 as @a[scores={killed_by=74}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 75 as @a[scores={killed_by=75}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 76 as @a[scores={killed_by=76}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 77 as @a[scores={killed_by=77}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 78 as @a[scores={killed_by=78}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 79 as @a[scores={killed_by=79}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 80 as @a[scores={killed_by=80}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 81 as @a[scores={killed_by=81}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 82 as @a[scores={killed_by=82}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 83 as @a[scores={killed_by=83}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 84 as @a[scores={killed_by=84}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 85 as @a[scores={killed_by=85}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 86 as @a[scores={killed_by=86}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 87 as @a[scores={killed_by=87}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 88 as @a[scores={killed_by=88}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 89 as @a[scores={killed_by=89}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 90 as @a[scores={killed_by=90}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 91 as @a[scores={killed_by=91}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 92 as @a[scores={killed_by=92}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 93 as @a[scores={killed_by=93}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 94 as @a[scores={killed_by=94}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 95 as @a[scores={killed_by=95}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 96 as @a[scores={killed_by=96}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 97 as @a[scores={killed_by=97}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 98 as @a[scores={killed_by=98}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 99 as @a[scores={killed_by=99}] run function kitten_tag:game/respawn
execute if score @a[tag=was_killed,limit=1] player_id matches 100 as @a[scores={killed_by=100}] run function kitten_tag:game/respawn