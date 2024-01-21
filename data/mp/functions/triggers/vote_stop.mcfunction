scoreboard players set @s game_vote_stop 0

execute unless score #game_open mp matches 1.. run tellraw @s [{"text": "> ","color": "gold"},{"text": "游戏尚未开始","color": "gray"}]
execute unless score #game_open mp matches 1.. run return -1

tellraw @a [{"text": "> ","color": "gold"},{"selector":"@s"},{"text": " 投票结束本局游戏，输入 ","color": "white"},{"text": "/trigger game_vote_stop set 1","color": "aqua"},{"text": " 加入投票\n所有游玩中的玩家均投票后，本局游戏将会结束","color": "white"}]

scoreboard players set @s game_vote_stop 999