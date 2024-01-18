$scoreboard players set #check_id mp $(check_id)
$execute as @s[team=red] unless data storage mp:bingo t_red.checks.$(check_id) run function mp:game/red_check with storage mp:tmp b_info
$execute as @s[team=green] unless data storage mp:bingo t_green.checks.$(check_id) run function mp:game/green_check with storage mp:tmp b_info
$execute as @s[team=yellow] unless data storage mp:bingo t_yellow.checks.$(check_id) run function mp:game/yellow_check with storage mp:tmp b_info
$execute as @s[team=blue] unless data storage mp:bingo t_blue.checks.$(check_id) run function mp:game/blue_check with storage mp:tmp b_info