scoreboard players operation $next_node tent.node_id = @s tent.node_id
scoreboard players operation $current tent.uuid = @s tent.uuid
scoreboard players remove $next_node tent.node_id 1

# move nodes
execute as @e[type=marker,tag=tent.node] if score $current tent.uuid = @s tent.uuid if score @s tent.node_id = $next_node tent.node_id run function tech:tentacles/_update_loop

# Move towards target
tag @s add temp
execute as @e[tag=tent.target,distance=1..16] if score @s tent.uuid = @e[type=marker,tag=temp,limit=1,sort=nearest] tent.uuid facing entity @s feet run tp @e[type=marker,tag=tent.end,tag=temp,limit=1,sort=nearest] ^ ^ ^1
execute as @e[tag=tent.target,distance=..1] if score @s tent.uuid = @e[type=marker,tag=temp,limit=1,sort=nearest] tent.uuid run tp @e[type=marker,tag=tent.end,tag=temp,limit=1,sort=nearest] @s
tag @s remove temp
