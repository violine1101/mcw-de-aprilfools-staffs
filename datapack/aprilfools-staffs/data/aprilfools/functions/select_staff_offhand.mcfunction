scoreboard players set @s af_coas 0

execute store result score @s af_staff run data get entity @s Inventory[{Slot:-106b}].tag.CustomModelData
scoreboard players set @s af_staff_hand 1