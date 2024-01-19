advancement revoke @s from mp:root
title @s title "已加入游戏"
scoreboard players set @s game_start 1
clear @s
gamemode survival @s
function mp:game/join_teams_loop
