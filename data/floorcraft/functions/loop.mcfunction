#==================NOTE====================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------RECIPES-------------------#
scoreboard objectives add ItemCount dummy
scoreboard objectives add ItemCountTransf dummy
execute as @e[type=item,nbt={OnGround:1b}] store result score @s ItemCount run data get entity @s Item.Count
#------------------------------------------#