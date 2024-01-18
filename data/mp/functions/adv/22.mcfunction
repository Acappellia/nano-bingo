data modify storage mp:tmp b_info.bingo_id set value 22
data modify storage mp:tmp b_info.check_id set from storage mp:bingo pool[22].check_id
function mp:game/check_trigger with storage mp:tmp b_info