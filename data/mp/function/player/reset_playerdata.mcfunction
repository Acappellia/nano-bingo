data remove storage mp:player players
data remove storage mp:player uuid_check

scoreboard objectives remove p_id
scoreboard objectives remove p_tf_limit
scoreboard objectives remove p_bg_type
scoreboard objectives add p_id dummy
scoreboard objectives add p_tf_limit dummy
scoreboard objectives add p_bg_type dummy
scoreboard players set #player_id mp -1