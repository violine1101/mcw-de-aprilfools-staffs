tag @s add af_frozen
data merge entity @s {NoAI:1b,Invulnerable:1b}
execute if block ~ ~ ~ air run setblock ~ ~ ~ packed_ice
playsound minecraft:block.glass.place neutral @a
scoreboard players set @s af_action 0