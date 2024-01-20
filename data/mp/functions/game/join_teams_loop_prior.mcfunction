execute if score #team_member mp >= #team_member_max mp run return -1

#define score_holder #team_loop
execute unless score #team_loop mp matches 1.. run team join red @s
execute unless score #team_loop mp matches 1.. run tellraw @s [{"text": "> ","color": "gold"},{"text": "您已加入","color": "white"},{"text": "红队","color": "red"}]
execute if score #team_loop mp matches 1 run team join green @s
execute if score #team_loop mp matches 1 run tellraw @s [{"text": "> ","color": "gold"},{"text": "您已加入","color": "white"},{"text": "绿队","color": "green"}]
execute if score #team_loop mp matches 2 run team join yellow @s
execute if score #team_loop mp matches 2 run tellraw @s [{"text": "> ","color": "gold"},{"text": "您已加入","color": "white"},{"text": "黄队","color": "yellow"}]
execute if score #team_loop mp matches 3 run team join blue @s
execute if score #team_loop mp matches 3 run tellraw @s [{"text": "> ","color": "gold"},{"text": "您已加入","color": "white"},{"text": "蓝队","color": "aqua"}]
scoreboard players add #team_loop mp 1
execute if score #team_loop mp matches 4.. run scoreboard players add #team_member mp 1
execute if score #team_loop mp matches 4.. run scoreboard players reset #team_loop mp

tag @s remove prior

execute as @r[team=,tag=prior] run function mp:game/join_teams_loop_prior