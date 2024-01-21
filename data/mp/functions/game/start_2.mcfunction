execute if score #random_team mp matches 1 run function mp:emtpy_teams

scoreboard objectives remove bingo_score
scoreboard objectives add bingo_score dummy

execute if score #random_team mp matches 1 if score #team_balance mp matches 1 run function mp:game/join_team_random_bal
execute if score #random_team mp matches 1 if score #team_balance mp matches 0 run function mp:game/join_team_random_unbal
execute if score #random_team mp matches 0 run function mp:game/no_join_team

execute unless entity @a[team=!] run tellraw @a [{"text": "> ","color": "gold"},{"text": "没有玩家参与，无法开启游戏","color": "red"}]
execute unless entity @a[team=!] run scoreboard players set #allow_trigger mp 1
execute unless entity @a[team=!] run return -1

tellraw @a [{"text": "[ ","color": "light_purple"},{"text": "本局游戏设置","color": "aqua"},{"text": " ]","color": "light_purple"}]
execute if score #random_team mp matches 1 run tellraw @a [{"text": "> ","color": "gold"},{"text": "随机组队","color": "green"}]
execute if score #random_team mp matches 0 run tellraw @a [{"text": "> ","color": "gold"},{"text": "玩家预组队","color": "aqua"}]
execute if score #random_team mp matches 1 if score #team_balance mp matches 0 run tellraw @a [{"text": "> ","color": "gold"},{"text": "未开启队伍人数平衡","color": "yellow"}]
execute if score #random_team mp matches 1 if score #team_balance mp matches 1 run tellraw @a [{"text": "> ","color": "gold"},{"text": "开启队伍人数平衡","color": "gold"}]
execute if score #difficulty mp matches 1 run tellraw @a [{"text": "> ","color": "gold"},{"text": "游戏难度 - ","color": "white"},{"text": "简单","color": "green"}]
execute if score #difficulty mp matches 2 run tellraw @a [{"text": "> ","color": "gold"},{"text": "游戏难度 - ","color": "white"},{"text": "普通","color": "yellow"}]
execute if score #difficulty mp matches 3 run tellraw @a [{"text": "> ","color": "gold"},{"text": "游戏难度 - ","color": "white"},{"text": "困难","color": "red"}]
execute unless score #bingo_target mp matches 1.. run tellraw @a [{"text": "> ","color": "gold"},{"text": "目标连线数 - ","color": "white"},{"score":{"name": "#target_score","objective": "bingo_score"},"color": "yellow"},{"text": "　(自动设置)","color": "gray"}]
execute if score #bingo_target mp matches 1.. run tellraw @a [{"text": "> ","color": "gold"},{"text": "目标连线数 - ","color": "white"},{"score":{"name": "#target_score","objective": "bingo_score"},"color": "yellow"}]

data remove storage mp:bingo t_red.checks
data remove storage mp:bingo t_green.checks
data remove storage mp:bingo t_blue.checks
data remove storage mp:bingo t_yellow.checks
data remove storage mp:bingo wins

scoreboard players reset #game_wins_blue mp
scoreboard players reset #game_wins_red mp
scoreboard players reset #game_wins_yellow mp
scoreboard players reset #game_wins_green mp

setblock ~ ~-1 ~ bedrock
setworldspawn ~ ~ ~
kill @e[type=item]

gamerule doDaylightCycle true
scoreboard objectives remove ingame
scoreboard objectives add ingame dummy
scoreboard players set @a ingame 1

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