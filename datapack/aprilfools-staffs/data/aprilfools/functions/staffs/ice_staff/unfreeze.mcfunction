data merge entity @s {NoAI:0b,Invulnerable:0b}
playsound minecraft:block.glass.break neutral @a

execute if block ~ ~ ~ packed_ice run setblock ~ ~ ~ air

scoreboard players reset @s af_action
tag @s remove af_frozen