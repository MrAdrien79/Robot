# Reset
scoreboard players set @s block_down 1000
scoreboard players set @s block_downfront 1000
scoreboard players set @s block_front 1000
scoreboard players set @s block_frontfront 1000
scoreboard players set @s on_ground 0

scoreboard players operation @s last_action = @s action 
scoreboard players set @s action 0

execute store result score @s rotation run data get entity @s Rotation[0] 1
execute store result score @s on_ground run data get entity @s OnGround 1

execute as @s[tag=pushable_block] at @s run setblock ~ ~ ~ minecraft:structure_void
