particle minecraft:block minecraft:red_mushroom_block ~ ~ ~ 1 1 1 0.05 5
execute if score @s af_action matches ..99 run tp @s ^ ^ ^1
execute if score @s af_action matches 100..299 run tp @s ~ ~-1 ~
execute if score @s af_action matches 300.. run kill @s
scoreboard players add @s af_action 1

execute unless block ~1 ~ ~ minecraft:air if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:red_mushroom
execute unless block ~-1 ~ ~ minecraft:air if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:red_mushroom
execute unless block ~ ~ ~1 minecraft:air if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:red_mushroom
execute unless block ~ ~ ~-1 minecraft:air if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:red_mushroom
execute unless block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run setblock ~ ~1 ~ minecraft:red_mushroom
execute unless block ~ ~ ~ minecraft:air run kill @s

execute as @e[tag=!af_action,distance=..2,type=!player,limit=1,sort=random] unless entity @s[type=mooshroom] unless entity @s[type=item] at @s run function aprilfools:staffs/mushroom_staff/convert
execute if entity @e[tag=af_mooshroom] run kill @s
tag @e[tag=af_mooshroom] remove af_mooshroom