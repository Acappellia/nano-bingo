scoreboard players reset @s help

tellraw @s [{"text": "[ ","color": "dark_green"},{"text": "游戏设置说明","color": "green"},{"text": " ]","color": "dark_green"}]
tellraw @s [{"text": " ","color": "white"}]
tellraw @s [{"text": "- ","color": "gray"},{"text": "开始与结束","color": "white"},{"text": " -","color": "gray"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger game_start","color": "aqua"},{"text": " 开始一局游戏","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger game_vote_stop","color": "aqua"},{"text": " 投票结束本局游戏","color": "white"}]

tellraw @s [{"text": "- ","color": "gray"},{"text": "加入队伍","color": "white"},{"text": "（需要关闭随机组队）-","color": "gray"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger player_join_team set -1","color": "aqua"},{"text": " 退出所有队伍","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger player_join_team set 1","color": "aqua"},{"text": " 加入红队","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger player_join_team set 2","color": "aqua"},{"text": " 加入蓝队","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger player_join_team set 3","color": "aqua"},{"text": " 加入黄队","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger player_join_team set 4","color": "aqua"},{"text": " 加入绿队","color": "white"}]

tellraw @s [{"text": " ","color": "white"}]
tellraw @s [{"text": "- ","color": "gray"},{"text": "查看当前游戏设置","color": "white"},{"text": " -","color": "gray"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger setting_check","color": "aqua"}]
tellraw @s [{"text": "- ","color": "gray"},{"text": "难度设置","color": "white"},{"text": "（原版游戏难度）-","color": "gray"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger setting_difficulty set 1","color": "aqua"},{"text": " 设置游戏难度为简单","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger setting_difficulty set 2","color": "aqua"},{"text": " 设置游戏难度为中等","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger setting_difficulty set 3","color": "aqua"},{"text": " 设置游戏难度为困难（默认）","color": "white"}]

tellraw @s [{"text": "- ","color": "gray"},{"text": "最大队伍数量设置","color": "white"},{"text": " -","color": "gray"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger setting_max_team set 1","color": "aqua"},{"text": " 设置最大队伍数量为 1 （合作）","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger setting_max_team set 2","color": "aqua"},{"text": " 设置最大队伍数量为 2","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger setting_max_team set 3","color": "aqua"},{"text": " 设置最大队伍数量为 3","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger setting_max_team set 4","color": "aqua"},{"text": " 设置最大队伍数量为 4 （默认）","color": "white"}]

tellraw @s [{"text": "- ","color": "gray"},{"text": "玩家组队设置","color": "white"},{"text": " -","color": "gray"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger setting_random_team set 1","color": "aqua"},{"text": " 玩家随机组队（默认）","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger setting_random_team set -1","color": "aqua"},{"text": " 玩家使用指令组队","color": "white"}]

tellraw @s [{"text": "- ","color": "gray"},{"text": "人数平衡设置","color": "white"},{"text": "（开启后每队人数相同，多余玩家会轮空）-","color": "gray"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger setting_team_balance set 1","color": "aqua"},{"text": " 开启队伍平衡","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger setting_team_balance set -1","color": "aqua"},{"text": " 关闭队伍平衡（默认）","color": "white"}]

tellraw @s [{"text": "- ","color": "gray"},{"text": "游戏目标设置","color": "white"},{"text": "（需要完成连线的数量）-","color": "gray"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger setting_bingo_target set -1","color": "aqua"},{"text": " 根据人数自动设置（默认）","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger setting_bingo_target set 1","color": "aqua"},{"text": " 修改为 1 条连线","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger setting_bingo_target set 2","color": "aqua"},{"text": " 修改为 2 条连线","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger setting_bingo_target set 3","color": "aqua"},{"text": " 修改为 3 条连线（困难）","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger setting_bingo_target set 4","color": "aqua"},{"text": " 修改为 4 条连线（极难）","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger setting_bingo_target set 5","color": "aqua"},{"text": " 修改为 5 条连线（超级难）","color": "white"}]

tellraw @s [{"text": " ","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "nano-bingo","color": "yellow"},{"text": " v1.2","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "制作：","color": "gray"},{"text":"Ran_nano | 兰那梛","color":"white"}]