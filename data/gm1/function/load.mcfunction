execute run say Willkommen bei Gamemode!
scoreboard objectives add heat dummy
scoreboard players set @s heat 0

tag @a remove has_score

gamerule playersSleepingPercentage 25
gamerule doTraderSpawning false

scoreboard objectives add death_tracker deathCount


function gm1:10tick
function gm1:1sec