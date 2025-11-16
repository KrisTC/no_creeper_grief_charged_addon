# Charged Creeper Anti-Grief Add-On

This datapack is an add-on for the Vanilla Tweaks **Anti Creeper Grief** pack.  
Vanilla Tweaks prevents all creepers from destroying blocks by setting their `ExplosionRadius` to `0`.  
This add-on restores normal block damage **only for charged creepers**, while leaving regular creepers harmless.

Features include:

- Restores `ExplosionRadius` to **3** for charged creepers  
- Announces newly charged creepers to nearby players  
- Announcement colour indicates distance  
  - Red: very close  
  - Gold: nearby  
  - Green: distant  
- Runs on a lightweight `schedule` loop  
- Zero tag conflicts (uses `cc_addon_…` namespace)  
- Fully compatible with Vanilla Tweaks 1.21.x datapack format

## Compatibility

- Minecraft Java 1.21.x  
- Works alongside Vanilla Tweaks datapacks https://vanillatweaks.net/picker/datapacks/
- No client mods required  
- SMP-safe
