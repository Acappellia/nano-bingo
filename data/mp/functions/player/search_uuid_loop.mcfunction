##search uuid loop

#define score_holder #search_uuid_check

##check the current id
execute store success score #search_uuid_check mp run data modify storage mp:tmp search.check_UUID set from storage mp:tmp search.target_UUID
execute if score #search_uuid_check mp matches 0 run return 2

##move list top to bottom
data modify storage mp:player uuid_check append from storage mp:player uuid_check[0]
data remove storage mp:player uuid_check[0]

##get current id again
data modify storage mp:tmp search.check_UUID set from storage mp:player uuid_check[0].UUID

##check if looped a full cucle
execute store success score #search_uuid_check mp run data modify storage mp:tmp search.check_UUID set from storage mp:tmp search.init_UUID
data modify storage mp:tmp search.check_UUID set from storage mp:player uuid_check[0].UUID
execute if score #search_uuid_check mp matches 0 run return -1

##loop
function mp:player/search_uuid_loop