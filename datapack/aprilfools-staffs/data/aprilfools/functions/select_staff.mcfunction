scoreboard players operation @s af_staff_type = @s af_staff
scoreboard players remove @s af_staff_type 1
scoreboard players operation @s af_staff_type /= THREE af_var

scoreboard players operation @s af_staff_quality = @s af_staff
scoreboard players remove @s af_staff_quality 1
scoreboard players operation @s af_staff_quality %= THREE af_var

execute if score @s af_staff_type matches 0 run function aprilfools:staffs/ender_staff/init
execute if score @s af_staff_type matches 1 run function aprilfools:staffs/fire_staff/init
execute if score @s af_staff_type matches 2 run function aprilfools:staffs/ice_staff/init
execute if score @s af_staff_type matches 3 run function aprilfools:staffs/mushroom_staff/init
execute if score @s af_staff_type matches 4 run function aprilfools:staffs/nether_staff/init
execute if score @s af_staff_type matches 5 run function aprilfools:staffs/poison_staff/init
execute if score @s af_staff_type matches 6 run function aprilfools:staffs/water_staff/init

execute if entity @s[gamemode=!creative] if score @s af_staff_quality matches 0 run function aprilfools:staffs/use_wooden_staff
execute if entity @s[gamemode=!creative] if score @s af_staff_quality matches 1 run function aprilfools:staffs/use_iron_staff
execute if entity @s[gamemode=!creative] if score @s af_staff_quality matches 2 run function aprilfools:staffs/use_diamond_staff