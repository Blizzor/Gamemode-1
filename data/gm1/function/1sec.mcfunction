schedule function gm1:1sec 1s

execute as @a[scores={heat=-200..0}] at @s if predicate gm1:below_64 run scoreboard players remove @s heat 2
execute as @a[scores={heat=-600..0}] at @s if predicate gm1:below_32 run scoreboard players remove @s heat 4
execute as @a[scores={heat=-1200..0}] at @s if predicate gm1:below_minus_32 run scoreboard players remove @s heat 8

execute as @a[scores={heat=-1200..-16}] at @s if predicate gm1:is_warm run scoreboard players add @s heat 16

execute as @a[tag=is_not_save] at @s unless predicate gm1:hot_surrounding run tag @s remove is_not_save
execute as @a[scores={heat=1000..1200}] at @s if predicate gm1:hot_surrounding run tag @s add is_not_save

execute as @a[tag=!has_score, gamemode=survival] run function gm1:new_player

#execute as @a if entity @a[nbt={Inventory:[{id:"minecraft:lead"}]},tag=!has_lead, gamemode=survival] run function gm1:get_location with storage gm1:data location
#execute as @a[nbt={Inventory:[{id:"minecraft:lead"}]}, tag=!has_lead, gamemode=survival] run function gm1:found_lead with storage gm1:data location

execute as @a[nbt={Inventory:[{id:"minecraft:lead"}]}, tag=!has_lead, gamemode=survival] run function gm1:found_lead


execute as @a[gamemode=!survival] run function gm1:spectator
execute as @a[scores={heat=200..999}] run function gm1:player_starts_burning
execute as @a[tag=!is_not_save] run function gm1:player_burns


execute as @a[scores={heat=-1250..-499}] run function gm1:player_is_freezing

execute if predicate gm1:rain run weather clear 1d

execute as @e[tag=!has_won, type=minecraft:allay] on leasher run function gm1:challenge_done