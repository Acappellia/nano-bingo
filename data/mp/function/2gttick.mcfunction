tag @a remove holding_rod
execute as @a if data entity @s SelectedItem.components."minecraft:custom_data".bingo run tag @s add holding_rod

schedule function mp:2gttick 2t