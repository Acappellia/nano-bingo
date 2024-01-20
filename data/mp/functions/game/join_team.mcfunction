#define score_holder #target_score
#define score_holder #team_member_max
#define score_holder #team_member

execute store result score #team_member_max mp if entity @a
scoreboard players operation #team_member_max mp /= #4 mp
scoreboard players reset #team_member mp
scoreboard players reset #team_loop mp

execute as @r[team=,tag=prior] run function mp:game/join_teams_loop_prior
execute as @r[team=] run function mp:game/join_teams_loop

execute as @a[team=] run function mp:game/no_team

execute if score #team_member_max mp matches ..2 run scoreboard players set #target_score bingo_score 1
execute if score #team_member_max mp matches 3..4 run scoreboard players set #target_score bingo_score 2
execute if score #team_member_max mp matches 5..6 run scoreboard players set #target_score bingo_score 3
execute if score #team_member_max mp matches 7..8 run scoreboard players set #target_score bingo_score 4
execute if score #team_member_max mp matches 9.. run scoreboard players set #target_score bingo_score 5