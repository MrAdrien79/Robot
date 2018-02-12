execute if score main clock_timer matches 8..8 run scoreboard players set main clock_timer 0 
scoreboard players add main clock_timer 1

execute if score main clock_timer matches 1..1 as @e[type=armor_stand,tag=movable] at @s run function robots:movements/init_ai
execute if score main clock_timer matches 1..1 as @e[type=armor_stand,tag=movable] at @s run function robots:movements/ai
execute if score main clock_timer matches 1..1 as @e[type=armor_stand,tag=movable] at @s run function robots:movements/defaut_ai
execute if score main clock_timer matches 1..1 as @e[tag=pushable_block] at @s unless score @s action matches 0..0 run setblock ~ ~ ~ minecraft:air
execute if score main clock_timer matches 1..1 as @e[scores={action=-1}] at @s run data merge entity @s {NoGravity:0b} 
execute if score main clock_timer matches 1..1 as @e[scores={action=1}] at @s run function robots:movements/walk/walk1
execute if score main clock_timer matches 1..1 as @e[scores={action=10}] at @s run function robots:movements/long_jump/l_j1
execute if score main clock_timer matches 1..1 as @e[scores={action=11}] at @s run function robots:movements/high_jump/h_j1
execute if score main clock_timer matches 1..1 as @e[scores={action=20}] at @s run function robots:movements/push/push1

execute if score main clock_timer matches 2..2 as @e[scores={action=1}] at @s run function robots:movements/walk/walk2
execute if score main clock_timer matches 2..2 as @e[scores={action=10}] at @s run function robots:movements/long_jump/l_j2
execute if score main clock_timer matches 2..2 as @e[scores={action=11}] at @s run function robots:movements/high_jump/h_j2
execute if score main clock_timer matches 2..2 as @e[scores={action=20}] at @s run function robots:movements/push/push2

execute if score main clock_timer matches 3..3 as @e[scores={action=1}] at @s run function robots:movements/walk/walk3
execute if score main clock_timer matches 3..3 as @e[scores={action=10}] at @s run function robots:movements/long_jump/l_j3
execute if score main clock_timer matches 3..3 as @e[scores={action=11}] at @s run function robots:movements/high_jump/h_j3
execute if score main clock_timer matches 3..3 as @e[scores={action=20}] at @s run function robots:movements/push/push3

execute if score main clock_timer matches 4..4 as @e[scores={action=1}] at @s run function robots:movements/walk/walk4
execute if score main clock_timer matches 4..4 as @e[scores={action=2}] at @s run function robots:movements/turn_right/t_r4
execute if score main clock_timer matches 4..4 as @e[scores={action=3}] at @s run function robots:movements/turn_left/t_l4
execute if score main clock_timer matches 4..4 as @e[scores={action=4}] at @s run function robots:movements/half_turn/h_t4 
execute if score main clock_timer matches 4..4 as @e[scores={action=10}] at @s run function robots:movements/long_jump/l_j4
execute if score main clock_timer matches 4..4 as @e[scores={action=11}] at @s run function robots:movements/high_jump/h_j4
execute if score main clock_timer matches 4..4 as @e[scores={action=20}] at @s run function robots:movements/push/push4

execute if score main clock_timer matches 5..5 as @e[scores={action=1}] at @s run function robots:movements/walk/walk5
execute if score main clock_timer matches 5..5 as @e[scores={action=10}] at @s run function robots:movements/long_jump/l_j5
execute if score main clock_timer matches 5..5 as @e[scores={action=11}] at @s run function robots:movements/high_jump/h_j5
execute if score main clock_timer matches 5..5 as @e[scores={action=20}] at @s run function robots:movements/push/push5

execute if score main clock_timer matches 6..6 as @e[scores={action=1}] at @s run function robots:movements/walk/walk6
execute if score main clock_timer matches 6..6 as @e[scores={action=10}] at @s run function robots:movements/long_jump/l_j6
execute if score main clock_timer matches 6..6 as @e[scores={action=11}] at @s run function robots:movements/high_jump/h_j6
execute if score main clock_timer matches 6..6 as @e[scores={action=20}] at @s run function robots:movements/push/push6

execute if score main clock_timer matches 7..7 as @e[scores={action=1}] at @s run function robots:movements/walk/walk7
execute if score main clock_timer matches 7..7 as @e[scores={action=10}] at @s run function robots:movements/long_jump/l_j7
execute if score main clock_timer matches 7..7 as @e[scores={action=11}] at @s run function robots:movements/high_jump/h_j7
execute if score main clock_timer matches 7..7 as @e[scores={action=20}] at @s run function robots:movements/push/push7

execute if score main clock_timer matches 8..8 as @e[scores={action=1}] at @s run function robots:movements/walk/walk8
execute if score main clock_timer matches 8..8 as @e[scores={action=10}] at @s run function robots:movements/long_jump/l_j8
execute if score main clock_timer matches 8..8 as @e[scores={action=11}] at @s run function robots:movements/high_jump/h_j8
execute if score main clock_timer matches 8..8 as @e[scores={action=20}] at @s run function robots:movements/push/push8
execute if score main clock_timer matches 8..8 as @e[tag=movable] at @s positioned ~-1 ~ ~-1 run kill @e[y=-70,dy=20,dx=2,dz=2]

execute if score main clock_timer matches 1..8 as @e[type=armor_stand,tag=movable,scores={action=5}] at @s run tp @s ~ ~ ~-0.125
execute if score main clock_timer matches 1..8 as @e[type=armor_stand,tag=movable,scores={action=6}] at @s run tp @s ~ ~ ~0.125
execute if score main clock_timer matches 1..8 as @e[type=armor_stand,tag=movable,scores={action=7}] at @s run tp @s ~0.125 ~ ~
execute if score main clock_timer matches 1..8 as @e[type=armor_stand,tag=movable,scores={action=8}] at @s run tp @s ~-0.125 ~ ~