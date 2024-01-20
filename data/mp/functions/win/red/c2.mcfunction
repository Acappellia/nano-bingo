data modify storage mp:bingo wins.red.c2 set value 1
scoreboard players reset #score_red_c2 bingo_score
scoreboard players add #red_win_count bingo_score 1

scoreboard players add @s stats_lines_collected 1
scoreboard players add @s reward_score 1
tellraw @a [{"text": "> ","color": "gold"},{"selector": "@s"},{"text": "完成了一条连线！","color": "white"}]
execute as @a at @s run playsound entity.ender_eye.launch player @s ~ ~ ~ 1 0.8

execute if score #red_win_count bingo_score >= #target_score bingo_score run function mp:win/red_win