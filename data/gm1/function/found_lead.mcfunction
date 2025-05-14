#$execute as @a[nbt={Inventory:[{id:"minecraft:lead"}]},tag=!has_lead] run give @s compass[lodestone_tracker={target:{dimension:"minecraft:overworld",pos:[I;$(x),$(y),$(z)]},tracked:false},custom_name='["",{"text":"Allay Compass","italic":false,"color":"aqua"}]'] 1

#execute if entity @a[nbt={Inventory:[{id:"minecraft:lead"}]},tag=!has_lead] run tag @s add has_lead

execute as @a[nbt={Inventory:[{id:"minecraft:lead"}]},tag=!has_lead] run give @s compass[lodestone_tracker={target:{dimension:"minecraft:overworld",pos:[I;203,122,2062]},tracked:false},custom_name='["",{"text":"Allay Compass","italic":false,"color":"aqua"}]'] 1
execute if entity @a[nbt={Inventory:[{id:"minecraft:lead"}]},tag=!has_lead] run tag @s add has_lead