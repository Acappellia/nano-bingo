scoreboard objectives remove bingo_selected
scoreboard objectives add bingo_selected dummy

scoreboard players reset #game_open mp
gamerule doDaylightCycle false
difficulty peaceful

#define score_holder #round_interval
#define score_holder #game_interval
scoreboard players set #game_interval mp 1
bossbar set roundtime visible false
bossbar set roundinterval visible true
execute store result bossbar roundinterval value run scoreboard players set #round_interval mp 0
bossbar set roundinterval name [{"text": "新游戏准备中","color": "gray"}]
bossbar set roundinterval players @a

schedule function mp:game/load_chunk_schedule 1s replace

execute if score #random_team mp matches 1 run function mp:emtpy_teams

tellraw @a [{"text": "> ","color": "gold"},{"text": "游戏已结束。请稍作休息，下一局游戏将在","color": "white"},{"text": " 1 ","color": "yellow"},{"text": "分钟后准备完成","color": "white"}]
tag @a[team=] add prior