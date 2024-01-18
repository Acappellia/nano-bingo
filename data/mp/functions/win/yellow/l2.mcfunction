data modify storage mp:bingo wins.yellow.l2 set value 1
execute as @e[type=item_display,tag=mp_bg_home] at @s run function mp:phone/menus/update_wins
title @a[team=yellow] title "B I N G O !"
title @a[team=!yellow] title "游戏结束！"
function mp:game/stop