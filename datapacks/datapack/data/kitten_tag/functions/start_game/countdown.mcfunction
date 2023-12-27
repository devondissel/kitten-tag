execute as @a at @s run playsound minecraft:block.note_block.hat master @s

title @a times 0 20 0
execute if score countdown lobby matches 20 run title @a title {"text":"9","color":"green"}
execute if score countdown lobby matches 40 run title @a title {"text":"8","color":"green"}
execute if score countdown lobby matches 60 run title @a title {"text":"7","color":"green"}
execute if score countdown lobby matches 80 run title @a title {"text":"6","color":"green"}
execute if score countdown lobby matches 100 run title @a title {"text":"5","color":"green"}
execute if score countdown lobby matches 120 run title @a title {"text":"4","color":"green"}
execute if score countdown lobby matches 140 run title @a title {"text":"3","color":"green"}
execute if score countdown lobby matches 160 run title @a title {"text":"2","color":"green"}
execute if score countdown lobby matches 180 run title @a title {"text":"1","color":"green"}