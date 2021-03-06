Ares is a mod aimed expanding the tools available to Zeus so that it is possible to create more varied and compelling missions. The goal is to add simple useful functionality to Zeus without requiring extra mods running on other clients or the server.

Ares is designed to work with dedicated servers which may be running missions that allow JIP and respawn. The new functionality it is aimed at running with trusted players in a structured mission and is not recommended for general 'public server' play.

Check out the full feature list and documentation at: https://github.com/astruyk/Ares/wiki
Or check out the source code at: https://github.com/astruyk/Ares

Requirements:
As of V.1.8.0 Ares requires @CBA_A3 for some functionality. Please ensure it is running alongside @Ares if you are using Zeus. Clients that aren't running @Ares (e.g. non-zeus players) do not need to run @CBA_A3.
You can download the latest version of CBA from the developer website here: http://dev.withsix.com/projects/cca/wiki/CBA

Changelists

V.1.8.0
* Artillery - Add 'Artillery Fire Mission' module to fire artillery using map coordinates and multiple artillery pieces. (Author JonasJurczok)
* Util - Pass 'Unit under cursor' and location to 'Execute Script' modules.
* Save/Load - Remove deprecated Save/Load modules (using old non-SQF format)
* NOTE - Ares now requires CBA_A3! Make sure it's running on any machine that had Ares loaded.

V.1.7.0
* Save/Load - Add module to export current mission objects to SQF script (including AI, Groups and markers).
* Util - Add module to execute custom code on the server, locally, or on all machines.
* General - Fixed an issue where custom modules that caused an error would leave a logic object around.
* Deprecated - 'Spawn Custom Mission Objects' was removed (use custom modules instead).
* Deprecated - New SQF saving will replace existing copy-paste functionality in 1.8.0.

V.1.6.1
* Util - Fixed an issue where player groups would be lost when switching sides
* Util - Added more options to the 'switch player sides' module (allowing single player, group, or side)

V.1.6.0
* Arsenal - Added ability to put full (unfiltered) Arsenal on an object.
* Arsenal - Renamed the 'Add All...' option to 'Add Filtered...'
* Behaviours - Fixed issue where AI units that were garrisoned wouldn't turn to shoot (#179)
* Equipment - Added ability to remove optics from enemy weapons.
* General - Fixed an issue where rejoining a dedicated server would sometimes prevent proper Ares registration.
* General - Totally revamped adding custom modules. Better than ever. (See https://github.com/astruyk/Ares/wiki/Extras#defining-custom-modules for details).
* Reinforcements - Armed technicals are no longer considered as transports (#172)
* Reinforcements - Fixed 'Least Used' RP's and LZ's not working (#167, #168)
* Util - Added 'Remove All Actions' module (can be used to remove Arsenal from objects).
* Util - Added module to change player sides during missions.
* Util - Added modules to enable/disable debug logs in RPT.
* Util - Replaced 'Go Invisible'/'Become Visible' action menu items with modules in the 'Util' section

V.1.5.1
* Fix a signing issue that prevented connection to servers running some other mods (see http://feedback.arma3.com/view.php?id=22133 )

V.1.5.0
* Arsenal - Copying to clipboard (and pasting) now includes non-virtual items as well
* Arsenal - Fixes a bunch of issues where side-filtering wasn't applying to Vests, Weapons and Backpacks when using 'Add All...'
* Arsenal - Performance improvements when using 'Add All...'
* Behaviours - When choosing where to fire artillery you can now select a specific target by name
* General - Attempt to fix an issue when getting items under mouse when reconnecting to a server after running ares
* General - When in Zeus UI holding left CTRL and double-clicking on a unit will immediately take control of that unit.
* Reinforcements - When choosing LZ's and RP's you can now select specific ones by name
* Save/Load - Snap placed objects to the ground when using 'Paste Into New Location'
* Spawn - Add 'Spawn Smoke' module for spawning persistent smoke stacks. They can be attached to existing objects or placed in empty space.
* Teleport - Dropping the 'Teleporter' module on an object will now make that object a teleporter instead of creating a new one.
* Util - Added first-pass at a 'Change Weather' module.

V.1.4.0
* Added a bunch more premade base compositions from Vernei's prebuilt pastable bases ( http://www.armaholic.com/page.php?id=27531 ). Used with permission.

V.1.3.0
* Util - Added module to dump composition code to RPT file (aimed at making it easier for me to generate compositions)
* Compositions - Re-organized the Ares composition menus to be a little more clear
* Compositions - Fixed some placement issues with a few existing compositions
* Compositions - Added a bunch more compsitions. Some of which are:
  * Wall sections - to make generating corners and long areas of walls a lot faster
  * Composite Walls - Added two kinds of walls, one for urban areas with chain fences and sandbags, and one for a defensive line of bunkers.
  * Minefields - Lines of mine markers, including variants with AT, AP and Mixed composition
  * Field Repair Base - Added field repair structure w/ decomissioned hunter
  * Roadblocks - Added three more kinds of roadblocks of varying size
  * FOB Helipad - Added a helipad for improvised bases with landing lights and some sandbags

V.1.2.1
* Arsenal - Change the wording in 'All...' module to be more clear and require fewer selections for common use cases (See #155)
* Arsenal - Fix an issue where magazines weren't being added when using the 'All...' module
* Arsenal - Uniforms and helmets are now filtered based on side selection when using 'All...' modules to populate arsenal.
* General - Supress the RPT log output by default. Use 'Ares_Debug_Output_Enabled = true;' to re-enable

V.1.2.0
* General - Fix an issue with some modules running twice when dedicated server had Ares mod loaded (See #144)
* Spawn - Add ability to spawn submarine
* Spawn - Add ability to spawn trawler
* Save/Load - Include some larger options when choosing the radius for saving to clipboard (1k, 2k, 5k)
* Util - Add module to delete closest LZ, RP or Artillery Target (hack fix in case they are not editable, see #145)

V.1.1.0
* Arsenal - Added an 'Add All ...' option to Arsenal that adds all items from loaded mods automatically.
* Behaviours - Add ability for players to 'Release' surrendered units (as alternative to 'Secure'). Can also be applied by Zeus when dropping the module on a surrendered unit.
* Behaviours - Artillery targets are now named phonetically (Alpha, Bravo, Charlie, etc...)
* Behaviours - Don't allow the surrender module to affect players
* Behaviours - Fix an issue where units garrisoned on a roof would not stand back up when un-garrisoned until they completed rejoining the squad.
* Equipment - Combined Enabling & Disabling thermals into a single module. Added ability to apply to sides as well as groups (when placed in empty space).
* Equipment - Combined flashlight control modules into a single module. Added ability to apply to sides as well as groups (when placed in empty space).
* Equipment - Created combined Enable/Disable NVG module (as opposed to just the 'Disable' that was previously present). Added ability to apply to sides as well as groups (when placed in empty space).
* General - Fix an issue where the item under the mouse cursor wasn't always being detected correctly.
* General - Fixed minor UI issue where 'Cancel' text in dialogs was wrapping incorrectly.
* General - Removed defunct CFB_AG script
* Reinforcements - Added ability for missions to specify custom reinforcement pools. See the wiki for details.
* Reinforcements - Added ability to set default behaviour of troops after they unload from transport
* Reinforcements - Added example scripts in the 'extras' folder showing how to define custom reinforcement pools.
* Reinforcements - LZ's and RP's are now named phonetically (Alpha, Bravo, Charlie, etc...)
* Reinforcements - Tweak the default reinforcement pools to include fewer 'Lite' soldiers
* Teleport - Improved 'Teleport Group' and 'Teleport Single Unit' modules to not require teleporters.
* Util - Add more distance options when adding/removing objects from curator.
* Util - Made behaviour of Copy/Paste dialog (for Save/Load & Arsenal functions) consistent on dedicated servers and local servers. You MUST copy and paste by hand in all cases now.

V.1.0.2
* Fix an issue where running Ares on a dedicated server or on more than one client would cause a race-condition that would break lots of modules.

V.1.0.1 - Bugfixes
* Behaviours - Fix issue where 'Fire Artillery' module wouldn't work with units that were spawned by dedicated server
* Behaviours - Garrisoned units should turn to fire at enemy units now
* Behaviours - Possible fix for issue where sometimes patrols would set wapoints around [0,0,0] instead of around selected unit
* Behaviours - Prevent 'Patrol' module from generating waypoints for players
* Experimental (Reinforcements) - Added some CFB_Skins units to reinforcement pools. Will be tweaked going forward.
* Experimental (Reinforcements) - Added some RHS units to reinforcement pools. Will be tweaked going forward.
* General - Fix conficts with some other mods (MCC, AGM)
* Reinforcements - Possible fix for issue where sometimes reinforcements would spawn at [0,0,0] instead of where module was placed
* Teleport - Fix issue where creating too many teleporters would cause script errors due to running out of phonetic names
* Util - Fixed some issues where adding objects to curator would grab ambient objects (rabbits, snakes, etc..)

V.1.0.0 - Public Release!
* Actions - Fix issue where invisible Zeus sometimes wasn't
* Arsenal - 'Paste & Replace' works again
* Behaviours - Added 'Artillery' module to control AI artillery firing.
* Behaviours - Added 'Patrol' module to automatically generate patrol paths.
* Behaviours - Fix issue where sometimes un-garrisoned units still wouldn't move
* Behaviours - Secured units no longer stand back up 90% of the time after finishing 'sit' animation
* Behaviours - Totally re-wrote 'Search' and 'Search and Garrison' module logic to fix lots of issues.
* Equipment - Fix issue where only NATO NVG's were being removed with the 'Remove NVG's' module
* Equipment - Removed NVG's from unit inventory (even if not equipped).
* Equipment - Replaced laser pointers with flashlights when removing NVG's
* Extras - Added script to convert copied object positions to composition class format (replaces 'Save For Composition' module)
* General - Fixed a bunch of RPT spam
* General - Standardized all 'Choose' dialogs into one common reusable class.
* General - Totally re-organized all the source files into more sensible hierarchy.
* Reinforcements - Add new helicopters to reinforcement vehicle pools.
* Reinforcements - Added new 'Furthest', 'Nearest' and 'Least Used' options to LZ and RP choosing in Reinforcements.
* Reinforcements - Fixed some issues with helicopters waiting too long at LZ's
* Reinforcements/Artillery - Persistent modules can now be directly manipulated after creation
* Save/Load - Added support for pasting back into original position exactly.
* Save/Load - Fixed a number of issues where stacked objects wouldn't be placed correctly.
* Save/Load - Fixed issue where ambient objects (fish, chickens, snakes, etc...) were being caputured as well
* Save/Load - Include version number in copied data (future-proofing)
* Save/Load - Massive cleanup to fix a number of issues where objects would change positions when pasted in new positions.
* Teleport - Use 'standard' flagpole for teleporter objects (I still think stone monolith is cooler)
* Util - Allowed you to choose radius when adding/removing objects from Zeus
* Experimental - Custom Map Objects - Added preliminary support for allowing maps to add custom objects spawnable through Ares.

V.0.1.1
* Fixed backgrounds on some UI elements being transparent
* Reinforcements - Expanded deletion radius of 'Delete LZ/RP' module to 15m (from 5m)
* Reinforcements - Helicopters no longer wait after unloading troops.
* Reinforcements - Units don't wait as long before deleting themselves.

V.0.1.0 - BETA!
* Add 'Reinforcements' module. 
* Fix backpacks not being removed when clearing inventory for Arsenal
* Fix pasting not working in MP (Affected Save/Load as well as Arsenal functions)
* Added the ability to paste saved objects into their original objects (instead of just relative to the cursor)
* Fixed issue where zeus teleporting himself would show the 'You are being teleported' message (was redundant)
* Added module to 'Save/Load' for Zeus to add all objects in the map to curator
* Added ability to teleport a group

V.0.0.2
* Added Arsenal functions

V.0.0.1
* Initial alpha release.