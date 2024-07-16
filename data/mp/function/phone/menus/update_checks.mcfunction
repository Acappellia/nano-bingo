kill @e[type=item_display,tag=mp_checks,distance=..1]
function mp:phone/menus/checks
scoreboard players operation @e[type=item_display,distance=..0.1,tag=mp_checks] p_id = @s p_id
particle firework ~ ~ ~ 0 0 0 0.05 10