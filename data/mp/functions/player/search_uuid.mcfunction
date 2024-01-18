##search uuid

##init a marker & check current id
data modify storage mp:tmp search.check_UUID set from storage mp:player uuid_check[0].UUID
data modify storage mp:tmp search.init_UUID set from storage mp:player uuid_check[0].UUID

##if it has a value, enter loop
execute if data storage mp:tmp search.check_UUID run function mp:player/search_uuid_loop