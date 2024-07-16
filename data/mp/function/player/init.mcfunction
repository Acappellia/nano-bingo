##init player

#define score_holder #search_result

##check if player changed
data remove storage mp:tmp search
data modify storage mp:tmp search.target_UUID set from entity @s UUID
execute store result score #search_result mp run function mp:player/search_uuid
execute if score #search_result mp matches 2 run function mp:player/recover_data
execute if score #search_result mp matches 2 run return 1

##add data in uuid_check
data modify storage mp:player uuid_check prepend value {}
data modify storage mp:player uuid_check[0].UUID set from storage mp:tmp search.target_UUID
execute store result score @s p_id store result storage mp:player uuid_check[0].playerid int 1 run scoreboard players add #player_id mp 1
setblock 0 -62 0 shulker_box{Items:[{Slot:0b,id:"player_head",count:1}]}
item modify block 0 -62 0 container.0 mp:set_skull
data modify storage mp:player uuid_check[0].name set from block 0 -62 0 Items[0].components."minecraft:custom_data".SkullOwner.Name
setblock 0 -62 0 air

##init data
data modify storage mp:player players append value {}
data modify storage mp:player players[-1].playerid set from storage mp:player uuid_check[0].playerid
data modify storage mp:player players[-1].info.name set from storage mp:player uuid_check[0].name
data modify storage mp:player players[-1].info.avatar set value "apple"
function mp:player/inits/storage

##init scores
scoreboard players set @s p_bg_type 0
scoreboard players set @s p_tf_limit 0