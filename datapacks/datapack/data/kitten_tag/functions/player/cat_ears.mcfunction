clear @a #minecraft:terracotta


item replace entity @a[scores={skin_id=1}] armor.head with minecraft:orange_glazed_terracotta{display:{Name:'{"text":"Black cat ears","color":"light_purple","italic":false}'},HideFlags:255,Enchantments:[{id:"binding_curse",lvl:1}]} 1
item replace entity @a[scores={skin_id=2}] armor.head with minecraft:white_glazed_terracotta{display:{Name:'{"text":"Tabby cat ears","color":"light_purple","italic":false}'},HideFlags:255,Enchantments:[{id:"binding_curse",lvl:1}]} 1
item replace entity @a[scores={skin_id=3}] armor.head with minecraft:lime_glazed_terracotta{display:{Name:'{"text":"Purple cat ears","color":"light_purple","italic":false}'},HideFlags:255,Enchantments:[{id:"binding_curse",lvl:1}]} 1
item replace entity @a[scores={skin_id=4}] armor.head with minecraft:black_glazed_terracotta{display:{Name:'{"text":"Calico cat ears","color":"light_purple","italic":false}'},HideFlags:255,Enchantments:[{id:"binding_curse",lvl:1}]} 1
item replace entity @a[scores={skin_id=5}] armor.head with minecraft:pink_glazed_terracotta{display:{Name:'{"text":"Jellie cat ears","color":"light_purple","italic":false}'},HideFlags:255,Enchantments:[{id:"binding_curse",lvl:1}]} 1
item replace entity @a[scores={skin_id=6}] armor.head with minecraft:light_blue_glazed_terracotta{display:{Name:'{"text":"Persian cat ears","color":"light_purple","italic":false}'},HideFlags:255,Enchantments:[{id:"binding_curse",lvl:1}]} 1
item replace entity @a[scores={skin_id=7}] armor.head with minecraft:yellow_glazed_terracotta{display:{Name:'{"text":"Ragdoll cat ears","color":"light_purple","italic":false}'},HideFlags:255,Enchantments:[{id:"binding_curse",lvl:1}]} 1
item replace entity @a[scores={skin_id=8}] armor.head with minecraft:magenta_glazed_terracotta{display:{Name:'{"text":"Orange cat ears","color":"light_purple","italic":false}'},HideFlags:255,Enchantments:[{id:"binding_curse",lvl:1}]} 1


execute if score gamemode lobby matches 2 run function kitten_tag:player/cat_armor