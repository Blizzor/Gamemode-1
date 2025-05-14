execute as @a[scores={heat=200..399}] if predicate gm1:random_10 at @s run playsound minecraft:block.fire.ambient player @s ~ ~ ~ 1
execute as @a[scores={heat=400..599}] if predicate gm1:random_10 at @s run playsound minecraft:block.fire.ambient player @s ~ ~ ~ 2
execute as @a[scores={heat=600..799}] if predicate gm1:random_10 at @s run playsound minecraft:block.fire.ambient player @s ~ ~ ~ 3
execute as @a[scores={heat=800..999}] if predicate gm1:random_10 at @s run playsound minecraft:block.fire.ambient player @s ~ ~ ~ 4

execute as @a[scores={heat=200..999}] if predicate gm1:random_10 at @s run playsound minecraft:ambient.soul_sand_valley.additions player @s ~ ~ ~ 4