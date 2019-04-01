execute as @a at @s run function aprilfools:check_staff

execute as @e[tag=af_ender_staff_action] at @s positioned as @s run function aprilfools:staffs/ender_staff/run
execute as @e[tag=af_fire_staff_action] at @s positioned as @s run function aprilfools:staffs/fire_staff/run
execute as @e[tag=af_ice_staff_action] at @s positioned as @s run function aprilfools:staffs/ice_staff/run
execute as @e[tag=af_mushroom_staff_action] at @s positioned as @s run function aprilfools:staffs/mushroom_staff/run
execute as @e[tag=af_nether_staff_action] at @s positioned as @s run function aprilfools:staffs/nether_staff/run
execute as @e[tag=af_poison_staff_action] at @s positioned as @s run function aprilfools:staffs/poison_staff/run
execute as @e[tag=af_water_staff_action] at @s positioned as @s run function aprilfools:staffs/water_staff/run

scoreboard players add @e[tag=af_frozen] af_action 1

execute as @e[tag=af_frozen,scores={af_action=100..}] at @s run function aprilfools:staffs/ice_staff/unfreeze