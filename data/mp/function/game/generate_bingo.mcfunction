#define score_holder #check_id
#define score_holder #bingo_id
#define score_holder #bingo_len

data remove storage mp:bingo obj
function mp:bingo_data
scoreboard players set #check_id mp -1
scoreboard objectives remove bingo_selected
scoreboard objectives add bingo_selected dummy

execute store result score #bingo_len mp if data storage mp:bingo pool[]
execute store result storage mp:tmp b_info.bingo_len int 1 run scoreboard players remove #bingo_len mp 1
execute if score #bingo_list mp matches 0 store result storage mp:tmp b_info.bingo_len int 1 run scoreboard players get #bingo_len_easy mp

function mp:game/gen_loop_1