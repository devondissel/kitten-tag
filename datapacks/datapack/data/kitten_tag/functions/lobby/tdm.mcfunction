item replace entity @a hotbar.0 with minecraft:chainmail_chestplate{display:{Name:'{"text":"Join red","italic":false}'},HideFlags:255} 1
item replace entity @a hotbar.1 with minecraft:golden_chestplate{display:{Name:'{"text":"Join blue","italic":false}'},HideFlags:255} 1
scoreboard players set @a[nbt={Inventory:[{Slot:102b,id:"minecraft:chainmail_chestplate"}]}] team 1
scoreboard players set @a[nbt={Inventory:[{Slot:102b,id:"minecraft:golden_chestplate"}]}] team 2