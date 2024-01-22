execute store result storage mp:tmp chunk_info.xposmin int 1 run scoreboard players add #bingo_x mp 15968
execute store result storage mp:tmp chunk_info.xposmax int 1 run scoreboard players add #bingo_x mp 64
execute store result storage mp:tmp chunk_info.xpos int 1 run scoreboard players remove #bingo_x mp 32
function mp:game/load_chunk with storage mp:tmp chunk_info