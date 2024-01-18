#define storage mp:tmp
#define storage mp:player
#define storage mp:data
#define storage mp:bingo

forceload add 0 0 0 0

scoreboard objectives add mp dummy
scoreboard players set #3000 mp 3000
scoreboard players set #50 mp 50
scoreboard players set #3 mp 3
scoreboard players set #5 mp 5

#define score_holder #player_id
#define score_holder #gm_id
execute unless score #player_id mp matches 0.. run scoreboard players set #player_id mp -1
execute unless score #gm_id mp matches 0.. run scoreboard players set #gm_id mp -1

scoreboard objectives add p_id dummy

##scoreboards to recover
scoreboard objectives add p_money dummy
scoreboard objectives add p_tf_limit dummy
scoreboard objectives add p_bg_type dummy
scoreboard objectives add p_music_sl_0 dummy
scoreboard objectives add p_music_sl_1 dummy
scoreboard objectives add p_music_sl_2 dummy
scoreboard objectives add p_music_sl_3 dummy
scoreboard objectives add p_music_sl_4 dummy
scoreboard objectives add p_music_sl_5 dummy
scoreboard objectives add p_music_sl_6 dummy

##tmp scoreboard
scoreboard objectives add p_open used:warped_fungus_on_a_stick
scoreboard objectives add p_select dummy
scoreboard objectives add p_ani_cd custom:time_since_death
scoreboard objectives add p_group_line dummy
scoreboard objectives add p_group_viewid dummy
scoreboard objectives add p_active_app dummy
scoreboard objectives add p_friend_id dummy
scoreboard objectives add p_friend_index dummy
scoreboard objectives add p_pm_line dummy
scoreboard objectives add p_af_id dummy
scoreboard objectives add p_music_playing dummy
scoreboard objectives add p_music_cd custom:time_since_death
scoreboard objectives add p_music_autostop dummy

scoreboard objectives add m_interact_time dummy
scoreboard objectives add m_ani_type dummy
scoreboard objectives add m_app dummy
scoreboard objectives add m_friend_index dummy

##init data
function mp:slow_tick
function mp:2gttick

##bingo data
scoreboard objectives add bingo_selected dummy
scoreboard objectives add bingo_score dummy

team add red
team modify red color red
team modify red friendlyFire false
team modify red collisionRule always
team modify red nametagVisibility always
team modify red seeFriendlyInvisibles true
team join red #red
team add green
team modify green color green
team modify green friendlyFire false
team modify green collisionRule always
team modify green nametagVisibility always
team modify green seeFriendlyInvisibles true
team join green #green
team add yellow
team modify yellow color yellow
team modify yellow friendlyFire false
team modify yellow collisionRule always
team modify yellow nametagVisibility always
team modify yellow seeFriendlyInvisibles true
team join yellow #yellow
team add blue
team modify blue color aqua
team modify blue friendlyFire false
team modify blue collisionRule always
team modify blue nametagVisibility always
team modify blue seeFriendlyInvisibles true
team join blue #blue
