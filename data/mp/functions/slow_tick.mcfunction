execute as @a unless score @s p_id matches 0.. run function mp:player/init

#define score_holder #game_open
execute unless score #game_open mp matches 1.. run effect give @a saturation 3 0 true
execute unless score #game_open mp matches 1.. run effect give @a resistance 3 9 true

execute if score #game_open mp matches 1.. run kill @e[type=item,nbt={Item:{tag:{bingo:1}}}]
execute if score #game_open mp matches 1.. as @a run function mp:give_new_stick

schedule function mp:slow_tick 20t