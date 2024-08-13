scoreboard players reset @s setting_team_balance

execute if score #random_team mp matches 0 run tellraw @s [{"text": "> ","color": "gold"},{"text": "未启用随机组队，无法设置队伍自动平衡","color": "gray"}]
execute if score #random_team mp matches 0 run return -1

scoreboard players set #team_balance mp 1
tellraw @a [{"text": ">","color": "gold"},{"text": " ","color": "white"},{"selector":"@s"},{"text": " 已设置平衡队伍人数 ","color": "white"},{"text": "开启","color": "gold"},{"text": "，可能有玩家被轮空。 下局生效","color": "white"}]
function mp:triggers/menu