scoreboard players enable @a game_start
scoreboard players enable @a game_vote_stop
scoreboard players enable @a setting_difficulty
scoreboard players enable @a setting_max_team
scoreboard players enable @a setting_random_team
scoreboard players enable @a setting_team_balance
scoreboard players enable @a setting_bingo_target
scoreboard players enable @a player_join_team
scoreboard players enable @a help
scoreboard players enable @a setting_check
scoreboard players enable @a menu

scoreboard players enable @a setting_deathdrop
scoreboard players enable @a setting_bingo_list
scoreboard players enable @a setting_bingo_mode

execute as @a[scores={game_start=1..}] run function mp:triggers/start
execute as @a[scores={game_vote_stop=1..998}] run function mp:triggers/vote_stop

execute as @a[scores={setting_difficulty=1}] run function mp:triggers/difficulty_easy
execute as @a[scores={setting_difficulty=2}] run function mp:triggers/difficulty_normal
execute as @a[scores={setting_difficulty=3}] run function mp:triggers/difficulty_hard
execute as @a[scores={setting_max_team=1..4}] run function mp:triggers/maxteam
execute as @a[scores={setting_random_team=-1}] run function mp:triggers/random_team_off
execute as @a[scores={setting_random_team=1}] run function mp:triggers/random_team_on
execute as @a[scores={setting_team_balance=-1}] run function mp:triggers/team_balance_off
execute as @a[scores={setting_team_balance=1}] run function mp:triggers/team_balance_on
execute as @a[scores={setting_bingo_target=-1}] run function mp:triggers/bingo_target_auto
execute as @a[scores={setting_bingo_target=1..5}] run function mp:triggers/bingo_target

execute as @a[scores={setting_deathdrop=-1}] run function mp:triggers/death_drop_off
execute as @a[scores={setting_deathdrop=1}] run function mp:triggers/death_drop_on
execute as @a[scores={setting_bingo_list=-1}] run function mp:triggers/bingo_list_easy
execute as @a[scores={setting_bingo_list=1}] run function mp:triggers/bingo_list_full
execute as @a[scores={setting_bingo_mode=-1}] run function mp:triggers/bingo_mode_normal
execute as @a[scores={setting_bingo_mode=1}] run function mp:triggers/bingo_mode_competitive

execute as @a[scores={player_join_team=-1}] run function mp:triggers/join_0
execute as @a[scores={player_join_team=1}] run function mp:triggers/join_1
execute as @a[scores={player_join_team=2}] run function mp:triggers/join_2
execute as @a[scores={player_join_team=3}] run function mp:triggers/join_3
execute as @a[scores={player_join_team=4}] run function mp:triggers/join_4

execute as @a[scores={help=1..}] run function mp:triggers/help
execute as @a[scores={setting_check=1..}] run function mp:triggers/setting_check
execute as @a[scores={menu=1..}] run function mp:triggers/menu