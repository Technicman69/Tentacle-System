scoreboard players remove $steps tent.uuid 1
function tech:tentacle/settings/ray_particles
execute unless entity @s[distance=..0.25] if score $steps tent.uuid matches 1.. positioned ^ ^ ^0.25 run function tech:tentacle/_particle_ray