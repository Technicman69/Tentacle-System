tag @s remove tent.potential_target
tag @s add tent.target
scoreboard players operation @s tent.uuid = @e[type=marker,tag=temp,limit=1] tent.uuid