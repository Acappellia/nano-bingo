data remove storage mp:bingo t_red.checks
data remove storage mp:bingo t_green.checks
data remove storage mp:bingo t_blue.checks
data remove storage mp:bingo t_yellow.checks
data remove storage mp:bingo wins

scoreboard objectives remove bingo_score
scoreboard objectives add bingo_score dummy
scoreboard players reset #game_wins_blue mp
scoreboard players reset #game_wins_red mp
scoreboard players reset #game_wins_yellow mp
scoreboard players reset #game_wins_green mp

setblock ~ ~-1 ~ bedrock
setworldspawn ~ ~ ~
kill @e[type=item]

gamerule doDaylightCycle true
scoreboard objectives remove game_start
scoreboard objectives add game_start dummy
scoreboard players set @a game_start 1
team leave @a

function mp:game/generate_bingo

function mp:game/join_team

execute as @a at @s run function mp:phone/player_close

scoreboard players set #game_open mp 1

title @a[team=!] subtitle [{"text": "每个小队共有 ","color": "white"},{"score":{"name": "#team_member_max","objective": "mp"},"color": "yellow"},{"text": " 人，需要完成 ","color": "white"},{"score":{"name": "#target_score","objective": "bingo_score"},"color": "yellow"},{"text": " 条连线","color": "white"}]
title @a[team=] subtitle [{"text": "本轮游戏轮空，其他小队各需要完成 ","color": "white"},{"score":{"name": "#target_score","objective": "bingo_score"},"color": "yellow"},{"text": " 条连线","color": "white"}]
title @a title [{"text": "游 戏 开 始","color": "gold"}]

execute store result bossbar roundtime value run scoreboard players set #round_time mp 3900
bossbar set roundtime visible true
bossbar set roundtime players @a
bossbar set roundinterval visible false

advancement revoke @a everything
clear @a
effect clear @a
gamemode survival @a
tp @a ~ ~ ~
spreadplayers ~ ~ 5 32 true @a
execute as @a at @s run playsound item.goat_horn.sound.0 player @s ~ ~ ~
time set 1000
difficulty hard