scoreboard players reset @s setting_bingo_list

scoreboard players set #bingo_list mp 1
tellraw @a [{"text": ">","color": "gold"},{"text": " ","color": "white"},{"selector":"@s"},{"text": " 已设置物品池为 ","color": "white"},{"text": "完整","color": "gold"},{"text": "，下局生效","color": "white"}]

function mp:triggers/menu