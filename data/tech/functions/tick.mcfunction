execute as @e[type=marker,tag=tent.base,sort=random] at @s run function tech:tentacles/_chose_target

execute as @e[type=marker,tag=tent.end] at @s run function tech:tentacles/update
#execute as @e[type=marker,tag=tent.node,tag=!tent.end] at @s run function tech:tentacles/settings/node_particles
#execute as @e[type=marker,tag=tent.end] at @s run function tech:tentacles/settings/tent_end_particles