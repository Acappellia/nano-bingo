data modify storage mp:bingo wins.blue.r5 set value 1
scoreboard players reset #score_blue_r5 bingo_score
scoreboard players add #blue_win_count bingo_score 1

execute if score #blue_win_count bingo_score >= #target_score bingo_score run function mp:win/blue_win