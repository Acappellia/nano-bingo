scoreboard players operation #max_team mp = @s setting_max_team
tellraw @a [{"text": ">","color": "gold"},{"text": " ","color": "white"},{"selector":"@s"},{"text": " 已设置最大队伍数量为 ","color": "white"},{"score":{"name": "@s","objective": "setting_max_team"},"color": "aqua"},{"text": "，将在下一局生效","color": "white"}]

scoreboard players reset @s setting_max_team
function mp:triggers/menu