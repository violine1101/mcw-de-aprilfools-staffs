particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.05 5
execute if score @s af_action matches ..99 run tp @s ^ ^ ^1
execute if score @s af_action matches 100..299 run tp @s ~ ~-1 ~
execute if score @s af_action matches 300.. run kill @s
scoreboard players add @s af_action 1

execute unless block ~1 ~ ~ minecraft:air if block ~ ~ ~ minecraft:air run summon area_effect_cloud ~ ~ ~ {Age:0s,Duration:600,Effects:[{Ambient:1b,Amplifier:0b,Duration:200,Id:19,ShowParticles:1b}],Radius:2.0f,RadiusOnUse:-1.0f,RadiusPerTick:-0.01f,ReapplicationDelay:20,WaitTime:20}
execute unless block ~-1 ~ ~ minecraft:air if block ~ ~ ~ minecraft:air run summon area_effect_cloud ~ ~ ~ {Age:0s,Duration:600,Effects:[{Ambient:1b,Amplifier:0b,Duration:200,Id:19,ShowParticles:1b}],Radius:2.0f,RadiusOnUse:-1.0f,RadiusPerTick:-0.01f,ReapplicationDelay:20,WaitTime:20}
execute unless block ~ ~ ~1 minecraft:air if block ~ ~ ~ minecraft:air run summon area_effect_cloud ~ ~ ~ {Age:0s,Duration:600,Effects:[{Ambient:1b,Amplifier:0b,Duration:200,Id:19,ShowParticles:1b}],Radius:2.0f,RadiusOnUse:-1.0f,RadiusPerTick:-0.01f,ReapplicationDelay:20,WaitTime:20}
execute unless block ~ ~ ~-1 minecraft:air if block ~ ~ ~ minecraft:air run summon area_effect_cloud ~ ~ ~ {Age:0s,Duration:600,Effects:[{Ambient:1b,Amplifier:0b,Duration:200,Id:19,ShowParticles:1b}],Radius:2.0f,RadiusOnUse:-1.0f,RadiusPerTick:-0.01f,ReapplicationDelay:20,WaitTime:20}
execute unless block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run summon area_effect_cloud ~ ~1 ~ {Age:0s,Duration:600,Effects:[{Ambient:1b,Amplifier:0b,Duration:200,Id:19,ShowParticles:1b}],Radius:2.0f,RadiusOnUse:-1.0f,RadiusPerTick:-0.01f,ReapplicationDelay:20,WaitTime:20}
execute unless block ~ ~ ~ minecraft:air run kill @s

execute if entity @e[tag=!af_action,distance=..1,type=!player] as @e[tag=!af_action,distance=..1,type=!player] at @s run summon area_effect_cloud ~ ~ ~ {Age:0s,Duration:600,Effects:[{Ambient:1b,Amplifier:0b,Duration:200,Id:19,ShowParticles:1b}],Radius:2.0f,RadiusOnUse:-1.0f,RadiusPerTick:-0.01f,ReapplicationDelay:20,WaitTime:20}
execute if entity @e[tag=!af_action,distance=..1,type=!player] run kill @s