scoreboard players add @s arrow_charge 1


title @s[scores={arrow_charge=00..05}] actionbar [{"text":"░░░░░░░░░░░░","color":"gray"}]
title @s[scores={arrow_charge=06..10}] actionbar [{"text":"░","color":"light_purple"},{"text":"░░░░░░░░░░░","color":"gray"}]
title @s[scores={arrow_charge=11..15}] actionbar [{"text":"░░","color":"light_purple"},{"text":"░░░░░░░░░░","color":"gray"}]
title @s[scores={arrow_charge=16..20}] actionbar [{"text":"░░░","color":"light_purple"},{"text":"░░░░░░░░░","color":"gray"}]
title @s[scores={arrow_charge=21..25}] actionbar [{"text":"░░░░","color":"light_purple"},{"text":"░░░░░░░░","color":"gray"}]
title @s[scores={arrow_charge=26..30}] actionbar [{"text":"░░░░░","color":"light_purple"},{"text":"░░░░░░░","color":"gray"}]
title @s[scores={arrow_charge=31..35}] actionbar [{"text":"░░░░░░","color":"light_purple"},{"text":"░░░░░░","color":"gray"}]
title @s[scores={arrow_charge=36..40}] actionbar [{"text":"░░░░░░░","color":"light_purple"},{"text":"░░░░░","color":"gray"}]
title @s[scores={arrow_charge=41..45}] actionbar [{"text":"░░░░░░░░","color":"light_purple"},{"text":"░░░░","color":"gray"}]
title @s[scores={arrow_charge=46..50}] actionbar [{"text":"░░░░░░░░░","color":"light_purple"},{"text":"░░░","color":"gray"}]
title @s[scores={arrow_charge=51..65}] actionbar [{"text":"░░░░░░░░░░","color":"light_purple"},{"text":"░░","color":"gray"}]
title @s[scores={arrow_charge=56..60}] actionbar [{"text":"░░░░░░░░░░░","color":"light_purple"},{"text":"░","color":"gray"}]
title @s[scores={arrow_charge=61..62}] actionbar [{"text":"░░░░░░░░░░░░","color":"light_purple"}]

scoreboard players add @s[scores={arrow_charge=62}] arrow_count 1
execute if score @s[scores={arrow_charge=62}] arrow_count = max_arrows scoreboard run title @s actionbar [{"text":""}]
scoreboard players set @s[scores={arrow_charge=62..}] arrow_charge 0 

