data merge entity @s[tag=rleg] {Pose:{LeftArm:[-20f,2f,0f],RightArm:[20f,-4f,0f],LeftLeg:[20f,4f,0f],RightLeg:[-20f,2f,0f]}}
data merge entity @s[tag=lleg] {Pose:{LeftArm:[20f,-2f,0f],RightArm:[-20f,4f,0f],LeftLeg:[-20f,-4f,0f],RightLeg:[20f,-2f,0f]}}

tp @s[y_rotation=-90] ~0.125 ~ ~
tp @s[y_rotation=0] ~ ~ ~0.125
tp @s[y_rotation=180] ~ ~ ~-0.125
tp @s[y_rotation=90] ~-0.125 ~ ~