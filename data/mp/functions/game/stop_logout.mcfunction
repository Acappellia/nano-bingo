title @a title [{"text":"游 戏 结 束","color":"gray"}]
execute as @a at @s run playsound item.goat_horn.sound.4 player @s ~ ~ ~

tellraw @a [{"text": "> ","color": "gold"},{"text": "所有小队玩家重连超时，游戏已结束","color": "gray"}]

function mp:game/stop