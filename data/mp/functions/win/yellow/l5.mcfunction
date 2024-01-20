data modify storage mp:bingo wins.yellow.l5 set value 1
scoreboard players reset #score_yellow_l5 bingo_score
scoreboard players add #yellow_win_count bingo_score 1

execute if score #yellow_win_count bingo_score >= #target_score bingo_score run function mp:win/yellow_win