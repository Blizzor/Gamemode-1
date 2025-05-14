execute as @e[tag=!has_won, type=minecraft:allay] on leasher run tag @s add has_won
execute as @e[tag=!has_won, type=minecraft:allay] run tag @s add has_won
execute as @e[tag=has_won] run title @s title "Challenge Gewonnen!"
execute as @e[tag=has_won] run playsound minecraft:ui.toast.challenge_complete
execute as @e[tag=!has_won] run title @s title "Challenge Verloren!"
execute as @e[tag=!has_won] run playsound minecraft:event.mob_effect.raid_omen