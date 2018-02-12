tag @s add rleg
tag @s[tag=lleg] remove rleg
teleport @s ^ ^ ^0.125
data merge entity @s[tag=rleg] {Pose:{LeftLeg:[10f,2f,0f],RightLeg:[-10f,1f,0f],LeftArm:[-87.0f,0.0f,0.0f],RightArm:[-87.0f,0.0f,0.0f],Head:[30.0f,0.0f,0.0f]}}
data merge entity @s[tag=lleg] {Pose:{LeftLeg:[-10f,2f,0f],RightLeg:[10f,1f,0f],LeftArm:[-87.0f,0.0f,0.0f],RightArm:[-87.0f,0.0f,0.0f],Head:[30.0f,0.0f,0.0f]}}