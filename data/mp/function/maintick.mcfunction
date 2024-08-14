execute as @a[scores={p_open=1..}] if data entity @s SelectedItem.components."minecraft:custom_data".bingo at @s run function mp:phone/player_checkopen

execute as @e[type=item_display,tag=mp_bg_home] at @s run function mp:phone/check_tp2p

execute if score #game_open mp matches 1 as @a unless score @s ingame matches 1 run function mp:game/join_intergame

execute as @a if score @s check_sprint matches 1.. run scoreboard players set @s sprinting -5
scoreboard players reset @a check_sprint

execute as @a if score @s check_boat matches 10.. run scoreboard players set @s boating -3
scoreboard players reset @a check_boat

clear @a #mp:beds

function mp:check_trigger