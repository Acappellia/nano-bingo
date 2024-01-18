execute as @a unless score @s p_id matches 0.. run function mp:player/init

#define score_holder #game_open
execute unless score #game_open mp matches 1.. run effect give @a saturation 3 0 true
execute unless score #game_open mp matches 1.. run effect give @a resistance 3 9 true

execute if score #game_open mp matches 1.. run kill @e[type=item,nbt={Item:{tag:{bingo:1}}}]
execute if score #game_open mp matches 1.. as @a unless data entity @s Inventory[{tag:{bingo:1}}] run give @s warped_fungus_on_a_stick{bingo:1,display:{Name:'[{"text": "Bingo!","color": "gold"}]',Lore:['[{"text": "右键查看 Bingo 菜单，再次右键关闭","color": "white"}]','[{"text": "未手持时将在右上角缩小显示","color": "gray"}]']}}

schedule function mp:slow_tick 20t