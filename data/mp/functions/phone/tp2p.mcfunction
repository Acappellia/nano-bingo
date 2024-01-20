scoreboard players operation #p_id mp = @s p_id

execute as @e[type=item_display,tag=mp_display,distance=..1] if score @s p_id = #p_id mp run tag @s add tp2p
execute as @a[distance=..5] if score @s p_id = #p_id mp run tag @s add tp_target

execute as @e[type=item_display,tag=tp2p,distance=..1] run data merge entity @s {teleport_duration:2,start_interpolation:-1}

execute as @p[distance=..5,tag=tp_target,tag=holding_rod] at @s anchored eyes positioned ^ ^ ^0.3 run tp @e[type=item_display,tag=tp2p,distance=..5] ^ ^ ^ ~ ~
execute as @p[distance=..5,tag=tp_target,tag=!holding_rod] at @s anchored eyes positioned ^-0.5 ^0.1 ^0.5 run tp @e[type=item_display,tag=tp2p,distance=..5] ^ ^ ^ ~ ~

execute if score @p[distance=..5,tag=tp_target] sprinting matches ..-1 at @s run tp @e[type=item_display,tag=tp2p,distance=..1] ^ ^ ^0.8 ~ ~
execute if score @p[distance=..5,tag=tp_target] boating matches ..-1 at @s run tp @e[type=item_display,tag=tp2p,distance=..1] ^ ^ ^1.2 ~ ~

tag @a remove tp_target
tag @e[type=item_display,tag=tp2p,distance=..5] remove tp2p