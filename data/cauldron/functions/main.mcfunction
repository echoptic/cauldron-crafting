#nugget throw check
execute at @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",Count:1b}}] if block ~ ~ ~ minecraft:water_cauldron if block ~ ~-1 ~ lava run function cauldron:armor_stand/summon_stand

#water boil
#goes to craft
execute as @e[type=armor_stand,tag=cauldron, scores={age=70}] at @s run function cauldron:armor_stand/boil

#modify age
execute as @e[type=armor_stand,tag=cauldron] at @s unless block ~ ~ ~ water_cauldron run scoreboard players set @s age 0
execute as @e[type=armor_stand,tag=cauldron] at @s if block ~ ~ ~ water_cauldron if block ~ ~-1 ~ lava run function cauldron:armor_stand/age

#remove armor stand
function cauldron:armor_stand/remove

#texture
execute as @e[type=armor_stand,tag=cauldron, scores={age=11}] run function cauldron:armor_stand/add_texture
# execute at @s align xz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Small:1b,ArmorItems:[{},{},{},{id:"minecraft:chicken_spawn_egg",Count:1b,tag:{CustomModelData:4000}}]}

# data modify entity @e[type=minecraft:armor_stand, sort=nearest,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:chicken_spawn_egg",Count:1b,tag:{CustomModelData:4000}}]