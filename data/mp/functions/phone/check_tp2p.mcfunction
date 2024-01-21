scoreboard players operation #p_id mp = @s p_id
execute unless entity @p[distance=..4] run function mp:phone/clear_menu
execute if entity @p[distance=..4] run function mp:phone/tp2p