data merge entity @s {Tags:[tent.node]}
scoreboard players operation @s tent.node_id = $next tent.node_id
scoreboard players operation @s tent.uuid = $next tent.uuid
scoreboard players add $next tent.node_id 1

execute if score $next tent.node_id matches 1 run tag @s add tent.base
execute if score $next tent.node_id = $NODE_COUNT tent.uuid run tag @s add tent.end
execute if score $SPAWN_PATTERN tent.uuid matches ..0 unless score $next tent.node_id = $NODE_COUNT tent.uuid summon marker run function tech:tentacle/_set_node_data_and_summon
execute if score $SPAWN_PATTERN tent.uuid matches 1 unless score $next tent.node_id = $NODE_COUNT tent.uuid rotated ~ 0 positioned ^ ^ ^-0.2 summon marker run function tech:tentacle/_set_node_data_and_summon
execute if score $SPAWN_PATTERN tent.uuid matches 2 unless score $next tent.node_id = $NODE_COUNT tent.uuid positioned ^ ^ ^-1 rotated ~17 ~ summon marker run function tech:tentacle/_set_node_data_and_summon
execute if score $SPAWN_PATTERN tent.uuid matches 3 unless score $next tent.node_id = $NODE_COUNT tent.uuid positioned ^ ^ ^-1 rotated ~ ~17 summon marker run function tech:tentacle/_set_node_data_and_summon