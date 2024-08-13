scoreboard players reset @s setting_difficulty

scoreboard players set #difficulty mp 1
tellraw @a [{"text": ">","color": "gold"},{"text": " ","color": "white"},{"selector":"@s"},{"text": " 已设置游戏难度为 ","color": "white"},{"text": "简单","color": "green"},{"text": "，下局生效","color": "white"}]
function mp:triggers/menu