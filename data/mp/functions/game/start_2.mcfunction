function mp:emtpy_teams

execute if score #random_team mp matches 1 if score #team_balance mp matches 1 run function mp:game/join_team_random_bal
execute if score #random_team mp matches 1 if score #team_balance mp matches 0 run function mp:game/join_team_random_unbal
execute if score #random_team mp matches 0 run function mp:game/no_join_team

execute unless entity @a[team=!] run tellraw @a [{"text": "> ","color": "gold"},{"text": "没有玩家参与，无法开启游戏","color": "red"}]
execute unless entity @a[team=!] run return -1

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

scoreboard objectives remove game_vote_stop
scoreboard objectives add game_vote_stop trigger [{"text": "投票结束游戏","color": "gold"}]
scoreboard players set @a game_vote_stop 0

function mp:game/generate_bingo

execute as @a at @s run function mp:phone/player_close

scoreboard players set #game_open mp 1

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

execute if score #difficulty mp matches 1 run difficulty easy
execute if score #difficulty mp matches 2 run difficulty normal
execute unless score #difficulty mp matches 1..2 run difficulty hard