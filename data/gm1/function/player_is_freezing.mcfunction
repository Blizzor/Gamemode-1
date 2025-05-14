execute as @a[scores={heat=-749..-500}] at @s run effect give @s minecraft:slowness 1 0 true
execute as @a[scores={heat=-999..-750}] at @s run effect give @s minecraft:slowness 1 1 true
execute as @a[scores={heat=-1250..-100}] at @s run effect give @s minecraft:slowness 1 2 true
execute as @a[scores={heat=-1250..-1000}] at @s if predicate gm1:random_10 run damage @s 1 minecraft:freeze

execute as @a[scores={heat=-1250..-50}] if predicate gm1:random_10 if predicate gm1:random_10 at @s run playsound minecraft:block.amethyst_block.chime player @s ~ ~ ~ 1 1.2