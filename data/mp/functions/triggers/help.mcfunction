scoreboard players reset @s help

tellraw @s [{"text": "[ ","color": "dark_green"},{"text": "游戏设置说明","color": "green"},{"text": " ]","color": "dark_green"}]

tellraw @s [{"text": " ","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger game_start","color": "aqua"},{"text": " 开始一局游戏","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger game_vote_stop","color": "aqua"},{"text": " 投票结束本局游戏","color": "white"}]

tellraw @s [{"text": " ","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger player_join_team set -1","color": "aqua"},{"text": " 退出所有队伍","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger player_join_team set 1","color": "aqua"},{"text": " 加入红队（需要关闭随机组队）","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger player_join_team set 2","color": "aqua"},{"text": " 加入蓝队（需要关闭随机组队）","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger player_join_team set 3","color": "aqua"},{"text": " 加入黄队（需要关闭随机组队）","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger player_join_team set 4","color": "aqua"},{"text": " 加入绿队（需要关闭随机组队）","color": "white"}]

tellraw @s [{"text": " ","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger setting_check","color": "aqua"},{"text": " 查看当前游戏设置","color": "white"}]

tellraw @s [{"text": " ","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger setting_difficulty set 1","color": "aqua"},{"text": " 设置游戏难度为简单","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger setting_difficulty set 2","color": "aqua"},{"text": " 设置游戏难度为中等","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger setting_difficulty set 3","color": "aqua"},{"text": " 设置游戏难度为困难（默认设置）","color": "white"}]

tellraw @s [{"text": " ","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger setting_max_team set 1","color": "aqua"},{"text": " 设置最大队伍数量为 1 （合作模式）","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger setting_max_team set 2","color": "aqua"},{"text": " 设置最大队伍数量为 2","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger setting_max_team set 3","color": "aqua"},{"text": " 设置最大队伍数量为 3","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger setting_max_team set 4","color": "aqua"},{"text": " 设置最大队伍数量为 4 （默认设置）","color": "white"}]

tellraw @s [{"text": " ","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger setting_random_team set 1","color": "aqua"},{"text": " 开启随机组队（默认设置）","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger setting_random_team set -1","color": "aqua"},{"text": " 关闭随机组队，玩家需要手动加入队伍，否则不会加入游戏","color": "white"}]

tellraw @s [{"text": " ","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger setting_team_balance set 1","color": "aqua"},{"text": " 开启队伍平衡，多余的玩家会轮空","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger setting_team_balance set -1","color": "aqua"},{"text": " 关闭队伍平衡，没有玩家轮空（默认设置）","color": "white"}]

tellraw @s [{"text": " ","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger setting_bingo_target set -1","color": "aqua"},{"text": " 修改游戏目标为根据队伍人数自动设置（默认设置）","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger setting_bingo_target set -1","color": "aqua"},{"text": " 修改游戏目标为 1 条连线","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger setting_bingo_target set -1","color": "aqua"},{"text": " 修改游戏目标为 2 条连线","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger setting_bingo_target set -1","color": "aqua"},{"text": " 修改游戏目标为 3 条连线（困难）","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger setting_bingo_target set -1","color": "aqua"},{"text": " 修改游戏目标为 4 条连线（很困难）","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger setting_bingo_target set -1","color": "aqua"},{"text": " 修改游戏目标为 5 条连线（极其困难）","color": "white"}]

tellraw @s [{"text": " ","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "nano-bingo","color": "yellow"},{"text": " v1.2","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "制作：","color": "gray"},{"text":"Ran_nano | 兰那梛","color":"white"}]