$execute if data storage mp:bingo pool[$(bingo_id)].check_id run return -1
$data modify storage mp:bingo pool[$(bingo_id)].check_id set value $(check_id)
$data modify storage mp:bingo obj.$(check_id).bingo_id set value $(bingo_id)
$data modify storage mp:bingo obj.$(check_id).item set from storage mp:bingo pool[$(bingo_id)].item
$scoreboard players set #item_$(bingo_id) bingo_selected 1