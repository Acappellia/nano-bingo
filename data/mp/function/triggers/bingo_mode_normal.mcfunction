scoreboard players reset @s setting_bingo_mode

scoreboard players set #bingo_mode mp 0
tellraw @a [{"text": ">","color": "gold"},{"text": " ","color": "white"},{"selector":"@s"},{"text": " 已设置游戏模式为 ","color": "white"},{"text": "正常","color": "green"},{"text": "，可以正常激活棋盘，下局生效","color": "white"}]

function mp:triggers/menu