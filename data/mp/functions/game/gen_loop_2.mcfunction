#define score_holder #return_random

$execute store result storage mp:tmp b_info.bingo_id int 1 run random value 0..$(bingo_len)
scoreboard players reset #return_random mp
execute store result score #return_random mp run function mp:game/gen_loop_3 with storage mp:tmp b_info
execute if score #return_random mp matches -1 run function mp:game/gen_loop_2 with storage mp:tmp b_info