data merge entity @s {Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]}}
tp @s[y_rotation=-90] ~0.125 ~ ~
tp @s[y_rotation=0] ~ ~ ~0.125
tp @s[y_rotation=180] ~ ~ ~-0.125
tp @s[y_rotation=90] ~-0.125 ~ ~
tag @s[tag=lleg] remove lleg
tag @s[tag=rleg] add lleg