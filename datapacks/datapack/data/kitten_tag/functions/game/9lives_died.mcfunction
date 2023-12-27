## message
title @s times 0 20 0
title @a[tag=was_killed] times 0 40 20

title @s title [{"text":"You died!","color":"red"}]
title @s subtitle [{"text":"You killed ","color":"red"},{"selector":"@a[tag=was_killed]","color":"red"},{"text":"!","color":"red"}]
title @a[tag=was_killed] title [{"text":"You were killed by ","color":"red"},{"selector":"@s","color":"red"},{"text":"!","color":"red"}]


gamemode spectator @s
