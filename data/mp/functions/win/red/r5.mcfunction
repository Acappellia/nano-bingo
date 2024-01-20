data modify storage mp:bingo wins.red.r5 set value 1
scoreboard players reset #score_red_r5 bingo_score
scoreboard players add #red_win_count bingo_score 1

execute if score #red_win_count bingo_score >= #target_score bingo_score run function mp:win/red_win