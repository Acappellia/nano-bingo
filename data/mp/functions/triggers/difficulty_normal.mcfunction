scoreboard players reset @s setting_difficulty

scoreboard players set #difficulty mp 2
tellraw @a [{"text": "> ","color": "gold"},{"selector":"@s"},{"text": " 已设置游戏难度为 ","color": "white"},{"text": "普通","color": "yellow"},{"text": "，将在下一局生效","color": "white"}]