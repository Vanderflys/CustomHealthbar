data modify storage healthbar enabled set value 1b
data modify storage healthbar damageDisplay set value 1b

data modify storage healthbar colorcode.not_hostile set value {name:"dark_green",health:"green",seperator:"dark_gray",maxHealth:"green",heart:"red"}
data modify storage healthbar colorcode.hostile set value {name:"red",health:"green",seperator:"dark_gray",maxHealth:"green",heart:"red"}
data modify storage healthbar colorcode.damageDisplay set value {color:"dark_red"}

scoreboard objectives add Temp dummy