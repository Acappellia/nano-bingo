data modify storage mp:tmp b_info.bingo_id set value 39
data modify storage mp:tmp b_info.check_id set from storage mp:bingo pool[39].check_id

execute if score #bingo_mode mp matches 1 run scoreboard players reset #item_39 bingo_selected

function mp:game/check_trigger with storage mp:tmp b_info