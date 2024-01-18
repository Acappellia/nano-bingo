execute as @a[scores={p_open=1..}] if data entity @s SelectedItem.tag.bingo at @s run function mp:phone/player_checkopen

execute as @e[type=item_display,tag=mp_bg_home] at @s run function mp:phone/check_tp2p

execute if score #game_open mp matches 1 as @a unless score @s game_start matches 1 run function mp:game/join_intergame