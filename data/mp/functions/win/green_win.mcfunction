scoreboard players set #game_wins_green mp 1
execute as @e[type=item_display,tag=mp_bg_home] at @s run function mp:phone/menus/update_wins
title @a[team=green] title [{"text":"B I N G O !","color":"gold"}]
execute as @a[team=green] at @s run playsound item.goat_horn.sound.1 player @s ~ ~ ~
title @a[team=!green] title [{"text":"游 戏 结 束","color":"gray"}]
execute as @a[team=!green] at @s run playsound item.goat_horn.sound.3 player @s ~ ~ ~
tellraw @a [{"text": "> ","color": "gold"},{"text": "绿队 ","color": "green"},{"text": "胜利！","color": "white"}]
function mp:game/stop