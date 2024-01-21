bossbar set roundinterval players @a
execute store result bossbar roundinterval value run scoreboard players add #round_interval mp 1
execute if score #round_interval mp matches 60.. run function mp:game/next_ready