execute store result storage mp:tmp b_info.check_id int 1 run scoreboard players add #check_id mp 1
function mp:game/gen_loop_2 with storage mp:tmp b_info
execute unless score #check_id mp matches 24.. run function mp:game/gen_loop_1