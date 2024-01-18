advancement revoke @a from mp:root
title @a title [{"text": "游 戏 开 始","color": "gold"}]

data remove storage mp:bingo t_red.checks
data remove storage mp:bingo t_green.checks
data remove storage mp:bingo t_blue.checks
data remove storage mp:bingo t_yellow.checks
data remove storage mp:bingo wins

scoreboard objectives remove bingo_score
scoreboard objectives add bingo_score dummy

scoreboard objectives remove game_start
scoreboard objectives add game_start dummy
scoreboard players set @a game_start 1
team leave @a

function mp:game/generate_bingo

execute as @r[team=] run function mp:game/join_teams_loop
execute as @a at @s run function mp:phone/player_close

scoreboard players set #game_open mp 1
execute as @a at @s run playsound item.goat_horn.sound.0 player @s ~ ~ ~