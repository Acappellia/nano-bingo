data modify storage mp:tmp b_info.bingo_id set value 86
data modify storage mp:tmp b_info.check_id set from storage mp:bingo pool[86].check_id

execute if score #bingo_mode mp matches 1 run scoreboard players reset #item_86 bingo_selected

function mp:game/check_trigger with storage mp:tmp b_info