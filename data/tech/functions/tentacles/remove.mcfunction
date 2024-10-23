execute as @e[type=marker,tag=tent.base,distance=..2,limit=1,sort=nearest] run scoreboard players operation temp tent.uuid = @s tent.uuid
execute as @e[type=marker,tag=tent.node] if score @s tent.uuid = temp tent.uuid run kill @s
execute unless entity @e[type=marker,tag=tent.base,distance=..2] run tag @s remove tent.user