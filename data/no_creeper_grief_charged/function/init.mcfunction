# no_creeper_grief_charged:init
# Initialization for the charged creeper add-on.
# We start a scheduled loop that runs every 10 game ticks.
# This avoids using the global minecraft:tick tag and keeps the logic lightweight.

schedule function no_creeper_grief_charged:tick 10t replace