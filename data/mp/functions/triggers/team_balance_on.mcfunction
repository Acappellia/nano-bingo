scoreboard players reset @s setting_team_balance

execute if score #random_team mp matches 0 run tellraw @s [{"text": "> ","color": "gold"},{"text": "未启用随机组队，无法设置队伍自动平衡","color": "gray"}]
execute if score #random_team mp matches 0 run return -1

scoreboard players set #team_balance mp 1
tellraw @a [{"text": "> ","color": "gold"},{"selector":"@s"},{"text": " 已设置自动平衡队伍 ","color": "white"},{"text": "开启","color": "gold"},{"text": "，无法平均分入队伍的玩家将轮空。设置将在下一局生效","color": "white"}]