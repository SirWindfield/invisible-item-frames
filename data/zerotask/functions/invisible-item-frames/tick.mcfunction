#######################################################################
# Author:  SirWindfield (https://github.com/SirWindfield)             #
# License: GNU GPLv3                                                  #
#                                                                     #
# If applicable, credit to other people's work is given in the readme #
#######################################################################

# Looks for applicable item frames and make them invisible.
execute as @e[type=minecraft:item_frame,nbt={Item: {id: "minecraft:potion", tag: {display: {Name: '{"text":"_"}'}, Potion: "minecraft:long_invisibility"}}}] run data modify entity @s Invisible set value 1b

# Remove the potion inside of item frames that have been made invisible.
execute as @e[type=minecraft:item_frame,nbt={Item: {id: "minecraft:potion", tag: {display: {Name: '{"text":"_"}'}, Potion: "minecraft:long_invisibility"}}}] run data merge entity @e[type=minecraft:item_frame,limit=1] {Item: {id: ""}}
