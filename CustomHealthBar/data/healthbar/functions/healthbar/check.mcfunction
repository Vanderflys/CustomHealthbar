tag @s add checked
tag @s add InProgress

data modify entity @s HandDropChances[1] set value 0.0f

## Set the initial clear data for the item
data modify entity @s HandItems[1] set value {id:"stone_button", Count:1b, tag:{CustomModelData:1, Health:0, MaxHealth:0, PrevHealth:0, Type:0}}
execute store result entity @s HandItems[1].tag.Health int 1 run data get entity @s Health
execute store result entity @s HandItems[1].tag.MaxHealth int 1 run data get entity @s Health


## Get the Mob Type and format the Healthbar
execute store result entity @s HandItems[1].tag.Type int 1 run function healthbar:formatting/get_mob


summon text_display ~ ~ ~ {Invulnerable:1b, Tags:[HealthBar], billboard:"center", default_background: 0b, background: 0, text:'[{"selector":"@e[type=!#ignore, tag=InProgress]", "color": "red"},{"text":" "},{"nbt":"HandItems[1].tag.Health", "entity": "@e[type=!#ignore, tag=InProgress]","color":"green"},{"text":"/","color":"dark_gray"},{"nbt":"HandItems[1].tag.MaxHealth", "entity": "@e[type=!#ignore, tag=InProgress]","color":"green"},{"text":"❤","color":"red"},{"text":"\\n"}]'}

ride @e[type=text_display, tag=HealthBar, sort=nearest, limit=1] mount @s


tag @s remove InProgress