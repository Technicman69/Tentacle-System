#define score_holder $NODE_COUNT Number of nodes in a tentacle
scoreboard players set $NODE_COUNT tent.uuid 16

#define score_holder $SEGMENT_LENGTH Maximum length such that a single segment (between 2 nodes) can reach.
# 200 = 2 blocks
scoreboard players set $SEGMENT_LENGTH tent.uuid 50

##define score_holder $RAY_STEP size of the step in ray-cast (density of particle commands between nodes)
#scoreboard players set $RAY_STEP tent.uuid 25