kill @e[type=item,nbt={Item:{tag:{bingo:1}}}]
execute as @a run function mp:give_new_stick

#define score_holder #round_time
#define score_holder #time_min
#define score_holder #time_sec
#define score_holder #check_noplayer

bossbar set roundtime players @a
execute store result bossbar roundtime value store result score #time_min mp store result score #time_sec mp run scoreboard players remove #round_time mp 1

scoreboard players operation #time_min mp /= #60 mp
scoreboard players operation #time_sec mp %= #60 mp

execute if score #time_min mp matches 10.. if score #time_sec mp matches 10.. run bossbar set roundtime name [{"text": "剩余时间 - ","color": "white"},{"score":{"name": "#time_min","objective": "mp"},"color": "gold"},{"text": " : ","color": "white"},{"score":{"name": "#time_sec","objective": "mp"},"color": "gold"}]
execute unless score #time_min mp matches 10.. if score #time_sec mp matches 10.. run bossbar set roundtime name [{"text": "剩余时间 - ","color": "white"},{"text": "0","color": "gold"},{"score":{"name": "#time_min","objective": "mp"},"color": "gold"},{"text": " : ","color": "white"},{"score":{"name": "#time_sec","objective": "mp"},"color": "gold"}]
execute if score #time_min mp matches 10.. unless score #time_sec mp matches 10.. run bossbar set roundtime name [{"text": "剩余时间 - ","color": "white"},{"score":{"name": "#time_min","objective": "mp"},"color": "gold"},{"text": " : ","color": "white"},{"text": "0","color": "gold"},{"score":{"name": "#time_sec","objective": "mp"},"color": "gold"}]
execute unless score #time_min mp matches 10.. unless score #time_sec mp matches 10.. run bossbar set roundtime name [{"text": "剩余时间 - ","color": "white"},{"text": "0","color": "gold"},{"score":{"name": "#time_min","objective": "mp"},"color": "gold"},{"text": " : ","color": "white"},{"text": "0","color": "gold"},{"score":{"name": "#time_sec","objective": "mp"},"color": "gold"}]

execute if entity @a[team=!] run scoreboard players reset #check_noplayer mp
execute unless entity @a[team=!] run scoreboard players remove #check_noplayer mp 1
execute if score #check_noplayer mp matches ..-2 run tellraw @a [{"text": "> ","color": "gold"},{"text":"所有小队玩家已退出，正在等待重新连接……（60s）","color": "gray"}]
execute if score #check_noplayer mp matches ..-60 run function mp:game/stop_logout

execute if score #round_time mp matches ..0 run function mp:game/stop_timeout

execute if entity @a[team=!] unless entity @a[team=!,scores={game_vote_stop=0}] run function mp:game/stop_vote