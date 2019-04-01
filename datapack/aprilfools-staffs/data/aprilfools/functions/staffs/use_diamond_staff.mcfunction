scoreboard players set durability af_var 0

execute if score @s af_staff_hand matches 0 if data entity @s SelectedItem.tag.VirtualDamage store result score durability af_var run data get entity @s SelectedItem.tag.VirtualDamage
execute if score @s af_staff_hand matches 1 if data entity @s Inventory[{Slot:-106b}].tag.VirtualDamage store result score durability af_var run data get entity @s Inventory[{Slot:-106b}].tag.VirtualDamage

scoreboard players add durability af_var 1
execute if score @s af_staff_hand matches 0 store result entity @s SelectedItem.tag.VirtualDamage int 1.0 run scoreboard players get durability af_var
execute if score @s af_staff_hand matches 1 store result entity @s Inventory[{Slot:-106b}].tag.VirtualDamage int 1.0 run scoreboard players get durability af_var

execute if score durability af_var matches 64.. run function aprilfools:staffs/break_staff

scoreboard players operation durability af_var *= TWENTYFIVE af_var
scoreboard players operation durability af_var /= SIXTYFOUR af_var
execute if score @s af_staff_hand matches 0 store result entity @s SelectedItem.tag.Damage int 1.0 run scoreboard players get durability af_var
execute if score @s af_staff_hand matches 1 store result entity @s Inventory[{Slot:-106b}].tag.Damage int 1.0 run scoreboard players get durability af_var