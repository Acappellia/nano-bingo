scoreboard players reset @s p_active_app

playsound ui.toast.in block @s ~ ~ ~ 1 1.2

scoreboard players operation #p_id mp = @s p_id

execute positioned ~ ~1.62 ~ positioned ^ ^ ^0.5 as @e[type=item_display,tag=mp_bg_home,distance=..4] if score @s p_id = #p_id mp at @s run function mp:phone/clear_menu