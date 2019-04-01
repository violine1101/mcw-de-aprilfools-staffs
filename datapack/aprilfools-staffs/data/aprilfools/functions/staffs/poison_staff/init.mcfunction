summon minecraft:area_effect_cloud ^ ^ ^ {Tags:[af_action,af_poison_staff_action,af_select_me],Duration:2147483647}
scoreboard players set @e[tag=af_select_me] af_action 0
execute anchored eyes run tp @e[tag=af_select_me] ^ ^ ^2 ~ ~
tag @e remove af_select_me