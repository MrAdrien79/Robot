# Reset
scoreboard players set @s block_down 1000
scoreboard players set @s block_downfront 1000
scoreboard players set @s block_front 1000
scoreboard players set @s block_frontfront 1000
scoreboard players set @s on_ground 0

# Detection
execute if block ~ ~-1 ~ minecraft:air run scoreboard players set @s block_down 0
execute if block ~ ~-1 ~ minecraft:gold_block run scoreboard players set @s block_down 5
execute if block ~ ~-1 ~ minecraft:iron_block run scoreboard players set @s block_down 6
execute if block ~ ~-1 ~ minecraft:emerald_block run scoreboard players set @s block_down 7
execute if block ~ ~-1 ~ minecraft:gold_ore run scoreboard players set @s block_down 10
execute if block ~ ~-1 ~ minecraft:iron_ore run scoreboard players set @s block_down 11
execute if block ~ ~-1 ~ minecraft:emerald_ore run scoreboard players set @s block_down 12
execute if block ~ ~-1 ~ minecraft:diamond_ore run scoreboard players set @s block_down 13

execute store result score @s rotation run data get entity @s Rotation[0] 1
execute store result score @s on_ground run data get entity @s OnGround 1

execute as @s[scores={rotation=-190..-170}] at @s run function robots:movements/ai_north
execute as @s[scores={rotation=-100..-80}] at @s run function robots:movements/ai_east
execute as @s[scores={rotation=-10..10}] at @s run function robots:movements/ai_south
execute as @s[scores={rotation=80..100}] at @s run function robots:movements/ai_weast

# Actions "situational"
scoreboard players operation @s last_action = @s action 
scoreboard players set @s action 0

execute unless score @s last_action matches 2 run scoreboard players set @s[scores={block_down=5}] action 2
execute unless score @s last_action matches 3 run scoreboard players set @s[scores={block_down=6}] action 3
execute unless score @s last_action matches 4 run scoreboard players set @s[scores={block_down=7}] action 4
	# Tapis roulants
execute if block ~ ~ ~-1 minecraft:air run scoreboard players set @s[scores={block_down=10}] action 5
execute if block ~ ~ ~1 minecraft:air run scoreboard players set @s[scores={block_down=11}] action 6
execute if block ~1 ~ ~ minecraft:air run scoreboard players set @s[scores={block_down=12}] action 7
execute if block ~-1 ~ ~ minecraft:air run scoreboard players set @s[scores={block_down=13}] action 8


# Actions par "defaut"
execute as @e[scores={on_ground=1}] at @s run data merge entity @s {NoGravity:1b} 
scoreboard players set @s[scores={block_down=0}] action -1
scoreboard players set @s[scores={on_ground=0}] action -1
scoreboard players set @s[scores={block_downfront=1..,block_front=0,action=0}] action 1
scoreboard players set @s[scores={block_down=5,action=0}] action 2
scoreboard players set @s[scores={block_down=6,action=0}] action 3
scoreboard players set @s[scores={block_down=7,action=0}] action 4
