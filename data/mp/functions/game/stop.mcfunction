scoreboard objectives remove bingo_selected
scoreboard objectives add bingo_selected dummy

scoreboard players reset #game_open mp
gamerule doDaylightCycle false
difficulty peaceful

execute store result storage mp:tmp chunk_info.xchunk int 1 run scoreboard players add #bingo_xchunk mp 1000
execute store result storage mp:tmp chunk_info.xpos int 1 run scoreboard players add #bingo_x mp 16000
function mp:game/load_chunk with storage mp:tmp chunk_info