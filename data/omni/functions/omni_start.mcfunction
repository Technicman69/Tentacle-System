scoreboard objectives add omni_uuid1 dummy
scoreboard objectives add omni_uuid2 dummy
scoreboard objectives add omni_uuid3 dummy
scoreboard objectives add omni_uuid4 dummy
execute store result score @s omni_uuid1 run data get entity @s UUID[0]
execute store result score @s omni_uuid2 run data get entity @s UUID[1]
execute store result score @s omni_uuid3 run data get entity @s UUID[2]
execute store result score @s omni_uuid4 run data get entity @s UUID[3]