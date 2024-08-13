scoreboard players reset @s setting_deathdrop

scoreboard players set #death_drop mp 1
tellraw @a [{"text": ">","color": "gold"},{"text": " ","color": "white"},{"selector":"@s"},{"text": " 已设置死亡掉落为 ","color": "white"},{"text": "开启","color": "gold"},{"text": "，下局生效","color": "white"}]

function mp:triggers/menu