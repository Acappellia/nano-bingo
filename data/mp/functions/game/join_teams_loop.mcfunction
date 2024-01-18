#define score_holder #team_loop
execute unless score #team_loop mp matches 1.. run team join red @s
execute unless score #team_loop mp matches 1.. run tellraw @s "已加入红队"
execute if score #team_loop mp matches 1 run team join green @s
execute if score #team_loop mp matches 1 run tellraw @s "已加入绿队"
execute if score #team_loop mp matches 2 run team join yellow @s
execute if score #team_loop mp matches 2 run tellraw @s "已加入黄队"
execute if score #team_loop mp matches 3 run team join blue @s
execute if score #team_loop mp matches 3 run tellraw @s "已加入蓝队"
scoreboard players add #team_loop mp 1
execute if score #team_loop mp matches 4.. run scoreboard players reset #team_loop mp

execute as @r[team=] run function mp:game/join_teams_loop