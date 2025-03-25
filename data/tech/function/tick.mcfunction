execute as @e[type=marker,tag=tent.base,sort=random] at @s run function tech:tentacle/_chose_target

execute as @e[type=marker,tag=tent.end] at @s run function tech:tentacle/update
#execute as @e[type=marker,tag=tent.node,tag=!tent.end] at @s run function tech:tentacle/settings/node_particles
#execute as @e[type=marker,tag=tent.end] at @s run function tech:tentacle/settings/tent_end_particles