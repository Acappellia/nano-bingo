execute unless entity @a[team=!] run return -1

#define score_holder #team_member_min

execute store result score #team_member_min mp if entity @a[team=red]
execute store result score #team_member mp if entity @a[team=blue]
execute if score #team_member mp matches 1.. if score #team_member mp < #team_member_min mp run scoreboard players operation #team_member_min mp = #team_member mp
execute store result score #team_member mp if entity @a[team=yellow]
execute if score #team_member mp matches 1.. if score #team_member mp < #team_member_min mp run scoreboard players operation #team_member_min mp = #team_member mp
execute store result score #team_member mp if entity @a[team=green]
execute if score #team_member mp matches 1.. if score #team_member mp < #team_member_min mp run scoreboard players operation #team_member_min mp = #team_member mp

execute unless score #team_member_min mp matches 3.. run scoreboard players set #target_score bingo_score 1
execute if score #team_member_min mp matches 3..5 run scoreboard players set #target_score bingo_score 2
execute if score #team_member_min mp matches 6.. run scoreboard players set #target_score bingo_score 3

execute if score #bingo_target mp matches 1..5 run scoreboard players operation #target_score bingo_score = #bingo_target mp

title @a subtitle [{"text": "每个小队至少有 ","color": "white"},{"score":{"name": "#team_member_min","objective": "mp"},"color": "yellow"},{"text": " 人，需要完成 ","color": "white"},{"score":{"name": "#target_score","objective": "bingo_score"},"color": "yellow"},{"text": " 条连线","color": "white"}]
title @a title [{"text": "游 戏 开 始","color": "gold"}]