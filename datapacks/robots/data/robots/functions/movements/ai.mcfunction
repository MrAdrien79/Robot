# Detection
execute if block ~ ~-1 ~ minecraft:air run scoreboard players set @s block_down 0
execute if block ~ ~-1 ~ minecraft:gold_block run scoreboard players set @s block_down 5
execute if block ~ ~-1 ~ minecraft:iron_block run scoreboard players set @s block_down 6
execute if block ~ ~-1 ~ minecraft:emerald_block run scoreboard players set @s block_down 7
execute if block ~ ~-1 ~ minecraft:gold_ore run scoreboard players set @s block_down 10
execute if block ~ ~-1 ~ minecraft:iron_ore run scoreboard players set @s block_down 11
execute if block ~ ~-1 ~ minecraft:emerald_ore run scoreboard players set @s block_down 12
execute if block ~ ~-1 ~ minecraft:diamond_ore run scoreboard players set @s block_down 13
execute if block ~ ~-1 ~ minecraft:lime_stained_glass run scoreboard players set @s block_down 15

execute if block ^ ^-1 ^1 minecraft:air run scoreboard players set @s block_downfront 0

execute if block ^ ^ ^2 minecraft:air run scoreboard players set @s block_frontfront 0

execute if block ^ ^ ^1 minecraft:air run scoreboard players set @s block_front 0
execute if block ^ ^ ^1 minecraft:structure_void run scoreboard players set @s block_front 20

# "Actions"
	# "Tourner et demi tour"
execute unless score @s last_action matches 2..2 run scoreboard players set @s[scores={block_down=5},tag=robot] action 2
execute unless score @s last_action matches 3..3 run scoreboard players set @s[scores={block_down=6},tag=robot] action 3
execute unless score @s last_action matches 4..4 run scoreboard players set @s[scores={block_down=7},tag=robot] action 4
	# "Tapis roulants"
execute if block ~ ~ ~-1 minecraft:air run scoreboard players set @s[scores={block_down=10}] action 5
execute if block ~ ~ ~1 minecraft:air run scoreboard players set @s[scores={block_down=11}] action 6
execute if block ~1 ~ ~ minecraft:air run scoreboard players set @s[scores={block_down=12}] action 7
execute if block ~-1 ~ ~ minecraft:air run scoreboard players set @s[scores={block_down=13}] action 8
	# "Sauter"
execute at @s if block ^ ^1 ^ minecraft:air if block ^ ^1 ^1 minecraft:air if block ^ ^ ^1 minecraft:air if block ^ ^ ^2 minecraft:air run scoreboard players set @s[scores={block_down=15},tag=robot] action 10
execute at @s unless score @s block_front matches 0..0 if block ^ ^1 ^ minecraft:air if block ^ ^1 ^1 minecraft:air run scoreboard players set @s[scores={block_down=15},tag=robot] action 11
