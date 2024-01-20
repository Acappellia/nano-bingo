advancement revoke @s only mp:use_bed

tag @s add ray
execute anchored eyes positioned ^ ^ ^0.5 run function mp:bed/ray
tag @s remove ray