scoreboard players set @s game_vote_stop 0

execute unless score #game_open mp matches 1.. run tellraw @s [{"text": "> ","color": "gold"},{"text": "游戏尚未开始","color": "gray"}]
execute unless score #game_open mp matches 1.. run return -1

execute unless entity @s[team=!] run tellraw @s [{"text": "> ","color": "gold"},{"text": "只有游戏中的玩家才可以投票","color": "gray"}]
execute unless entity @s[team=!] run return -1

tellraw @a [{"text": ">","color": "gold"},{"text": " ","color": "white"},{"selector":"@s"},{"text": " 投票结束本局游戏，输入 ","color": "white"},{"text": "/trigger game_vote_stop","color": "aqua"},{"text": " 加入投票","color": "white"}]
tellraw @a [{"text": "> ","color": "gold"},{"text": "所有游玩中的玩家均投票后，本局游戏将会结束","color": "white"}]

scoreboard players set @s game_vote_stop 999