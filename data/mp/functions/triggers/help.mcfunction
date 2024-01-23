scoreboard players reset @s help

tellraw @s [{"text": "[ ","color": "dark_green"},{"text": "游戏帮助","color": "green"},{"text": " ]","color": "dark_green"}]
tellraw @s [{"text": " ","color": "white"}]
tellraw @s [{"text": "- ","color": "gray"},{"text": "开始游戏","color": "white"},{"text": " -","color": "gray"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger game_start","color": "aqua"}]

tellraw @s [{"text": "- ","color": "gray"},{"text": "投票结束游戏","color": "white"},{"text": " -","color": "gray"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger game_vote_stop","color": "aqua"}]

tellraw @s [{"text": "- ","color": "gray"},{"text": "打开游戏菜单","color": "white"},{"text": " -","color": "gray"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "/trigger menu","color": "aqua"}]

tellraw @s [{"text": " ","color": "white"}]
tellraw @s [{"text": "> ","color": "gold"},{"text": "nano-bingo","color": "yellow"},{"text": " v1.2 ","color": "white"},{"text": "制作：","color": "gray"},{"text":"Ran_nano | 兰那梛","color":"white"}]