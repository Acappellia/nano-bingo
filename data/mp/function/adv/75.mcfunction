data modify storage mp:tmp b_info.bingo_id set value 75
data modify storage mp:tmp b_info.check_id set from storage mp:bingo pool[75].check_id

execute if score #bingo_mode mp matches 1 run scoreboard players reset #item_75 bingo_selected

function mp:game/check_trigger with storage mp:tmp b_info