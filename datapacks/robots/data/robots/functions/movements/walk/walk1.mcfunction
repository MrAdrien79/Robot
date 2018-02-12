tag @s add rleg
tag @s[tag=lleg] remove rleg
data merge entity @s[tag=rleg] {Pose:{LeftArm:[-10f,1f,0f],RightArm:[10f,-2f,0f],LeftLeg:[10f,2f,0f],RightLeg:[-10f,1f,0f],Head:[0.0f,0.0f,0.0f]}}
data merge entity @s[tag=lleg] {Pose:{LeftArm:[10f,-1f,0f],RightArm:[-10f,2f,0f],LeftLeg:[-10f,-2f,0f],RightLeg:[10f,-1f,0f]}}
tp @s[y_rotation=-90] ~0.125 ~ ~
tp @s[y_rotation=0] ~ ~ ~0.125
tp @s[y_rotation=180] ~ ~ ~-0.125
tp @s[y_rotation=90] ~-0.125 ~ ~

