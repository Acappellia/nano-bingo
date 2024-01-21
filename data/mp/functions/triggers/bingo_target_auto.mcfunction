scoreboard players operation #bingo_target mp = @s setting_bingo_target
tellraw @a [{"text": "> ","color": "gold"},{"selector":"@s"},{"text": " 已设置游戏目标为 ","color": "white"},{"text":"自动配置","color": "green"},{"text": "，将在下一局生效","color": "white"}]

scoreboard players reset @s setting_bingo_target