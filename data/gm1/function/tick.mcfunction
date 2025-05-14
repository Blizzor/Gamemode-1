execute as @a[scores={heat=-100..1190}] at @s if predicate gm1:hot_surrounding if predicate gm1:cold_biome run scoreboard players add @s heat 2
execute as @a[scores={heat=0..1200}] at @s unless predicate gm1:hot_surrounding if predicate gm1:cold_biome run scoreboard players remove @s heat 8

execute as @a[scores={heat=-100..1190}] at @s if predicate gm1:hot_surrounding if predicate gm1:hot_biome run scoreboard players add @s heat 8
execute as @a[scores={heat=0..1200}] at @s unless predicate gm1:hot_surrounding if predicate gm1:hot_biome run scoreboard players remove @s heat 2

execute as @a[scores={heat=-100..1190}] at @s if predicate gm1:hot_surrounding unless predicate gm1:cold_biome unless predicate gm1:hot_biome run scoreboard players add @s heat 4
execute as @a[scores={heat=0..1200}] at @s unless predicate gm1:hot_surrounding unless predicate gm1:cold_biome unless predicate gm1:hot_biome run scoreboard players remove @s heat 4

execute as @a[scores={heat=-100..99}] run title @s actionbar {"extra":[{"text":"▌▌▌▌▌▌▌▌▌▌","color":"gray"}],"text":""}
execute as @a[scores={heat=100..199}] run title @s actionbar {"extra":[{"text":"▌","color":"#fff7b3"},{"text":"▌▌▌▌▌▌▌▌▌","color":"gray"}],"text":""}
execute as @a[scores={heat=200..299}] run title @s actionbar {"extra":[{"text":"▌▌","color":"#ffef5c"},{"text":"▌▌▌▌▌▌▌▌","color":"gray"}],"text":""}
execute as @a[scores={heat=300..399}] run title @s actionbar {"extra":[{"text":"▌▌▌","color":"#ffe600"},{"text":"▌▌▌▌▌▌▌","color":"gray"}],"text":""}
execute as @a[scores={heat=400..499}] run title @s actionbar {"extra":[{"text":"▌▌▌▌","color":"#ffcc00"},{"text":"▌▌▌▌▌▌","color":"gray"}],"text":""}
execute as @a[scores={heat=500..599}] run title @s actionbar {"extra":[{"text":"▌▌▌▌▌","color":"#ffb300"},{"text":"▌▌▌▌▌","color":"gray"}],"text":""}
execute as @a[scores={heat=600..699}] run title @s actionbar {"extra":[{"text":"▌▌▌▌▌▌","color":"#ff9100"},{"text":"▌▌▌▌","color":"gray"}],"text":""}
execute as @a[scores={heat=700..799}] run title @s actionbar {"extra":[{"text":"▌▌▌▌▌▌▌","color":"#ff6200"},{"text":"▌▌▌","color":"gray"}],"text":""}
execute as @a[scores={heat=800..899}] run title @s actionbar {"extra":[{"text":"▌▌▌▌▌▌▌▌","color":"#ff4000"},{"text":"▌▌","color":"gray"}],"text":""}
execute as @a[scores={heat=900..999}] run title @s actionbar {"extra":[{"text":"▌▌▌▌▌▌▌▌▌","color":"#ff2200"},{"text":"▌","color":"gray"}],"text":""}
execute as @a[scores={heat=1000..1300}] run title @s actionbar {"extra":[{"text":"▌▌▌▌▌▌▌▌▌▌","color":"#ff0000"}],"text":""}

execute as @a[scores={heat=-200..-101}] run title @s actionbar {"extra":[{"text":"▌","color":"#b3ebff"},{"text":"▌▌▌▌▌▌▌▌▌","color":"gray"}],"text":""}
execute as @a[scores={heat=-300..-201}] run title @s actionbar {"extra":[{"text":"▌▌","color":"#5cfcff"},{"text":"▌▌▌▌▌▌▌▌","color":"gray"}],"text":""}
execute as @a[scores={heat=-400..-301}] run title @s actionbar {"extra":[{"text":"▌▌▌","color":"#00ffe5"},{"text":"▌▌▌▌▌▌▌","color":"gray"}],"text":""}
execute as @a[scores={heat=-500..-401}] run title @s actionbar {"extra":[{"text":"▌▌▌▌","color":"#00ffff"},{"text":"▌▌▌▌▌▌","color":"gray"}],"text":""}
execute as @a[scores={heat=-600..-501}] run title @s actionbar {"extra":[{"text":"▌▌▌▌▌","color":"#00f2ff"},{"text":"▌▌▌▌▌","color":"gray"}],"text":""}
execute as @a[scores={heat=-700..-601}] run title @s actionbar {"extra":[{"text":"▌▌▌▌▌▌","color":"#00eeff"},{"text":"▌▌▌▌","color":"gray"}],"text":""}
execute as @a[scores={heat=-800..-701}] run title @s actionbar {"extra":[{"text":"▌▌▌▌▌▌▌","color":"#00ffee"},{"text":"▌▌▌","color":"gray"}],"text":""}
execute as @a[scores={heat=-900..-801}] run title @s actionbar {"extra":[{"text":"▌▌▌▌▌▌▌▌","color":"#00f2ff"},{"text":"▌▌","color":"gray"}],"text":""}
execute as @a[scores={heat=-1000..-901}] run title @s actionbar {"extra":[{"text":"▌▌▌▌▌▌▌▌▌","color":"#00fbff"},{"text":"▌","color":"gray"}],"text":""}
execute as @a[scores={heat=-1300..-1001}] run title @s actionbar {"extra":[{"text":"▌▌▌▌▌▌▌▌▌▌","color":"#00ddff"}],"text":""}


execute as @a[scores={death_tracker=1..}] run scoreboard players set @s heat 0
scoreboard players set @a[scores={death_tracker=1..}] death_tracker 0

execute as @a[nbt={DeathTime:1s}] run tag @s add is_dead
execute as @a[tag=is_dead] run function gm1:get_death_location with storage gm1:data death_location
execute as @a[tag=is_dead] run function gm1:death_coordinates with storage gm1:data death_location