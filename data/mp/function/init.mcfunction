gamerule commandBlockOutput false
gamerule sendCommandFeedback false
gamerule keepInventory false
gamerule doMobSpawning true
gamerule doPatrolSpawning true
gamerule doInsomnia false
gamerule doWardenSpawning true
gamerule disableRaids false
gamerule mobGriefing true
gamerule doImmediateRespawn false
gamerule doFireTick true

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
scoreboard players set #60 mp 60

##tmp scoreboard
scoreboard objectives add p_open used:warped_fungus_on_a_stick
scoreboard objectives add p_active_app dummy
scoreboard objectives add check_sprint custom:sprint_one_cm
scoreboard objectives add sprinting custom:time_since_death

scoreboard objectives add check_boat custom:boat_one_cm
scoreboard objectives add boating custom:time_since_death

scoreboard objectives add first_login dummy

##init data
function mp:slow_tick
function mp:2gttick

##bingo data
scoreboard objectives add bingo_selected dummy
scoreboard objectives add bingo_score dummy

#define score_holder #allow_trigger
execute unless score #game_open mp matches 1.. run scoreboard players set #allow_trigger mp 1

scoreboard objectives add game_start trigger [{"text": "开始游戏","color": "gold"}]
scoreboard objectives add game_vote_stop trigger [{"text": "投票结束游戏","color": "gold"}]

scoreboard objectives add setting_difficulty trigger [{"text": "原版难度","color": "gold"}]
scoreboard objectives add setting_random_team trigger [{"text": "随机入队","color": "gold"}]
scoreboard objectives add setting_team_balance trigger [{"text": "队伍平衡","color": "gold"}]
scoreboard objectives add setting_max_team trigger [{"text": "最大队伍数量","color": "gold"}]
scoreboard objectives add setting_bingo_target trigger [{"text": "游戏目标","color": "gold"}]

scoreboard objectives add setting_deathdrop trigger [{"text": "死亡掉落","color": "gold"}]
scoreboard objectives add setting_bingo_list trigger [{"text": "物品列表","color": "gold"}]
scoreboard objectives add setting_bingo_mode trigger [{"text": "游戏模式","color": "gold"}]

scoreboard objectives add player_join_team trigger [{"text": "加入队伍","color": "gold"}]

scoreboard objectives add help trigger [{"text": "帮助","color": "gold"}]
scoreboard objectives add menu trigger [{"text": "菜单","color": "gold"}]
scoreboard objectives add setting_check trigger [{"text": "查看设置","color": "gold"}]

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

bossbar add roundtime "游戏时间"
bossbar set roundtime color green
bossbar set roundtime style notched_6
bossbar set roundtime max 3900

bossbar add roundinterval "新游戏准备完成"
bossbar set roundinterval color yellow
bossbar set roundinterval style progress
bossbar set roundinterval max 60

##player stats
scoreboard objectives add stats_item_collected dummy "收集的物品"
scoreboard objectives add stats_lines_collected dummy "完成的连线"
scoreboard objectives add reward_score dummy "总分数"
#scoreboard objectives setdisplay sidebar stats_item_collected

##game default settings
#define score_holder #max_team
#define score_holder #difficulty
#define score_holder #random_team
#define score_holder #team_balance
#define score_holder #bingo_target

execute unless score #difficulty mp matches -1..3 run scoreboard players set #difficulty mp 3
execute unless score #max_team mp matches -1..4 run scoreboard players set #max_team mp 4
execute unless score #random_team mp matches -1..1 run scoreboard players set #random_team mp 1
execute unless score #team_balance mp matches -1..1 run scoreboard players set #team_balance mp 0
execute unless score #bingo_target mp matches -1..5 run scoreboard players set #bingo_target mp -1
execute unless score #death_drop mp matches -1..1 run scoreboard players set #death_drop mp 1
execute unless score #bingo_mode mp matches -1..1 run scoreboard players set #bingo_mode mp 0
execute unless score #bingo_list mp matches -1..1 run scoreboard players set #bingo_list mp 0

scoreboard players set #bingo_len_easy mp 199