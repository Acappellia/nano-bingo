data modify storage mp:bingo wins.yellow.l4 set value 1
scoreboard players reset #score_yellow_l4 bingo_score
scoreboard players add #yellow_win_count bingo_score 1

scoreboard players add @s stats_lines_collected 1
scoreboard players add @s reward_score 1
tellraw @a [{"text": "> ","color": "gold"},{"selector": "@s"},{"text": " 完成了一条连线！","color": "white"}]
execute as @a at @s run playsound entity.ender_eye.launch player @s ~ ~ ~ 1 0.8

execute if score #yellow_win_count bingo_score >= #target_score bingo_score run function mp:win/yellow_win