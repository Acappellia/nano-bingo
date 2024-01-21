scoreboard players reset @s game_start

execute if score #allow_trigger mp matches 1.. run function mp:000_bingo_newgame
execute unless score #allow_trigger mp matches 1.. run tellraw @s [{"text": "> ","color": "gold"},{"text": "现在还不能开始游戏……","color": "gray"}]