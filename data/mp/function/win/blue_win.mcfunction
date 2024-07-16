scoreboard players set #game_wins_blue mp 1
execute as @e[type=item_display,tag=mp_bg_home] at @s run function mp:phone/menus/update_wins
title @a[team=blue] title [{"text":"B I N G O !","color":"gold"}]
execute as @a[team=blue] at @s run playsound item.goat_horn.sound.1 player @s ~ ~ ~
title @a[team=!blue] title [{"text":"游 戏 结 束","color":"gray"}]
execute as @a[team=!blue] at @s run playsound item.goat_horn.sound.4 player @s ~ ~ ~
tellraw @a [{"text": "> ","color": "gold"},{"text": "蓝队 ","color": "aqua"},{"text": "胜利！","color": "white"}]
function mp:game/stop