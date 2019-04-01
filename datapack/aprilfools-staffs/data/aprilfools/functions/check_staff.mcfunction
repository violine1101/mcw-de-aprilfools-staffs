scoreboard players set @s af_staff 0

execute if score @s af_coas matches 1.. if data entity @s Inventory[{id:"minecraft:carrot_on_a_stick",Slot:-106b}] run function aprilfools:select_staff_offhand

execute if entity @s[scores={af_coas=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run function aprilfools:select_staff_mainhand

scoreboard players set @s af_coas 0

execute if score @s af_staff matches 1..21 run function aprilfools:select_staff