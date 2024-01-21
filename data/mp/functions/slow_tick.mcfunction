execute as @a unless score @s p_id matches 0.. run function mp:player/init

#define score_holder #game_open
execute unless score #game_open mp matches 1.. run effect give @a saturation 3 0 true
execute unless score #game_open mp matches 1.. run effect give @a resistance 3 9 true

scoreboard players enable @a start

execute if score #game_open mp matches 1 run function mp:game/slowtick
execute if score #game_interval mp matches 1 run function mp:game/interval_slowtick

execute unless score #game_open mp matches 1.. run bossbar set roundinterval players @a

schedule function mp:slow_tick 20t