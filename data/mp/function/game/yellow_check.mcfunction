#define score_holder #check_id_mod

scoreboard players add @s stats_item_collected 1
scoreboard players add @s reward_score 1
execute as @a at @s run playsound block.end_portal_frame.fill player @s ~ ~ ~ 0.8
tellraw @a [{"text": "> ","color": "gold"},{"selector": "@s","color": "yellow"},{"text": " 收集了一种物品！","color": "white"}]

$data modify storage mp:bingo t_yellow.checks.$(check_id) set value 1
execute if score #check_id mp matches 0..4 run scoreboard players add #score_yellow_l1 bingo_score 1
execute if score #check_id mp matches 5..9 run scoreboard players add #score_yellow_l2 bingo_score 1
execute if score #check_id mp matches 10..14 run scoreboard players add #score_yellow_l3 bingo_score 1
execute if score #check_id mp matches 15..19 run scoreboard players add #score_yellow_l4 bingo_score 1
execute if score #check_id mp matches 20..24 run scoreboard players add #score_yellow_l5 bingo_score 1

scoreboard players operation #check_id_mod mp = #check_id mp
scoreboard players operation #check_id_mod mp %= #5 mp

execute if score #check_id_mod mp matches 0 run scoreboard players add #score_yellow_r1 bingo_score 1
execute if score #check_id_mod mp matches 1 run scoreboard players add #score_yellow_r2 bingo_score 1
execute if score #check_id_mod mp matches 2 run scoreboard players add #score_yellow_r3 bingo_score 1
execute if score #check_id_mod mp matches 3 run scoreboard players add #score_yellow_r4 bingo_score 1
execute if score #check_id_mod mp matches 4 run scoreboard players add #score_yellow_r5 bingo_score 1

execute if score #check_id mp matches 0 run scoreboard players add #score_yellow_c1 bingo_score 1
execute if score #check_id mp matches 6 run scoreboard players add #score_yellow_c1 bingo_score 1
execute if score #check_id mp matches 12 run scoreboard players add #score_yellow_c1 bingo_score 1
execute if score #check_id mp matches 18 run scoreboard players add #score_yellow_c1 bingo_score 1
execute if score #check_id mp matches 24 run scoreboard players add #score_yellow_c1 bingo_score 1

execute if score #check_id mp matches 4 run scoreboard players add #score_yellow_c2 bingo_score 1
execute if score #check_id mp matches 8 run scoreboard players add #score_yellow_c2 bingo_score 1
execute if score #check_id mp matches 12 run scoreboard players add #score_yellow_c2 bingo_score 1
execute if score #check_id mp matches 16 run scoreboard players add #score_yellow_c2 bingo_score 1
execute if score #check_id mp matches 20 run scoreboard players add #score_yellow_c2 bingo_score 1

execute as @e[type=item_display,tag=mp_bg_home] at @s run function mp:phone/menus/update_checks

execute if score #score_yellow_l1 bingo_score matches 5 run function mp:win/yellow/l1
execute if score #score_yellow_l2 bingo_score matches 5 run function mp:win/yellow/l2
execute if score #score_yellow_l3 bingo_score matches 5 run function mp:win/yellow/l3
execute if score #score_yellow_l4 bingo_score matches 5 run function mp:win/yellow/l4
execute if score #score_yellow_l5 bingo_score matches 5 run function mp:win/yellow/l5

execute if score #score_yellow_r1 bingo_score matches 5 run function mp:win/yellow/r1
execute if score #score_yellow_r2 bingo_score matches 5 run function mp:win/yellow/r2
execute if score #score_yellow_r3 bingo_score matches 5 run function mp:win/yellow/r3
execute if score #score_yellow_r4 bingo_score matches 5 run function mp:win/yellow/r4
execute if score #score_yellow_r5 bingo_score matches 5 run function mp:win/yellow/r5

execute if score #score_yellow_c1 bingo_score matches 5 run function mp:win/yellow/c1
execute if score #score_yellow_c2 bingo_score matches 5 run function mp:win/yellow/c2
