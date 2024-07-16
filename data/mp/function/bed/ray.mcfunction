execute if block ~ ~ ~ #mp:beds run setblock ~ ~ ~ air destroy
execute unless block ~ ~ ~ #mp:beds if entity @p[tag=ray,distance=..10] positioned ^ ^ ^0.5 run function mp:bed/ray