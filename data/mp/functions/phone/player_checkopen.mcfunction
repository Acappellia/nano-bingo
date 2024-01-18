scoreboard players reset @s p_open
#define score_holder #is_open
scoreboard players operation #is_open mp = @s p_active_app
execute if score #is_open mp matches 1.. run function mp:phone/player_close
execute unless score #is_open mp matches 1.. run function mp:phone/player_open