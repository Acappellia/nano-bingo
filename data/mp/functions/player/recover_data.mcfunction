##recover player data

execute store result score @s p_id run data get storage mp:player uuid_check[0].playerid
function mp:player/recover_scoreboard with storage mp:player uuid_check[0]

##update name
setblock 0 -62 0 shulker_box{Items:[{Slot:0b,id:"player_head",Count:1b}]}
item modify block 0 -62 0 container.0 mp:set_skull
data modify storage mp:player uuid_check[0].name set from block 0 -62 0 Items[0].tag.SkullOwner.Name
setblock 0 -62 0 air