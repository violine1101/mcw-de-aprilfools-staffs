particle minecraft:cloud ~ ~ ~ 1 1 1 0.05 5
execute if score @s af_action matches ..99 run tp @s ^ ^ ^1
execute if score @s af_action matches 100..299 run tp @s ~ ~-1 ~
execute if score @s af_action matches 300.. run kill @s
scoreboard players add @s af_action 1

execute unless block ~1 ~ ~ minecraft:air if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:snow[layers=1]
execute unless block ~-1 ~ ~ minecraft:air if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:snow[layers=1]
execute unless block ~ ~ ~1 minecraft:air if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:snow[layers=1]
execute unless block ~ ~ ~-1 minecraft:air if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:snow[layers=1]
execute unless block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run setblock ~ ~1 ~ minecraft:snow[layers=1]
execute unless block ~ ~ ~ minecraft:air run kill @s

execute as @e[tag=!af_frozen,tag=!af_action,distance=..2,type=!player,type=!item,limit=1,sort=random] at @s run function aprilfools:staffs/ice_staff/freeze
execute if entity @e[tag=af_frozen,distance=..2] run kill @s