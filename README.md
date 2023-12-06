A fully customizable datapack for Minecraft 1.20.2+ that displays a health bar for nearly all mobs. This datapack also includes a damage display showing how much damage you did. The health bar and damage display can both be customized to suit your preferences and colorful imagination while maintaining the Minecraft aesthetic. It works seamlessly in both single-player and multiplayer modes.

## Installation
When installed it won't automatically work because you have to use a command to 'install' it in-game.
<br>Use `/function healthbar:settings/install` to install it and give all mobs their health bar.
<br>Use `/function healthbar:settings/uninstall` to uninstall it before removing it from your world.

## Custimization
You can set the colors of every part of the health bar by changing the settings with<br>
```
/data modify storage healthbar colorcode.not_hostile set value {
    name:"dark_green",
    health:"green",
    seperator:"dark_gray",
    maxHealth:"green",
    heart:"red"
}
```
This is for mobs that are **not** hostile. (cows, pigs, chickens, etc)


```
/data modify storage healthbar colorcode.hostile set value {
    name:"red",
    health:"green",
    seperator:"dark_gray",
    maxHealth:"green",
    heart:"red"
}
```
This is for mobs that are **not** hostile. (zombies, husks, wither skeletons, etc)

<br>To disable the health bars use `/data remove storage healthbar enabled`
<br>To disable the damage displays use `/data remove storage healthbar damageDisplay`

<br>To re-enable the health bars use `/data modify storage healthbar enabled set value 1b`
<br>To re-enable the damage displays use `/data modify storage healthbar damageDisplay set value 1b`

<br>

To change the damage display color use
```
/data modify storage healthbar colorcode.damageDisplay set value {color:"dark_red"}
```
