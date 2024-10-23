#define score_holder $next stores next id of some sort
#define tag tent.end Tip of a tentacle
#define tag tent.node Some part of tentacle
#define tag tent.base Place, from which comes the tentacle
#define tag tent.user Tentacle user. Tentacles do not attack users with this tag
#define tag tent.potential_target Potential tentacle target. It is used by tentacles to choose from randomly.
#define tag tent.target Tentacle target. It should be choosen automaticly
#define storage tech:tent for uses of macros in tech:tentacles namespace

scoreboard objectives add tent.node_id dummy
scoreboard objectives add tent.uuid dummy

scoreboard players set $next tent.node_id 0
scoreboard players set $next tent.uuid 0

function tech:tentacles/settings/main

#define score_holder $MAX_STEPS max number of steps in ray-cast
scoreboard players set $RAY_STEP tent.uuid 25
scoreboard players operation $MAX_STEPS tent.uuid = $SEGMENT_LENGTH tent.uuid
scoreboard players operation $MAX_STEPS tent.uuid /= $RAY_STEP tent.uuid
#scoreboard players add $MAX_STEPS tent.uuid 1

#define score_holder $ATTACK_RANGE range of attack of a tentacle
scoreboard players operation $ATTACK_RANGE tent.uuid = $NODE_COUNT tent.uuid
scoreboard players remove $ATTACK_RANGE tent.uuid 1
scoreboard players operation $ATTACK_RANGE tent.uuid *= $SEGMENT_LENGTH tent.uuid

execute store result storage tech:tent ray.step float 0.01 run scoreboard players get $RAY_STEP tent.uuid
execute store result storage tech:tent update.segment_length float 0.01 run scoreboard players get $SEGMENT_LENGTH tent.uuid
execute store result storage tech:tent choose_target.range float 0.01 run scoreboard players get $ATTACK_RANGE tent.uuid