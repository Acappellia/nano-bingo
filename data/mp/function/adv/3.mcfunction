data modify storage mp:tmp b_info.bingo_id set value 3
data modify storage mp:tmp b_info.check_id set from storage mp:bingo pool[3].check_id

execute if score #bingo_mode mp matches 1 run scoreboard players reset #item_3 bingo_selected

function mp:game/check_trigger with storage mp:tmp b_info