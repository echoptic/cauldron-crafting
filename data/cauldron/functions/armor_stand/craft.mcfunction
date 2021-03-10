execute if block ~ ~ ~ water_cauldron if block ~ ~-1 ~ lava if entity @e[type=item,nbt={Item:{id:"minecraft:redstone"}},distance=..0.5] if entity @e[type=item,nbt={Item:{id:"minecraft:glowstone"}},distance=..0.5] run function cauldron:recipes/recipe1

execute if block ~ ~ ~ water_cauldron if block ~ ~-1 ~ lava run function cauldron:armor_stand/bubbles