particle minecraft:portal ~ ~ ~ 0 0 0 0.5 5
execute if score @s af_action matches ..99 run tp @s ^ ^ ^1
execute if score @s af_action matches 100..299 run tp @s ~ ~-1 ~
execute if score @s af_action matches 300.. run kill @s
scoreboard players add @s af_action 1

execute unless block ~ ~ ~ minecraft:air run tp @a[gamemode=!spectator] ~ ~1 ~
execute unless block ~ ~ ~ minecraft:air run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~
execute unless block ~ ~ ~ minecraft:air run kill @s

execute if entity @e[tag=!af_action,distance=..2,type=!player] run tp @a[gamemode=!spectator] ~ ~1 ~
execute if entity @e[tag=!af_action,distance=..2,type=!player] run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~
execute if entity @e[tag=!af_action,distance=..2,type=!player] run kill @s