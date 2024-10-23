scoreboard players add $next tent.uuid 1
scoreboard players set $next tent.node_id 0
tag @s add tent.user
summon marker ~ ~ ~ {Tags:[tent.node,temp]}
execute as @e[type=marker,tag=temp,limit=1,sort=nearest] run function tech:tentacles/_set_node_data_and_summon