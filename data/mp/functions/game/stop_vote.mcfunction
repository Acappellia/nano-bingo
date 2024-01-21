title @a title [{"text":"游 戏 结 束","color":"gray"}]
execute as @a at @s run playsound item.goat_horn.sound.4 player @s ~ ~ ~

tellraw @a [{"text": "> ","color": "gold"},{"text": "玩家投票通过，本局游戏结束","color": "gray"}]

function mp:game/stop