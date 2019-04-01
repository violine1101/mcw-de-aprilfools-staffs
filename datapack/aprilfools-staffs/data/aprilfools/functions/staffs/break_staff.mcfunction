playsound minecraft:entity.item.break player @s
execute if score @s af_staff_hand matches 0 run replaceitem entity @s weapon.mainhand air
execute if score @s af_staff_hand matches 1 run replaceitem entity @s weapon.offhand air