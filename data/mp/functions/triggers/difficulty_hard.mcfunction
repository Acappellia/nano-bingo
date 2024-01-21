scoreboard players reset @s setting_difficulty

scoreboard players set #difficulty mp 3
tellraw @a [{"text": ">","color": "gold"},{"text": " ","color": "white"},{"selector":"@s"},{"text": " 已设置游戏难度为 ","color": "white"},{"text": "困难","color": "red"},{"text": "，将在下一局生效","color": "white"}]