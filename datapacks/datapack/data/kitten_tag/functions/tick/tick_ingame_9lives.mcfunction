function kitten_tag:tick/tick_map_running


execute as @a[scores={is_alive=1}] run function kitten_tag:game/9lives_health


## clock
function kitten_tag:game/clock_run
execute if score seconds clock matches 0 if score minutes clock matches 0 run function kitten_tag:game/time_runout





## arrows & inventory
execute as @a[scores={is_playing=1}] run function kitten_tag:game/arrow_manage
execute as @a[scores={is_playing=1}] if score @s arrow_count < max_arrows scoreboard run function kitten_tag:game/arrow_charge
execute as @a[scores={is_playing=1}] unless score @s arrow_charge matches 0 unless score @s arrow_count < max_arrows scoreboard run title @s actionbar [{"text":""}] 
execute as @a[scores={is_playing=1}] unless score @s arrow_charge matches 0 unless score @s arrow_count < max_arrows scoreboard run scoreboard players set @s arrow_charge 0
kill @e[type=minecraft:arrow,nbt={inGround:1b}]
execute as @e[type=arrow] at @s run particle dust 1 0.3 0.65 0.8 ~ ~ ~ 0 0 0 0 1 force






## arrow 2
execute as @e[type=minecraft:arrow,tag=!uuid_stored] store result score @s uuid0 run data get entity @s Owner[0]
execute as @e[type=minecraft:arrow,tag=!uuid_stored] store result score @s uuid1 run data get entity @s Owner[1]
tag @e[type=minecraft:arrow,tag=!uuid_stored] add uuid_stored


##arrow killing
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=1},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=1},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:1b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=2},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=2},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:2b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=3},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=3},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:3b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=4},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=4},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:4b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=5},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=5},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:5b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=6},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=6},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:6b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=7},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=7},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:7b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=8},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=8},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:8b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=9},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=9},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:9b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=10},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=10},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:10b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=11},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=11},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:11b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=12},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=12},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:12b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=13},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=13},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:13b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=14},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=14},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:14b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=15},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=15},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:15b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=16},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=16},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:16b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=17},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=17},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:17b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=18},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=18},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:18b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=19},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=19},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:19b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=20},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=20},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:20b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=21},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=21},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:21b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=22},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=22},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:22b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=23},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=23},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:23b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=24},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=24},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:24b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=25},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=25},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:25b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=26},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=26},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:26b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=27},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=27},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:27b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=28},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=28},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:28b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=29},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=29},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:29b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=30},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=30},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:30b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=31},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=31},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:31b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=32},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=32},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:32b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=33},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=33},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:33b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=34},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=34},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:34b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=35},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=35},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:35b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=36},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=36},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:36b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=37},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=37},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:37b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=38},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=38},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:38b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=39},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=39},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:39b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=40},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=40},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:40b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=41},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=41},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:41b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=42},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=42},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:42b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=43},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=43},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:43b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=44},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=44},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:44b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=45},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=45},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:45b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=46},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=46},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:46b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=47},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=47},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:47b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=48},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=48},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:48b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=49},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=49},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:49b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=50},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=50},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:50b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=51},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=51},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:51b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=52},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=52},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:52b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=53},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=53},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:53b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=54},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=54},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:54b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=55},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=55},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:55b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=56},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=56},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:56b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=57},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=57},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:57b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=58},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=58},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:58b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=59},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=59},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:59b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=60},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=60},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:60b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=61},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=61},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:61b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=62},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=62},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:62b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=63},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=63},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:63b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=64},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=64},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:64b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=65},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=65},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:65b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=66},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=66},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:66b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=67},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=67},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:67b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=68},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=68},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:68b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=69},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=69},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:69b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=70},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=70},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:70b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=71},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=71},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:71b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=72},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=72},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:72b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=73},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=73},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:73b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=74},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=74},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:74b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=75},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=75},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:75b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=76},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=76},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:76b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=77},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=77},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:77b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=78},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=78},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:78b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=79},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=79},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:79b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=80},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=80},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:80b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=81},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=81},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:81b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=82},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=82},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:82b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=83},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=83},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:83b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=84},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=84},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:84b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=85},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=85},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:85b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=86},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=86},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:86b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=87},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=87},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:87b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=88},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=88},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:88b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=89},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=89},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:89b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=90},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=90},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:90b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=91},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=91},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:91b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=92},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=92},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:92b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=93},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=93},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:93b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=94},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=94},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:94b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=95},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=95},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:95b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=96},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=96},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:96b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=97},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=97},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:97b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=98},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=98},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:98b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=99},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=99},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:99b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=100},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=100},limit=1] uuid1 run data merge entity @s {Tags:["linked"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:100b,Duration:2}]}

execute as @a[nbt={ActiveEffects:[{Id:13}]}] run function kitten_tag:game/player_killed



## player win
scoreboard players set is_alive playercount 0
execute as @a[scores={is_alive=1}] run scoreboard players add is_alive playercount 1
execute if score is_alive playercount matches 1 run function kitten_tag:game/win_9lives


## time runout
execute if score minutes clock matches 0 if score seconds clock matches 0 run function kitten_tag:game/time_runout










#
##cat towers
#execute if score playercount scoreboard matches 0..20 run function general:tower/20
#execute if score playercount scoreboard matches 21..60 run function general:tower/60
#execute as @e[tag=cattower] at @s run tp @s ~ ~ ~ ~10 ~
#
#
#
#
#
#
#
##detect win
#execute if score gamemode scoreboard matches 0 if score ingamealive scoreboard matches 0 run function general:game/stop
#execute if score gamemode scoreboard matches 0 if score ingamealive scoreboard matches 1 run function general:game/endgame_win_ffa
#execute if score gamemode scoreboard matches 1 if score ingameblue scoreboard matches 0 run function general:game/endgame_tdm
#execute if score gamemode scoreboard matches 1 if score ingamered scoreboard matches 0 run function general:game/endgame_tdm
#
#
#
#
#
#
#
#
#
##spectator border
#execute as @a[tag=dead] store result score @s xPos run data get entity @s Pos[0]
#execute as @a[tag=dead] store result score @s yPos run data get entity @s Pos[1]
#execute as @a[tag=dead] store result score @s zPos run data get entity @s Pos[2]
#execute as @a[tag=dead,scores={xPos=..-61}] at @s run tp @s -60 ~ ~
#execute as @a[tag=dead,scores={xPos=39..}] at @s run tp @s 38 ~ ~
#execute as @a[tag=dead,scores={yPos=..100}] at @s run tp @s ~ 101 ~
#execute as @a[tag=dead,scores={yPos=140..}] at @s run tp @s ~ 139 ~
#execute as @a[tag=dead,scores={zPos=..100}] at @s run tp @s ~ ~ 101
#execute as @a[tag=dead,scores={zPos=197..}] at @s run tp @s ~ ~ 196
#
#
#
#
#