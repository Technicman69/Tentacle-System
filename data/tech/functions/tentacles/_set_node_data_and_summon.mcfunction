data merge entity @s {Tags:[tent.node]}
scoreboard players operation @s tent.node_id = $next tent.node_id
scoreboard players operation @s tent.uuid = $next tent.uuid
scoreboard players add $next tent.node_id 1

execute if score $next tent.node_id matches 1 run tag @s add tent.base
execute if score $next tent.node_id = $NODE_COUNT tent.uuid run tag @s add tent.end
execute unless score $next tent.node_id = $NODE_COUNT tent.uuid positioned ^ ^ ^-1 summon marker run function tech:tentacles/_set_node_data_and_summon