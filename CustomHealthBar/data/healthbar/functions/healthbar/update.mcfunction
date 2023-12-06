tag @s add Updating


## Update the Healthbar
execute store result entity @s HandItems[1].tag.Health int 1 run data get entity @s Health
execute store result entity @s HandItems[1].tag.PrevHealth int 1 run data get entity @s Health


execute as @s[nbt={HandItems:[{},{tag:{Type:1}}]}] on passengers run function healthbar:formatting/set_colors with storage healthbar colorcode.not_hostile
execute as @s[nbt={HandItems:[{},{tag:{Type:2}}]}] on passengers run function healthbar:formatting/set_colors with storage healthbar colorcode.hostile


tag @s remove Updating 