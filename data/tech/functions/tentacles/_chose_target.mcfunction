tag @s add temp
# Check if already has target
execute as @e[tag=tent.target] if score @s tent.uuid = @e[type=marker,tag=temp,limit=1] tent.uuid run return 0
execute as @e[tag=tent.potential_target,limit=1,sort=random] run function tech:tentacles/_mark_as_temp_target
tag @s remove temp