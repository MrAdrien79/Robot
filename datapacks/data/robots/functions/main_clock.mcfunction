execute if score main clock_timer matches 8 run scoreboard players set main clock_timer 0
scoreboard players add main clock_timer 1


execute if score main clock_timer matches 1 run execute as @e[type=armor_stand,tag=robot] at @s run function robots:movements/ai
execute if score main clock_timer matches 1 run execute as @e[scores={action=1}] at @s run function robots:movements/walk/walk1
execute if score main clock_timer matches 1 run execute as @e[scores={action=-1}] at @s run data merge entity @s {NoGravity:0b} 

execute if score main clock_timer matches 2 run execute as @e[scores={action=1}] at @s run function robots:movements/walk/walk2

execute if score main clock_timer matches 3 run execute as @e[scores={action=1}] at @s run function robots:movements/walk/walk3

execute if score main clock_timer matches 4 run execute as @e[scores={action=1}] at @s run function robots:movements/walk/walk4
execute if score main clock_timer matches 4 run execute as @e[scores={action=2}] at @s run function robots:movements/turn_right/t_r4
execute if score main clock_timer matches 4 run execute as @e[scores={action=3}] at @s run function robots:movements/turn_left/t_l4
execute if score main clock_timer matches 4 run execute as @e[scores={action=4}] at @s run function robots:movements/half_turn/h_t4 

execute if score main clock_timer matches 5 run execute as @e[scores={action=1}] at @s run function robots:movements/walk/walk5

execute if score main clock_timer matches 6 run execute as @e[scores={action=1}] at @s run function robots:movements/walk/walk6

execute if score main clock_timer matches 7 run execute as @e[scores={action=1}] at @s run function robots:movements/walk/walk7

execute if score main clock_timer matches 8 run execute as @e[scores={action=1}] at @s run function robots:movements/walk/walk8

execute if score main clock_timer matches 1..8 run execute as @e[type=armor_stand,tag=robot,scores={action=5}] at @s run tp @s ~ ~ ~-0.125
execute if score main clock_timer matches 1..8 run execute as @e[type=armor_stand,tag=robot,scores={action=6}] at @s run tp @s ~ ~ ~0.125
execute if score main clock_timer matches 1..8 run execute as @e[type=armor_stand,tag=robot,scores={action=7}] at @s run tp @s ~0.125 ~ ~
execute if score main clock_timer matches 1..8 run execute as @e[type=armor_stand,tag=robot,scores={action=8}] at @s run tp @s ~-0.125 ~ ~

