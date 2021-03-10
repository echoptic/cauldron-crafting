#==================NOTE====================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------SETTINGS------------------#
execute if score @s ItemCount <= @e[distance=0,limit=1] ItemCount run scoreboard players operation @s ItemCountTransf = @s ItemCount
execute if score @s ItemCount > @e[distance=0,limit=1] ItemCount run scoreboard players operation @e[distance=0,limit=1] ItemCountTransf = @e[distance=0,limit=1] ItemCount
execute store result entity @e[type=item,tag=AdCraft,limit=1,distance=..1,sort=nearest] Item.Count int 1 run scoreboard players get @e[distance=..1,scores={ItemCountTransf=1..},limit=1] ItemCountTransf
tag @e[type=item,tag=AdCraft,limit=1,distance=..1,sort=nearest] remove AdCraft
execute if entity @e[distance=0,limit=1,scores={ItemCountTransf=1..}] store result entity @s Item.Count int 1 run scoreboard players operation @s ItemCount -= @e[distance=..1,scores={ItemCountTransf=1..}] ItemCountTransf
execute if entity @s[scores={ItemCountTransf=1..}] store result entity @e[distance=0,limit=1] Item.Count int 1 run scoreboard players operation @e[distance=0,limit=1] ItemCount -= @e[distance=..1,scores={ItemCountTransf=1..}] ItemCountTransf
kill @e[distance=..1,scores={ItemCountTransf=1..}]
execute as @a[distance=..5] at @s run playsound item.bucket.fill master @s ~ ~ ~ 1 0 1
#------------------------------------------#