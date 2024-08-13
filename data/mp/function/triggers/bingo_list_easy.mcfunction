scoreboard players reset @s setting_bingo_list

scoreboard players set #bingo_list mp 0
tellraw @a [{"text": ">","color": "gold"},{"text": " ","color": "white"},{"selector":"@s"},{"text": " 已设置物品池为 ","color": "white"},{"text": "精简","color": "green"},{"text": "，下局生效","color": "white"}]

function mp:triggers/menu