execute store result score Health Temp run data get entity @s Health
execute store result score PrevHealth Temp run data get entity @s HandItems[1].tag.PrevHealth

scoreboard players operation PrevHealth Temp -= Health Temp

$execute facing entity @p eyes positioned ^ ^ ^1.5 run summon text_display ~ ~.75 ~ {Invulnerable:1b, Tags:[New, damageDisplay], billboard:"center", default_background: 0b, background: 0, text:'[{"score":{"name":"PrevHealth","objective":"Temp"},"color":"$(color)"}]'}

scoreboard players set @e[type=text_display, tag=damageDisplay, tag=New] Temp 15
tag @e[type=text_display, tag=damageDisplay, tag=New] remove New