scoreboard players reset @s setting_random_team

scoreboard players set #random_team mp 1
tellraw @a [{"text": ">","color": "gold"},{"text": " ","color": "white"},{"selector":"@s"},{"text": " 已设置随机组队为 ","color": "white"},{"text": "开启","color": "gold"},{"text": "，下局生效","color": "white"}]

execute unless score #game_open mp matches 1.. run function mp:emtpy_teams
function mp:triggers/menu