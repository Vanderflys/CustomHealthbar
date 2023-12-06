tag @s add InProgress


summon text_display ~ ~ ~ {Invulnerable:1b, Tags:[HealthBar], billboard:"center", default_background: 0b, background: 0, text:'[{"selector":"@e[type=!#ignore, tag=InProgress]", "color": "red"},{"text":" "},{"nbt":"HandItems[1].tag.Health", "entity": "@e[type=!#ignore, tag=InProgress]","color":"green"},{"text":"/","color":"dark_gray"},{"nbt":"HandItems[1].tag.MaxHealth", "entity": "@e[type=!#ignore, tag=InProgress]","color":"green"},{"text":"❤","color":"red"},{"text":"\\n"}]'}

ride @e[type=text_display, tag=HealthBar, sort=nearest, limit=1] mount @s


tag @s remove InProgress