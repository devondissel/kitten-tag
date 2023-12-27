say debug



## remove scoreboards
scoreboard objectives remove scoreboard
scoreboard objectives remove playercount
scoreboard objectives remove is_spectator
scoreboard objectives remove login
scoreboard objectives remove disconnect
#scoreboard objectives remove game_id
scoreboard objectives remove lobby
scoreboard objectives remove active_spawn
scoreboard objectives remove spawnspot_cooldown
scoreboard objectives remove game
scoreboard objectives remove clock
scoreboard objectives remove rng
scoreboard objectives remove powerup_cooldown
scoreboard objectives remove player_id
scoreboard objectives remove shoot_arrow
scoreboard objectives remove arrow_count
scoreboard objectives remove arrow_charge
scoreboard objectives remove is_playing
scoreboard objectives remove killed_by
scoreboard objectives remove uuid0
scoreboard objectives remove uuid1
scoreboard objectives remove uuid_stored
scoreboard objectives remove is_alive
scoreboard objectives remove lives
scoreboard objectives remove lives2
scoreboard objectives remove kill_count
scoreboard objectives remove cat_id
scoreboard objectives remove cat_height
scoreboard objectives remove cat_height_temp
scoreboard objectives remove temp_id
scoreboard objectives remove stop
scoreboard objectives remove stop_count
scoreboard objectives remove team
scoreboard objectives remove skin_id
scoreboard objectives remove health


## add scoreboards
scoreboard objectives add scoreboard dummy
scoreboard objectives add playercount dummy
scoreboard objectives add is_spectator dummy
scoreboard objectives add login dummy
scoreboard objectives add disconnect minecraft.custom:minecraft.leave_game
#scoreboard objectives add game_id dummy
scoreboard objectives add lobby dummy
scoreboard objectives add active_spawn dummy
scoreboard objectives add spawnspot_cooldown dummy
scoreboard objectives add game dummy
scoreboard objectives add clock dummy
scoreboard objectives add rng dummy
scoreboard objectives add powerup_cooldown dummy
scoreboard objectives add player_id dummy
scoreboard objectives add shoot_arrow minecraft.used:minecraft.bow
scoreboard objectives add arrow_count dummy
scoreboard objectives add arrow_charge dummy
scoreboard objectives add is_playing dummy
scoreboard objectives add killed_by dummy
scoreboard objectives add uuid0 dummy
scoreboard objectives add uuid1 dummy
scoreboard objectives add uuid_stored dummy
scoreboard objectives add is_alive dummy
scoreboard objectives add lives dummy [{"text":"[","color":"dark_purple"},{"text":"Kitten Tag","color":"light_purple"},{"text":"]","color":"dark_purple"}]
scoreboard objectives add lives2 dummy
scoreboard objectives add kill_count dummy [{"text":"[","color":"dark_purple"},{"text":"Kitten Tag","color":"light_purple"},{"text":"]","color":"dark_purple"}]
scoreboard objectives add cat_id dummy
scoreboard objectives add cat_height dummy
scoreboard objectives add cat_height_temp dummy
scoreboard objectives add temp_id dummy
scoreboard objectives add stop trigger
scoreboard objectives add stop_count dummy
scoreboard objectives add team dummy
scoreboard objectives add skin_id dummy
scoreboard objectives add health health






## set scores
scoreboard players set loop scoreboard 0
scoreboard players set game_running scoreboard 0


scoreboard players set .id game_id 1

scoreboard players set map scoreboard 0
scoreboard players set start lobby 0
scoreboard players set countdown lobby 0
scoreboard players set selected_map lobby 0
scoreboard players set game_time lobby 15
scoreboard players set gamemode lobby 0
scoreboard players set max_arrows lobby 3
scoreboard players set power_ups lobby 1

scoreboard players set @a is_spectator 0

scoreboard players add @e[tag=spawnspot] spawnspot_cooldown 0


## clock
bossbar remove minecraft:clock
bossbar add minecraft:clock ""
bossbar set minecraft:clock visible false




## text display
kill @e[type=text_display]
summon text_display 27 105.7 68.05 {Tags:["text_display"],billboard:"fixed",text:'{"text":"Time","color":"light_purple"}'}
summon text_display 25 105.7 68.05 {Tags:["text_display"],billboard:"fixed",text:'{"text":"Gamemode","color":"light_purple"}'}
summon text_display 23 105.7 68.05 {Tags:["text_display"],billboard:"fixed",text:'{"text":"Power Up\'s","color":"light_purple"}'}

summon text_display 27 105.0 68.05 {Tags:["text_display","text_display_time"],billboard:"fixed",text:'[{"score":{"name":"game_time","objective":"lobby"},"color":"gold"},{"text":":00","color":"gold"}]'}
summon text_display 25 105.0 68.05 {Tags:["text_display","text_display_gamemode"],billboard:"fixed",text:'{"text":"Classic","color":"gold"}'}
summon text_display 23 105.0 68.05 {Tags:["text_display","text_display_ups"],billboard:"fixed",text:'{"text":"Enabled","color":"green"}'}


summon text_display 16.0 108.0 76.0 {Tags:["text_display",""],billboard:"center",text:'{"text":"Choose matching ears!","color":"gold"}'}


## random number generator
kill @e[tag=RNG]
summon minecraft:marker 100 80 100 {Tags:["RNG","RNG_1"]}
summon minecraft:marker 100 80 100 {Tags:["RNG","RNG_2"]}
summon minecraft:marker 100 80 100 {Tags:["RNG","RNG_3"]}
summon minecraft:marker 100 80 100 {Tags:["RNG","RNG_4"]}
summon minecraft:marker 100 80 100 {Tags:["RNG","RNG_5"]}
summon minecraft:marker 100 80 100 {Tags:["RNG","RNG_6"]}
summon minecraft:marker 100 80 100 {Tags:["RNG","RNG_7"]}
summon minecraft:marker 100 80 100 {Tags:["RNG","RNG_8"]}
scoreboard players set @e[tag=RNG_1] rng 1
scoreboard players set @e[tag=RNG_2] rng 2
scoreboard players set @e[tag=RNG_3] rng 3
scoreboard players set @e[tag=RNG_4] rng 4
scoreboard players set @e[tag=RNG_5] rng 5
scoreboard players set @e[tag=RNG_6] rng 6
scoreboard players set @e[tag=RNG_7] rng 7
scoreboard players set @e[tag=RNG_8] rng 8





#gamerules
gamerule doMobLoot false
gamerule drowningDamage false
gamerule naturalRegeneration true
gamerule showDeathMessages false
gamerule commandBlockOutput false
gamerule doImmediateRespawn true
gamerule doDaylightCycle false
gamerule doEntityDrops false
gamerule doFireTick false
gamerule doWeatherCycle false
gamerule fallDamage false
gamerule keepInventory true
gamerule randomTickSpeed 0
gamerule mobGriefing false
gamerule spectatorsGenerateChunks false
gamerule spawnRadius 0
gamerule doTileDrops false



## teams lobby
team remove lobby
team add lobby
team modify lobby collisionRule never

team remove spectator
team add spectator
team modify spectator collisionRule never
team modify spectator color gray






## dead
team remove dead
team add dead
team modify dead collisionRule never
team modify dead seeFriendlyInvisibles false
team modify dead color dark_gray

### team teams
team remove blue
team remove red
team remove blue_captured
team remove red_captured

team add blue
team add red
team add blue_captured
team add red_captured

team modify red friendlyFire false
team modify blue friendlyFire false
team modify red collisionRule never
team modify blue collisionRule never
team modify red color red
team modify blue color blue
team modify red nametagVisibility always
team modify blue nametagVisibility always

team modify red_captured friendlyFire false
team modify blue_captured friendlyFire false
team modify red_captured collisionRule never
team modify blue_captured collisionRule never
team modify red_captured color red
team modify blue_captured color blue
team modify red_captured nametagVisibility always
team modify blue_captured nametagVisibility always



### player teams
team remove player1
team remove player2
team remove player3
team remove player4
team remove player5
team remove player6
team remove player7
team remove player8
team remove player9
team remove player10
team remove player11
team remove player12
team remove player13
team remove player14
team remove player15
team remove player16
team remove player17
team remove player18
team remove player19
team remove player20
team remove player21
team remove player22
team remove player23
team remove player24
team remove player25
team remove player26
team remove player27
team remove player28
team remove player29
team remove player30
team remove player31
team remove player32
team remove player33
team remove player34
team remove player35
team remove player36
team remove player37
team remove player38
team remove player39
team remove player40
team remove player41
team remove player42
team remove player43
team remove player44
team remove player45
team remove player46
team remove player47
team remove player48
team remove player49
team remove player50
team remove player51
team remove player52
team remove player53
team remove player54
team remove player55
team remove player56
team remove player57
team remove player58
team remove player59
team remove player60
team remove player61
team remove player62
team remove player63
team remove player64
team remove player65
team remove player66
team remove player67
team remove player68
team remove player69
team remove player70
team remove player71
team remove player72
team remove player73
team remove player74
team remove player75
team remove player76
team remove player77
team remove player78
team remove player79
team remove player80
team remove player81
team remove player82
team remove player83
team remove player84
team remove player85
team remove player86
team remove player87
team remove player88
team remove player89
team remove player90
team remove player91
team remove player92
team remove player93
team remove player94
team remove player95
team remove player96
team remove player97
team remove player98
team remove player99
team remove player100

team add player1
team add player2
team add player3
team add player4
team add player5
team add player6
team add player7
team add player8
team add player9
team add player10
team add player11
team add player12
team add player13
team add player14
team add player15
team add player16
team add player17
team add player18
team add player19
team add player20
team add player21
team add player22
team add player23
team add player24
team add player25
team add player26
team add player27
team add player28
team add player29
team add player30
team add player31
team add player32
team add player33
team add player34
team add player35
team add player36
team add player37
team add player38
team add player39
team add player40
team add player41
team add player42
team add player43
team add player44
team add player45
team add player46
team add player47
team add player48
team add player49
team add player50
team add player51
team add player52
team add player53
team add player54
team add player55
team add player56
team add player57
team add player58
team add player59
team add player60
team add player61
team add player62
team add player63
team add player64
team add player65
team add player66
team add player67
team add player68
team add player69
team add player70
team add player71
team add player72
team add player73
team add player74
team add player75
team add player76
team add player77
team add player78
team add player79
team add player80
team add player81
team add player82
team add player83
team add player84
team add player85
team add player86
team add player87
team add player88
team add player89
team add player90
team add player91
team add player92
team add player93
team add player94
team add player95
team add player96
team add player97
team add player98
team add player99
team add player100



team modify player1 seeFriendlyInvisibles false
team modify player2 seeFriendlyInvisibles false
team modify player3 seeFriendlyInvisibles false
team modify player4 seeFriendlyInvisibles false
team modify player5 seeFriendlyInvisibles false
team modify player6 seeFriendlyInvisibles false
team modify player7 seeFriendlyInvisibles false
team modify player8 seeFriendlyInvisibles false
team modify player9 seeFriendlyInvisibles false
team modify player10 seeFriendlyInvisibles false
team modify player11 seeFriendlyInvisibles false
team modify player12 seeFriendlyInvisibles false
team modify player13 seeFriendlyInvisibles false
team modify player14 seeFriendlyInvisibles false
team modify player15 seeFriendlyInvisibles false
team modify player16 seeFriendlyInvisibles false
team modify player17 seeFriendlyInvisibles false
team modify player18 seeFriendlyInvisibles false
team modify player19 seeFriendlyInvisibles false
team modify player20 seeFriendlyInvisibles false
team modify player21 seeFriendlyInvisibles false
team modify player22 seeFriendlyInvisibles false
team modify player23 seeFriendlyInvisibles false
team modify player24 seeFriendlyInvisibles false
team modify player25 seeFriendlyInvisibles false
team modify player26 seeFriendlyInvisibles false
team modify player27 seeFriendlyInvisibles false
team modify player28 seeFriendlyInvisibles false
team modify player29 seeFriendlyInvisibles false
team modify player30 seeFriendlyInvisibles false
team modify player31 seeFriendlyInvisibles false
team modify player32 seeFriendlyInvisibles false
team modify player33 seeFriendlyInvisibles false
team modify player34 seeFriendlyInvisibles false
team modify player35 seeFriendlyInvisibles false
team modify player36 seeFriendlyInvisibles false
team modify player37 seeFriendlyInvisibles false
team modify player38 seeFriendlyInvisibles false
team modify player39 seeFriendlyInvisibles false
team modify player40 seeFriendlyInvisibles false
team modify player41 seeFriendlyInvisibles false
team modify player42 seeFriendlyInvisibles false
team modify player43 seeFriendlyInvisibles false
team modify player44 seeFriendlyInvisibles false
team modify player45 seeFriendlyInvisibles false
team modify player46 seeFriendlyInvisibles false
team modify player47 seeFriendlyInvisibles false
team modify player48 seeFriendlyInvisibles false
team modify player49 seeFriendlyInvisibles false
team modify player50 seeFriendlyInvisibles false
team modify player51 seeFriendlyInvisibles false
team modify player52 seeFriendlyInvisibles false
team modify player53 seeFriendlyInvisibles false
team modify player54 seeFriendlyInvisibles false
team modify player55 seeFriendlyInvisibles false
team modify player56 seeFriendlyInvisibles false
team modify player57 seeFriendlyInvisibles false
team modify player58 seeFriendlyInvisibles false
team modify player59 seeFriendlyInvisibles false
team modify player60 seeFriendlyInvisibles false
team modify player61 seeFriendlyInvisibles false
team modify player62 seeFriendlyInvisibles false
team modify player63 seeFriendlyInvisibles false
team modify player64 seeFriendlyInvisibles false
team modify player65 seeFriendlyInvisibles false
team modify player66 seeFriendlyInvisibles false
team modify player67 seeFriendlyInvisibles false
team modify player68 seeFriendlyInvisibles false
team modify player69 seeFriendlyInvisibles false
team modify player70 seeFriendlyInvisibles false
team modify player71 seeFriendlyInvisibles false
team modify player72 seeFriendlyInvisibles false
team modify player73 seeFriendlyInvisibles false
team modify player74 seeFriendlyInvisibles false
team modify player75 seeFriendlyInvisibles false
team modify player76 seeFriendlyInvisibles false
team modify player77 seeFriendlyInvisibles false
team modify player78 seeFriendlyInvisibles false
team modify player79 seeFriendlyInvisibles false
team modify player80 seeFriendlyInvisibles false
team modify player81 seeFriendlyInvisibles false
team modify player82 seeFriendlyInvisibles false
team modify player83 seeFriendlyInvisibles false
team modify player84 seeFriendlyInvisibles false
team modify player85 seeFriendlyInvisibles false
team modify player86 seeFriendlyInvisibles false
team modify player87 seeFriendlyInvisibles false
team modify player88 seeFriendlyInvisibles false
team modify player89 seeFriendlyInvisibles false
team modify player90 seeFriendlyInvisibles false
team modify player91 seeFriendlyInvisibles false
team modify player92 seeFriendlyInvisibles false
team modify player93 seeFriendlyInvisibles false
team modify player94 seeFriendlyInvisibles false
team modify player95 seeFriendlyInvisibles false
team modify player96 seeFriendlyInvisibles false
team modify player97 seeFriendlyInvisibles false
team modify player98 seeFriendlyInvisibles false
team modify player99 seeFriendlyInvisibles false
team modify player100 seeFriendlyInvisibles false

team modify player1 friendlyFire false
team modify player2 friendlyFire false
team modify player3 friendlyFire false
team modify player4 friendlyFire false
team modify player5 friendlyFire false
team modify player6 friendlyFire false
team modify player7 friendlyFire false
team modify player8 friendlyFire false
team modify player9 friendlyFire false
team modify player10 friendlyFire false
team modify player11 friendlyFire false
team modify player12 friendlyFire false
team modify player13 friendlyFire false
team modify player14 friendlyFire false
team modify player15 friendlyFire false
team modify player16 friendlyFire false
team modify player17 friendlyFire false
team modify player18 friendlyFire false
team modify player19 friendlyFire false
team modify player20 friendlyFire false
team modify player21 friendlyFire false
team modify player22 friendlyFire false
team modify player23 friendlyFire false
team modify player24 friendlyFire false
team modify player25 friendlyFire false
team modify player26 friendlyFire false
team modify player27 friendlyFire false
team modify player28 friendlyFire false
team modify player29 friendlyFire false
team modify player30 friendlyFire false
team modify player31 friendlyFire false
team modify player32 friendlyFire false
team modify player33 friendlyFire false
team modify player34 friendlyFire false
team modify player35 friendlyFire false
team modify player36 friendlyFire false
team modify player37 friendlyFire false
team modify player38 friendlyFire false
team modify player39 friendlyFire false
team modify player40 friendlyFire false
team modify player41 friendlyFire false
team modify player42 friendlyFire false
team modify player43 friendlyFire false
team modify player44 friendlyFire false
team modify player45 friendlyFire false
team modify player46 friendlyFire false
team modify player47 friendlyFire false
team modify player48 friendlyFire false
team modify player49 friendlyFire false
team modify player50 friendlyFire false
team modify player51 friendlyFire false
team modify player52 friendlyFire false
team modify player53 friendlyFire false
team modify player53 friendlyFire false
team modify player54 friendlyFire false
team modify player55 friendlyFire false
team modify player56 friendlyFire false
team modify player57 friendlyFire false
team modify player58 friendlyFire false
team modify player59 friendlyFire false
team modify player60 friendlyFire false
team modify player61 friendlyFire false
team modify player62 friendlyFire false
team modify player63 friendlyFire false
team modify player64 friendlyFire false
team modify player65 friendlyFire false
team modify player66 friendlyFire false
team modify player67 friendlyFire false
team modify player68 friendlyFire false
team modify player69 friendlyFire false
team modify player70 friendlyFire false
team modify player71 friendlyFire false
team modify player72 friendlyFire false
team modify player73 friendlyFire false
team modify player74 friendlyFire false
team modify player75 friendlyFire false
team modify player76 friendlyFire false
team modify player77 friendlyFire false
team modify player78 friendlyFire false
team modify player79 friendlyFire false
team modify player80 friendlyFire false
team modify player81 friendlyFire false
team modify player82 friendlyFire false
team modify player83 friendlyFire false
team modify player84 friendlyFire false
team modify player85 friendlyFire false
team modify player86 friendlyFire false
team modify player87 friendlyFire false
team modify player88 friendlyFire false
team modify player89 friendlyFire false
team modify player90 friendlyFire false
team modify player91 friendlyFire false
team modify player92 friendlyFire false
team modify player93 friendlyFire false
team modify player94 friendlyFire false
team modify player95 friendlyFire false
team modify player96 friendlyFire false
team modify player97 friendlyFire false
team modify player98 friendlyFire false
team modify player99 friendlyFire false
team modify player100 friendlyFire false




#summon cats
kill @e[tag=lobby_cat]

summon cat 14.35 105 78.85 {Silent:1b,PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Sitting:1b,variant:"minecraft:black",Tags:["lobby_cat","lobby_cat1"]}
summon cat 17.65 105 78.85 {Silent:1b,PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Sitting:1b,variant:"minecraft:tabby",Tags:["lobby_cat","lobby_cat2"]}
summon cat 18.85 105 77.65 {Silent:1b,PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Sitting:1b,variant:"minecraft:all_black",Tags:["lobby_cat","lobby_cat3"]}
summon cat 18.85 105 74.35 {Silent:1b,PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Sitting:1b,variant:"minecraft:calico",Tags:["lobby_cat","lobby_cat4"]}
summon cat 17.65 105 73.15 {Silent:1b,PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Sitting:1b,variant:"minecraft:jellie",Tags:["lobby_cat","lobby_cat5"]}
summon cat 14.35 105 73.15 {Silent:1b,PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Sitting:1b,variant:"minecraft:persian",Tags:["lobby_cat","lobby_cat6"]}
summon cat 13.15 105 74.35 {Silent:1b,PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Sitting:1b,variant:"minecraft:ragdoll",Tags:["lobby_cat","lobby_cat7"]}
summon cat 13.15 105 77.65 {Silent:1b,PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Sitting:1b,variant:"minecraft:red",Tags:["lobby_cat","lobby_cat8"]}

summon interaction 14.35 105 78.85 {Tags:["lobby_cat","lobby_cat1"],NoGravity:1b,Silent:1b,width:0.8f,height:0.8f}
summon interaction 17.65 105 78.85 {Tags:["lobby_cat","lobby_cat2"],NoGravity:1b,Silent:1b,width:0.8f,height:0.8f}
summon interaction 18.85 105 77.65 {Tags:["lobby_cat","lobby_cat3"],NoGravity:1b,Silent:1b,width:0.8f,height:0.8f}
summon interaction 18.85 105 74.35 {Tags:["lobby_cat","lobby_cat4"],NoGravity:1b,Silent:1b,width:0.8f,height:0.8f}
summon interaction 17.65 105 73.15 {Tags:["lobby_cat","lobby_cat5"],NoGravity:1b,Silent:1b,width:0.8f,height:0.8f}
summon interaction 14.35 105 73.15 {Tags:["lobby_cat","lobby_cat6"],NoGravity:1b,Silent:1b,width:0.8f,height:0.8f}
summon interaction 13.15 105 74.35 {Tags:["lobby_cat","lobby_cat7"],NoGravity:1b,Silent:1b,width:0.8f,height:0.8f}
summon interaction 13.15 105 77.65 {Tags:["lobby_cat","lobby_cat8"],NoGravity:1b,Silent:1b,width:0.8f,height:0.8f}


execute as @e[tag=lobby_cat] at @s facing 16.0 105 76.0 run tp @s ~ ~ ~ ~ 0



setblock 23 105 68 minecraft:cherry_button[powered=false,face=wall,facing=south]
setblock 25 105 68 minecraft:cherry_button[powered=false,face=wall,facing=south]
setblock 27 105 68 minecraft:cherry_button[powered=false,face=wall,facing=south]


## teleport players
tp @a 34 102 89
setworldspawn 34 102 89

effect clear @a



clear @a
gamemode adventure @a

function kitten_tag:game/stop






