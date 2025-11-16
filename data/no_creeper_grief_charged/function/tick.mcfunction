# no_creeper_grief_charged:tick
# Runs every 10 ticks.
# 1) Announce newly charged creepers with distance-based colour.
# 2) Restore explosion radius for charged creepers whose radius was set to 0.
# 3) Reschedule itself.

# RED: extremely close (0–16 blocks)
execute as @e[type=minecraft:creeper,nbt={powered:1b},tag=!cc_addon_announced] at @s run tellraw @a[distance=..16] {"text":"[Charged Creeper] VERY close!","color":"red"}

# GOLD: moderately close (16–32 blocks)
execute as @e[type=minecraft:creeper,nbt={powered:1b},tag=!cc_addon_announced] at @s run tellraw @a[distance=16..32] {"text":"[Charged Creeper] Nearby...","color":"gold"}

# GREEN: further away (32–64 blocks)
execute as @e[type=minecraft:creeper,nbt={powered:1b},tag=!cc_addon_announced] at @s run tellraw @a[distance=32..64] {"text":"[Charged Creeper] In the distance...","color":"green"}

# Mark these creepers as already announced so we don't spam
execute as @e[type=minecraft:creeper,nbt={powered:1b},tag=!cc_addon_announced] run tag @s add cc_addon_announced

# Restore explosion radius for charged creepers neutered by Anti Creeper Grief
execute as @e[type=minecraft:creeper,nbt={powered:1b,ExplosionRadius:0b}] run data modify entity @s ExplosionRadius set value 3

# Reschedule this function to run again in 10 ticks
schedule function no_creeper_grief_charged:tick 10t replace