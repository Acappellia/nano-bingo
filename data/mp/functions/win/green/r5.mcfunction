data modify storage mp:bingo wins.green.r5 set value 1
scoreboard players reset #score_green_r5 bingo_score
scoreboard players add #green_win_count bingo_score 1

execute if score #green_win_count bingo_score >= #target_score bingo_score run function mp:win/green_win