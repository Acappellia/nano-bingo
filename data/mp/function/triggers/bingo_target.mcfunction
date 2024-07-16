scoreboard players operation #bingo_target mp = @s setting_bingo_target
tellraw @a [{"text": ">","color": "gold"},{"text": " ","color": "white"},{"selector":"@s"},{"text": " 已设置游戏目标为完成 ","color": "white"},{"score":{"name": "@s","objective": "setting_bingo_target"},"color": "aqua"},{"text": " 条连线。设置将在下一局生效","color": "white"}]

scoreboard players reset @s setting_bingo_target
function mp:triggers/menu