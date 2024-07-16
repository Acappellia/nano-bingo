data modify storage mp:tmp b_info.bingo_id set value 215
data modify storage mp:tmp b_info.check_id set from storage mp:bingo pool[215].check_id
function mp:game/check_trigger with storage mp:tmp b_info