data modify storage mp:bingo wins.green.l5 set value 1
execute as @e[type=item_display,tag=mp_bg_home] at @s run function mp:phone/menus/update_wins
title @a[team=green] title [{"text":"B I N G O !","color":"gold"}]
title @a[team=!green] title [{"text":"游 戏 结 束","color":"gray"}]
function mp:game/stop