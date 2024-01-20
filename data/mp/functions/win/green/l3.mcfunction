data modify storage mp:bingo wins.green.l3 set value 1
scoreboard players reset #score_green_l3 bingo_score
scoreboard players add #green_win_count bingo_score 1

execute if score #green_win_count bingo_score >= #target_score bingo_score run function mp:win/green_win