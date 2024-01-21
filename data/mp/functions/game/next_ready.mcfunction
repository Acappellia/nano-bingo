scoreboard players set #allow_trigger mp 1
scoreboard players reset #game_interval mp
bossbar set roundinterval name [{"text": "新游戏准备就绪！","color": "yellow"}]

tellraw @a [{"text": "> ","color": "gold"},{"text": "新游戏已经准备就绪，输入 ","color": "yellow"},{"text": "/trigger start set 1","color": "aqua"},{"text": " 开始游戏","color": "yellow"}]