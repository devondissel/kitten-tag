function kitten_tag:tick/tick_map_running



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
clear @a[scores={is_alive=0}]








## arrow 2
execute as @e[type=minecraft:arrow,tag=!uuid_stored] store result score @s uuid0 run data get entity @s Owner[0]
execute as @e[type=minecraft:arrow,tag=!uuid_stored] store result score @s uuid1 run data get entity @s Owner[1]
tag @e[type=minecraft:arrow,tag=!uuid_stored] add uuid_stored


##arrow killing
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=1},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=1},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow1"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:1b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=2},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=2},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow2"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:2b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=3},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=3},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow3"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:3b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=4},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=4},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow4"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:4b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=5},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=5},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow5"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:5b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=6},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=6},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow6"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:6b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=7},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=7},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow7"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:7b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=8},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=8},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow8"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:8b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=9},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=9},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow9"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:9b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=10},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=10},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow10"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:10b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=11},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=11},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow11"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:11b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=12},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=12},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow12"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:12b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=13},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=13},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow13"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:13b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=14},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=14},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow14"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:14b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=15},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=15},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow15"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:15b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=16},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=16},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow16"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:16b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=17},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=17},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow17"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:17b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=18},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=18},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow18"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:18b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=19},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=19},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow19"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:19b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=20},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=20},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow20"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:20b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=21},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=21},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow21"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:21b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=22},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=22},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow22"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:22b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=23},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=23},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow23"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:23b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=24},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=24},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow24"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:24b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=25},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=25},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow25"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:25b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=26},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=26},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow26"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:26b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=27},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=27},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow27"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:27b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=28},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=28},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow28"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:28b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=29},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=29},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow29"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:29b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=30},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=30},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow30"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:30b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=31},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=31},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow31"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:31b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=32},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=32},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow32"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:32b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=33},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=33},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow33"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:33b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=34},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=34},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow34"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:34b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=35},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=35},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow35"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:35b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=36},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=36},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow36"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:36b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=37},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=37},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow37"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:37b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=38},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=38},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow38"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:38b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=39},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=39},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow39"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:39b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=40},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=40},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow40"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:40b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=41},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=41},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow41"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:41b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=42},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=42},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow42"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:42b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=43},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=43},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow43"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:43b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=44},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=44},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow44"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:44b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=45},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=45},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow45"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:45b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=46},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=46},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow46"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:46b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=47},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=47},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow47"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:47b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=48},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=48},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow48"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:48b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=49},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=49},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow49"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:49b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=50},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=50},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow50"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:50b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=51},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=51},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow51"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:51b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=52},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=52},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow52"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:52b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=53},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=53},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow53"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:53b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=54},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=54},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow54"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:54b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=55},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=55},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow55"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:55b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=56},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=56},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow56"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:56b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=57},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=57},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow57"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:57b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=58},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=58},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow58"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:58b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=59},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=59},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow59"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:59b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=60},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=60},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow60"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:60b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=61},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=61},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow61"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:61b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=62},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=62},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow62"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:62b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=63},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=63},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow63"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:63b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=64},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=64},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow64"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:64b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=65},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=65},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow65"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:65b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=66},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=66},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow66"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:66b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=67},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=67},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow67"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:67b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=68},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=68},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow68"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:68b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=69},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=69},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow69"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:69b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=70},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=70},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow70"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:70b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=71},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=71},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow71"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:71b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=72},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=72},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow72"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:72b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=73},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=73},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow73"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:73b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=74},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=74},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow74"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:74b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=75},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=75},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow75"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:75b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=76},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=76},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow76"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:76b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=77},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=77},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow77"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:77b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=78},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=78},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow78"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:78b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=79},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=79},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow79"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:79b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=80},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=80},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow80"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:80b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=81},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=81},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow81"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:81b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=82},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=82},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow82"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:82b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=83},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=83},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow83"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:83b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=84},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=84},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow84"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:84b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=85},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=85},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow85"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:85b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=86},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=86},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow86"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:86b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=87},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=87},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow87"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:87b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=88},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=88},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow88"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:88b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=89},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=89},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow89"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:89b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=90},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=90},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow90"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:90b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=91},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=91},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow91"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:91b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=92},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=92},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow92"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:92b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=93},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=93},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow93"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:93b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=94},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=94},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow94"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:94b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=95},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=95},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow95"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:95b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=96},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=96},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow96"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:96b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=97},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=97},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow97"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:97b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=98},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=98},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow98"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:98b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=99},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=99},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow99"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:99b,Duration:2}]}
execute as @e[type=minecraft:arrow,tag=!linked] if score @s uuid0 = @a[scores={player_id=100},limit=1] uuid0 if score @s uuid1 = @a[scores={player_id=100},limit=1] uuid1 run data merge entity @s {Tags:["linked","arrow100"],damage:0.1d,CustomPotionEffects:[{Id:13b,Amplifier:100b,Duration:2}]}

execute as @a[nbt={ActiveEffects:[{Id:13}]}] run function kitten_tag:game/player_killed



title @a[scores={killed_by=1}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=1}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=2}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=2}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=3}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=3}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=4}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=4}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=5}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=5}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=6}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=6}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=7}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=7}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=8}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=8}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=9}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=9}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=10}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=10}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=11}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=11}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=12}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=12}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=13}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=13}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=14}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=14}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=15}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=15}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=16}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=16}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=17}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=17}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=18}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=18}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=19}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=19}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=20}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=20}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=21}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=21}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=22}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=22}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=23}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=23}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=24}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=24}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=25}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=25}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=26}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=26}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=27}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=27}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=28}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=28}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=29}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=29}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=30}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=30}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=31}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=31}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=32}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=32}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=33}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=33}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=34}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=34}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=35}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=35}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=36}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=36}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=37}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=37}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=38}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=38}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=39}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=39}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=40}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=40}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=41}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=41}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=42}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=42}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=43}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=43}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=44}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=44}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=45}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=45}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=46}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=46}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=47}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=47}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=48}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=48}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=49}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=49}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=50}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=50}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=51}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=51}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=52}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=52}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=53}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=53}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=54}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=54}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=55}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=55}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=56}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=56}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=57}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=57}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=58}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=58}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=59}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=59}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=60}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=60}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=61}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=61}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=62}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=62}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=63}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=63}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=64}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=64}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=65}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=65}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=66}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=66}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=67}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=67}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=68}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=68}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=69}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=69}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=70}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=70}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=71}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=71}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=72}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=72}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=73}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=73}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=74}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=74}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=75}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=75}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=76}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=76}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=77}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=77}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=78}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=78}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=79}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=79}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=80}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=80}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=81}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=81}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=82}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=82}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=83}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=83}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=84}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=84}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=85}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=85}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=86}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=86}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=87}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=87}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=88}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=88}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=89}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=89}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=90}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=90}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=91}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=91}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=92}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=92}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=93}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=93}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=94}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=94}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=95}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=95}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=96}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=96}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=97}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=97}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=98}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=98}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=99}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=99}]","color":"red"},{"text":" dies","color":"red"}]
title @a[scores={killed_by=100}] actionbar [{"text":"You will respawn when ","color":"red"},{"selector":"@a[scores={player_id=100}]","color":"red"},{"text":" dies","color":"red"}]




function kitten_tag:game/cat_tower/init



## player win
scoreboard players set is_alive playercount 0
execute as @a[scores={is_alive=1}] run scoreboard players add is_alive playercount 1
execute if score is_alive playercount matches 1 run function kitten_tag:game/win_classic


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