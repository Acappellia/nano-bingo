scoreboard objectives remove bingo_selected
scoreboard objectives add bingo_selected dummy

scoreboard players reset #game_open mp
execute as @a at @s run playsound item.goat_horn.sound.1 player @s ~ ~ ~
