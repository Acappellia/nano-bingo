scoreboard players reset @s setting_random_team

scoreboard players set #random_team mp 0
tellraw @a [{"text": "> ","color": "gold"},{"selector":"@s"},{"text": " 已设置随机组队为 ","color": "white"},{"text": "关闭","color": "yellow"},{"text": "，将在下一局生效","color": "white"}]