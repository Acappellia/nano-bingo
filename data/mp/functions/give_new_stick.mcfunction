#define score_holder #clear_result

execute store result score #clear_result mp run clear @s warped_fungus_on_a_stick{bingo:1} 0
execute unless score #clear_result mp matches 1.. run give @s warped_fungus_on_a_stick{bingo:1,display:{Name:'[{"text": "Bingo!","color": "gold"}]',Lore:['[{"text": "右键查看 Bingo 菜单，再次右键关闭","color": "white"}]','[{"text": "未手持时将在右上角缩小显示","color": "gray"}]']}}
