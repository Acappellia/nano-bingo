scoreboard players set #team_member_max mp 99999
scoreboard players reset #team_member mp
scoreboard players reset #team_loop mp

execute as @r[team=] run function mp:game/join_teams_loop

execute unless score #team_member mp matches 3.. run scoreboard players set #target_score bingo_score 1
execute if score #team_member mp matches 3..5 run scoreboard players set #target_score bingo_score 2
execute if score #team_member mp matches 6.. run scoreboard players set #target_score bingo_score 3

execute if score #bingo_target mp matches 1..5 run scoreboard players operation #target_score bingo_score = #bingo_target mp

execute unless score #team_member mp matches 1.. run scoreboard players set #team_member mp 1

title @a subtitle [{"text": "每个小队至少有 ","color": "white"},{"score":{"name": "#team_member","objective": "mp"},"color": "yellow"},{"text": " 人，需要完成 ","color": "white"},{"score":{"name": "#target_score","objective": "bingo_score"},"color": "yellow"},{"text": " 条连线","color": "white"}]
title @a title [{"text": "游 戏 开 始","color": "gold"}]