data modify storage mp:tmp b_info.bingo_id set value 136
data modify storage mp:tmp b_info.check_id set from storage mp:bingo pool[136].check_id

execute if score #bingo_mode mp matches 1 run scoreboard players reset #item_136 bingo_selected

function mp:game/check_trigger with storage mp:tmp b_info