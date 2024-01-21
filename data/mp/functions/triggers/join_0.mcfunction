scoreboard players reset @s player_join_team

execute if score #game_open mp matches 1.. run tellraw @s [{"text": "> ","color": "gold"},{"text": "游戏进行中，无法更改队伍","color": "gray"}]
execute if score #game_open mp matches 1.. run return -1

execute if score #random_team mp matches 1 run tellraw @s [{"text": "> ","color": "gold"},{"text": "已启用随机组队，无法更改队伍","color": "gray"}]
execute if score #random_team mp matches 1 run return -1

team leave @s
tellraw @a [{"text": "> ","color": "gold"},{"selector":"@s"},{"text": " 已退出所有队伍","color": "white"}]