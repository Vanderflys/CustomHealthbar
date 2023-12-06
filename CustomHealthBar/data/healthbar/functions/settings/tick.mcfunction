## Damage displays
execute if data storage healthbar damageDisplay as @e[type=!#ignore, type=!#not_hostile, nbt={HurtTime:10s}] at @s run function healthbar:damage/hit with storage healthbar colorcode.damageDisplay


## Health Displays
execute if data storage healthbar enabled as @e[type=!#ignore, tag=!checked] at @s run function healthbar:healthbar/check
execute if data storage healthbar enabled as @e[type=!#ignore, tag=checked] at @s run function healthbar:healthbar/update


## Kill any text displays that do have a vehicle or re_enable them if they don't have a vehicle
execute if data storage healthbar enabled as @e[type=!#ignore, tag=checked, predicate=!healthbar:passenger] at @s run function healthbar:healthbar/re_enable
execute unless data storage healthbar enabled as @e[type=!#ignore, tag=checked] at @s run kill @e[type=text_display, tag=HealthBar, predicate=healthbar:alive]


## Damage Icon Timers
scoreboard players remove @e[type=text_display, tag=damageDisplay, scores={Temp=1..}] Temp 1
execute as @e[type=text_display, tag=damageDisplay, scores={Temp=0}] run kill @s


## Kill any text displays that don't have a vehicle
kill @e[type=text_display, tag=HealthBar, predicate=!healthbar:alive]