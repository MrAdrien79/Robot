	# "Pousser"
execute as @s at @s positioned ^ ^ ^1 if entity @e[tag=pushable_block,sort=nearest,limit=1,distance=0..0.5,scores={action=0}] run scoreboard players set @s[tag=robot,scores={block_front=20,block_downfront=1..,block_frontfront=0,action=0}] action 20

execute as @s[scores={action=20,rotation=-190..-170}] positioned ^ ^ ^1 run scoreboard players set @e[tag=pushable_block,sort=nearest,limit=1,scores={action=0}] action 5
execute as @s[scores={action=20,rotation=-10..10}] positioned ^ ^ ^1 run scoreboard players set @e[tag=pushable_block,sort=nearest,limit=1,scores={action=0}] action 6
execute as @s[scores={action=20,rotation=80..100}] positioned ^ ^ ^1 run scoreboard players set @e[tag=pushable_block,sort=nearest,limit=1,scores={action=0}] action 8
execute as @s[scores={action=20,rotation=-100..-80}] positioned ^ ^ ^1 run scoreboard players set @e[tag=pushable_block,sort=nearest,limit=1,scores={action=0}] action 7


# "Actions par defaut"
execute as @e[scores={on_ground=1}] at @s run data merge entity @s {NoGravity:1b} 
scoreboard players set @s[scores={block_down=0}] action -1
scoreboard players set @s[scores={on_ground=0}] action -1
scoreboard players set @s[tag=robot,scores={block_downfront=1..,block_front=0,action=0}] action 1
scoreboard players set @s[tag=robot,scores={block_down=5,action=0}] action 2
scoreboard players set @s[tag=robot,scores={block_down=6,action=0}] action 3
scoreboard players set @s[tag=robot,scores={block_down=7,action=0}] action 4

execute if score @s last_action matches 20..20 unless score @s action = @s last_action run data merge entity @s {Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]}}
