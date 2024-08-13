scoreboard players reset @s setting_bingo_mode

scoreboard players set #bingo_mode mp 1
tellraw @a [{"text": ">","color": "gold"},{"text": " ","color": "white"},{"selector":"@s"},{"text": " 已设置游戏模式为 ","color": "white"},{"text": "争夺","color": "gold"},{"text": "，棋盘每格只可激活一次，下局生效","color": "white"}]

function mp:triggers/menu