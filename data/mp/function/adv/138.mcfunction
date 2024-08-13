data modify storage mp:tmp b_info.bingo_id set value 138
data modify storage mp:tmp b_info.check_id set from storage mp:bingo pool[138].check_id

execute if score #bingo_mode mp matches 1 run scoreboard players reset #item_138 bingo_selected

function mp:game/check_trigger with storage mp:tmp b_info