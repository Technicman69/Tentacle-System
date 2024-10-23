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