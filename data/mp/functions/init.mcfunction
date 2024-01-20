gamerule keepInventory false
gamerule doMobSpawning true
gamerule doPatrolSpawning true
gamerule doInsomnia false
gamerule doWardenSpawning true
gamerule disableRaids false
gamerule mobGriefing true
gamerule doImmediateRespawn true
gamerule doFireTick false
difficulty hard

#define storage mp:tmp
#define storage mp:player
#define storage mp:data
#define storage mp:bingo

forceload add 0 0 0 0

#define score_holder #player_id
execute unless score #player_id mp matches 0.. run scoreboard players set #player_id mp -1

#define score_holder #bingo_x
#define score_holder #bingo_xchunk
execute unless score #bingo_x mp matches 0.. run scoreboard players set #bingo_x mp 0
execute unless score #bingo_xchunk mp matches 0.. run scoreboard players set #bingo_xchunk mp 0

scoreboard objectives add p_id dummy

scoreboard objectives add mp dummy
scoreboard players set #5 mp 5
scoreboard players set #4 mp 4

##tmp scoreboard
scoreboard objectives add p_open used:warped_fungus_on_a_stick
scoreboard objectives add p_active_app dummy
scoreboard objectives add check_sprint custom:sprint_one_cm
scoreboard objectives add sprinting custom:time_since_death

scoreboard objectives add check_boat custom:boat_one_cm
scoreboard objectives add boating custom:time_since_death

##init data
function mp:slow_tick
function mp:2gttick

##bingo data
scoreboard objectives add bingo_selected dummy
scoreboard objectives add bingo_score dummy

#define score_holder #allow_trigger
execute unless score #game_open mp matches 1.. run scoreboard players set #allow_trigger mp 1
scoreboard objectives add start trigger
scoreboard players enable @a start

team add red
team modify red color red
team modify red friendlyFire false
team modify red collisionRule always
team modify red nametagVisibility always
team modify red seeFriendlyInvisibles true
team join red #red
team add green
team modify green color green
team modify green friendlyFire false
team modify green collisionRule always
team modify green nametagVisibility always
team modify green seeFriendlyInvisibles true
team join green #green
team add yellow
team modify yellow color yellow
team modify yellow friendlyFire false
team modify yellow collisionRule always
team modify yellow nametagVisibility always
team modify yellow seeFriendlyInvisibles true
team join yellow #yellow
team add blue
team modify blue color aqua
team modify blue friendlyFire false
team modify blue collisionRule always
team modify blue nametagVisibility always
team modify blue seeFriendlyInvisibles true
team join blue #blue

##player stats
scoreboard objectives add stats_item_collected dummy "收集的物品"
scoreboard objectives add stats_lines_collected dummy "完成的连线"
scoreboard objectives add reward_score dummy "可兑换分数"