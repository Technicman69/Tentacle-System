data merge storage tech:tent {along_ray:{spread: 0.3, count: 1, step: 0, mode: "force"}}

execute if score @s tent.node_id matches 0..5 run data merge storage tech:tent {along_ray:{spread: 0.08, count: 5}}
execute if score @s tent.node_id matches 6..10 run data merge storage tech:tent {along_ray:{spread: 0.05, count: 3}}
execute if score @s tent.node_id matches 11..14 run data merge storage tech:tent {along_ray:{spread: 0.03, count: 2}}
execute if score @s tent.node_id matches 15..16 run data merge storage tech:tent {along_ray:{spread: 0.02, count: 2}}

function tech:tentacle/settings/particle/along_ray with storage tech:tent along_ray
execute unless entity @s[distance=..0.15] run data modify storage tech:tent along_ray.step set value 0.15
execute unless entity @s[distance=..0.15] run function tech:tentacle/settings/particle/along_ray with storage tech:tent along_ray
execute positioned ^ ^ ^0.15 unless entity @s[distance=..0.15] run data merge storage tech:tent {along_ray:{step: 0.15, mode: "normal"}}
execute positioned ^ ^ ^0.15 unless entity @s[distance=..0.15] run function tech:tentacle/settings/particle/along_ray with storage tech:tent along_ray