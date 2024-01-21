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

execute store result storage mp:tmp chunk_info.xposmin int 1 run scoreboard players add #bingo_x mp 15968
execute store result storage mp:tmp chunk_info.xposmax int 1 run scoreboard players add #bingo_x mp 64
execute store result storage mp:tmp chunk_info.xpos int 1 run scoreboard players remove #bingo_x mp 32
function mp:game/load_chunk with storage mp:tmp chunk_info

function mp:emtpy_teams

tellraw @a [{"text": "> ","color": "gold"},{"text": "游戏已结束。请稍作休息，下一局游戏将在","color": "white"},{"text": " 1 ","color": "yellow"},{"text": "分钟后准备完成","color": "white"}]
tag @a[team=] add prior