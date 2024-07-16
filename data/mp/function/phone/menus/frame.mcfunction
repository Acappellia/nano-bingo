summon item_display ^ ^ ^ {item:{id:"white_concrete",count:1},Tags:["mp_bg_home","mp_display"],transformation:[240,0,0,0,0,240,0,0,0,0,1,3,0,0,0,800],billboard:"fixed",view_range:0.03f,glow_color_override:5066061}
summon item_display ^ ^ ^ {item:{id:"black_concrete",count:1},Tags:["mp_bg","mp_display"],transformation:[110,0,0,0,0,1,0,10,0,0,2,0,0,0,0,400],billboard:"fixed",view_range:0.03f,glow_color_override:5066061}
summon item_display ^ ^ ^ {item:{id:"black_concrete",count:1},Tags:["mp_bg","mp_display"],transformation:[110,0,0,0,0,1,0,30,0,0,2,0,0,0,0,400],billboard:"fixed",view_range:0.03f,glow_color_override:5066061}
summon item_display ^ ^ ^ {item:{id:"black_concrete",count:1},Tags:["mp_bg","mp_display"],transformation:[110,0,0,0,0,1,0,50,0,0,2,0,0,0,0,400],billboard:"fixed",view_range:0.03f,glow_color_override:5066061}
summon item_display ^ ^ ^ {item:{id:"black_concrete",count:1},Tags:["mp_bg","mp_display"],transformation:[110,0,0,0,0,1,0,-10,0,0,2,0,0,0,0,400],billboard:"fixed",view_range:0.03f,glow_color_override:5066061}
summon item_display ^ ^ ^ {item:{id:"black_concrete",count:1},Tags:["mp_bg","mp_display"],transformation:[110,0,0,0,0,1,0,-30,0,0,2,0,0,0,0,400],billboard:"fixed",view_range:0.03f,glow_color_override:5066061}
summon item_display ^ ^ ^ {item:{id:"black_concrete",count:1},Tags:["mp_bg","mp_display"],transformation:[110,0,0,0,0,1,0,-50,0,0,2,0,0,0,0,400],billboard:"fixed",view_range:0.03f,glow_color_override:5066061}
summon item_display ^ ^ ^ {item:{id:"black_concrete",count:1},Tags:["mp_bg","mp_display"],transformation:[1,0,0,10,0,110,0,0,0,0,2,0,0,0,0,400],billboard:"fixed",view_range:0.03f,glow_color_override:5066061}
summon item_display ^ ^ ^ {item:{id:"black_concrete",count:1},Tags:["mp_bg","mp_display"],transformation:[1,0,0,30,0,110,0,0,0,0,2,0,0,0,0,400],billboard:"fixed",view_range:0.03f,glow_color_override:5066061}
summon item_display ^ ^ ^ {item:{id:"black_concrete",count:1},Tags:["mp_bg","mp_display"],transformation:[1,0,0,50,0,110,0,0,0,0,2,0,0,0,0,400],billboard:"fixed",view_range:0.03f,glow_color_override:5066061}
summon item_display ^ ^ ^ {item:{id:"black_concrete",count:1},Tags:["mp_bg","mp_display"],transformation:[1,0,0,-10,0,110,0,0,0,0,2,0,0,0,0,400],billboard:"fixed",view_range:0.03f,glow_color_override:5066061}
summon item_display ^ ^ ^ {item:{id:"black_concrete",count:1},Tags:["mp_bg","mp_display"],transformation:[1,0,0,-30,0,110,0,0,0,0,2,0,0,0,0,400],billboard:"fixed",view_range:0.03f,glow_color_override:5066061}
summon item_display ^ ^ ^ {item:{id:"black_concrete",count:1},Tags:["mp_bg","mp_display"],transformation:[1,0,0,-50,0,110,0,0,0,0,2,0,0,0,0,400],billboard:"fixed",view_range:0.03f,glow_color_override:5066061}

function mp:phone/menus/icons
function mp:phone/menus/checks
function mp:phone/menus/wins

scoreboard players operation @e[type=item_display,distance=..0.1,tag=mp_display] p_id = @s p_id