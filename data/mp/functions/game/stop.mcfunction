scoreboard objectives remove bingo_selected
scoreboard objectives add bingo_selected dummy

scoreboard players reset #game_open mp
gamerule doDaylightCycle false
difficulty peaceful

execute store result storage mp:tmp chunk_info.xchunk int 1 run scoreboard players add #bingo_xchunk mp 1000
execute store result storage mp:tmp chunk_info.xpos int 1 run scoreboard players add #bingo_x mp 16000
function mp:game/load_chunk with storage mp:tmp chunk_info

tellraw @a [{"text": "> ","color": "gold"},{"text": "游戏已结束。请稍作休息，下一局游戏将在","color": "white"},{"text": " 1 ","color": "yellow"},{"text": "分钟后准备完成","color": "white"}]
tag @a[team=] add prior

schedule function mp:game/next_ready 60s replace