particle minecraft:flame ~ ~ ~ 1 1 1 0.05 5
execute if score @s af_action matches ..99 run tp @s ^ ^ ^1
execute if score @s af_action matches 100..299 run tp @s ~ ~-1 ~
execute if score @s af_action matches 300.. run kill @s
scoreboard players add @s af_action 1

execute unless block ~1 ~ ~ minecraft:air if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:fire
execute unless block ~-1 ~ ~ minecraft:air if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:fire
execute unless block ~ ~ ~1 minecraft:air if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:fire
execute unless block ~ ~ ~-1 minecraft:air if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:fire
execute unless block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run setblock ~ ~1 ~ minecraft:fire
execute unless block ~ ~ ~ minecraft:air run kill @s

execute if entity @e[tag=!af_action,distance=..1,type=!player] as @e[tag=!af_action,distance=..1,type=!player] at @s run setblock ~ ~ ~ fire
execute if entity @e[tag=!af_action,distance=..1,type=!player] run kill @s