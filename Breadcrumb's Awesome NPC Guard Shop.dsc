# +--------------------------------------
# | Breadcrumb's Awesome NPC Guard Shop
# |
# | Your very own bodyguard in Minecraft!
# +--------------------------------------
#
# ~~ A Denizen Bounty project. ~~
#
# @author Breadcrumb
# @date 2022-03-27
# @denizen-build REL-1777
# @script-version 3.1
# @github BreadcrumbIsTaken/denizen-bounties
#
# Plugin dependencies:
#   Denizen (to run this script)
#   Citizens (NPCs)
#   Sentinel (NPC combat!)
#   Vault (Economy)
#
# Installation:
#   Install all the plugins required above and put them into your plugins folder.
#   After you run the server, a bunch of plugin folders will be created.
#   Go into plugins/Denizen/scripts/ and drag this file into it.
#   In game, use the command "/ex reload" to reload Denizen's scripts.
#
# How to use:
#   Configure all the config values below and configure other places where there is a comment labled "CONFIG" to whatever values you want.
#   Create an NPC for the shopkeeper and assign it the "guard_shop_shopkeeper" assignment. (/ex assignment add script:guard_shop_shopkeeper)
#   Some config values will need to be reloaded to take effect. Use the command "/reloadguards" to get the data updated.
#
# Guard commands:
#   When in the proximity range specified in the "guard_shop_config" container, you can give the guards commands by typing them in chat, or by using the command: /listguards and clicking on a specific Guard..
#   The commands are "stay", "follow", "passive", "aggressive", and "remove".
#   The "stay" command will make the guards not follow the owner when the owner moves outside of the guard's proximity range.
#   The "follow" command will make the guards follow the owner again.
#   The "passive" command will make the guard not harm any entity.
#   The "aggressive" command will make the guard attack entities.
#   The "remove" command will remove the guard compleatly.

guard_shop_config:
    type: data
    shopkeeper:
        # Shows up in chat before text.
        chat_name: &cShopkeeper&r
        # Proximity radius.
        proximity_radius: 5
    guard:
        # Price per guard. This assumes you already have an ecomomy system setup using Vault. If you do not currently have one, check out this website for more information: https://meta.denizenscript.com/Docs/Languages/economy
        price: 150
        # Changes the Guard's skin. Needs the texture and signature for the skin. See this site for more information about skin blobs: https://meta.denizenscript.com/Docs/Languages/#player%20entity%20skins%20(skin%20blobs)
        # All of these values can be found on https://mineskin.org
        skin:
            # Texture value for skin.
            texture: ewogICJ0aW1lc3RhbXAiIDogMTY0MjkwMzc3Njg1NiwKICAicHJvZmlsZUlkIiA6ICJkMGI4MjE1OThmMTE0NzI1ODBmNmNiZTliOGUxYmU3MCIsCiAgInByb2ZpbGVOYW1lIiA6ICJqYmFydHl5IiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzM5NDBlOTgyZGZiODg4NWE1NzQwODVmMDcwYjk5ZWM1ZjE0NzQ4YzE4Y2Q1M2Q2NzNmMzc3ZmUyNzRkZjFhNTkiLAogICAgICAibWV0YWRhdGEiIDogewogICAgICAgICJtb2RlbCIgOiAic2xpbSIKICAgICAgfQogICAgfQogIH0KfQ==
            # Signature value for skin.
            signature: pG/azz1n93QEIYMOUTsYZsTNnMohP+eiG1tcJh+pKgfv12gFcoiRyzESCj1BaCpAShZAf8A0lseTf+qvfUcuwarWaVUHGqbxNQrQQIrY7YzuTD2AhbrnsGEs9YYQnBhlNTajeQe70nqv5rfKa8RaFsSPb+s+XzItrMXWMRh6mlM+iTxIdqpIavlq4vMFwqUa1ItVncj8Kf4+fsdzvyCEJXC94LZN+yCL9p3ahp3zKNo01jkBkNCxxlKOSW+z4o/fp+i+rHsUwMUZS6vw6em8dgp1hBlUJru+G7ohntxNThyrRqHof9Qag/GFvCcPYF8ib5nGu6uunKLovODfXz1VFsSXFOyGIFPnmXUE8MKJ5qDOUZ9RAkGIFYWeO5NXWnBbXhjaPkRI0qG3QUdkuiPgG6Bcd1cj20qk1q2LuRDxeXR69cfkKR/JHF4AxPzG13DWOxHZSe9bwtmZ/VLtCbrIozA09vnAryPAyTI3pxVLrap8ODL9yN+5TIFOmOo8lTiYdnPWVFET11g/4zK7r3XIhiAEdgdYLAhI2sXuzPkwxaitIDJhs9WJ3MMi87bzABI5EqiJEKVvpEFjpR0ok3pq6GQemmzpsCtvfRZhZi5OO1VkGiC9XU/xY5M4Yoxqi59e1bThuJxGdj867zpr1X22b3JnC5h+ZG3lf380LOVvCS4=
            # UUID used for "guard_head_clickable".
            uuid: 864f1f7f-5995-466e-b70f-41871f98683e
        # How many guards a player can own at one time.
        guards_per_player: 2
        # Proximity radius for player giving commands.
        proximity_radius: 10
        # How close to follow player.
        follow_lead: 4
        # How fast to follow player.
        follow_speed: 1
        # How much health the guard has.
        health: 35
        # What item to put in guard's main hand.
        main_hand: stone_sword
        # Guard's name
        name: &6Guard
        # Shows up in chat before text.
        chat_name: &6Guard
        # How long until guard respawns in seconds.
        # 0 will disable automatic respawn.
        # -1 will delete the guard when killed.
        respawn_delay: 5
        attacks:
            # What to attack.
            # See list of targets here: https://github.com/mcmonkeyprojects/Sentinel/#targets
            - monsters
        ignores:
            # What to ignore.
            # See list of targets here: https://github.com/mcmonkeyprojects/Sentinel/#targets
            - npcs
        avoids:
            # What to avoid.
            # See list of targets here: https://github.com/mcmonkeyprojects/Sentinel/#targets
            - creepers
        # Rate of attack in seconds.
        attack_rate: 2
        # If true, guard will not notice entities behind it.
        # If false, it will notice entities behind it.
        realistic: false
        # How far the player needs to go before guard starts following the player.
        follow_distance: 5
        # Despawns the guards when the player leaves.
        despawn_on_owner_leave: true
        # Respawns the guards when the player joins.
        respawn_on_owner_join: true
        # The maximum attack range of the Guard.
        attack_range: 3
        # The maximum distance and NPC will chase an entity.
        chase_range: 30

# Assign this assignment to any NPC to turn it into a shopkeeper for a Guard shop.
guard_shop_shopkeeper:
    type: assignment
    debug: false
    actions:
        on assignment:
            - trigger name:proximity state:true radius:<proc[gs_data].context[shopkeeper.proximity_radius]>
    interact scripts:
        - guard_shop_shopkeeper_interact_script

# The interact script for the Guard shop shopkeeper.
guard_shop_shopkeeper_interact_script:
    type: interact
    debug: false
    steps:
        1:
            proximity trigger:
                entry:
                    script:
                        - lookclose true range:<proc[gs_data].context[shopkeeper.proximity_radius]> realistic
                        # / CONFIG: What the shopkeeper should say when the player enters the proximity.
                        - narrate "Welcome to the <&3>Guard Shop!" format:guard_shop_shopkeeper_chat_format
                        - wait 1s
                        - inventory open d:buy_guard_inventory
                exit:
                    script:
                        - lookclose false
                        # / CONFIG: What the shopkeeper should say when the player leaves the proximity.
                        - narrate Goodbye! format:guard_shop_shopkeeper_chat_format

# The event that fires when the player purchases a guard.
player_buys_a_guard:
    type: world
    debug: false
    events:
        on player clicks guard_head_clickable in buy_guard_inventory:
            - inventory close

            - if <player.flag[guard_ownership_amount].if_null[0]> >= <proc[gs_data].context[guard.guards_per_player]>:
                # / CONFIG: What the shopkeeper will say when the player has enough guards.
                - narrate "Sorry, but you already have enough Guards for now." format:guard_shop_shopkeeper_chat_format
            - else:
                - define price <proc[gs_data].context[guard.price]>
                - if <player.money> < <[price]>:
                    # / CONFIG: What the shopkeeper will say when the player does not have enough money.
                    - narrate "Sorry, but it appears that you don't have enough money to buy a guard." format:guard_shop_shopkeeper_chat_format
                - else:
                    - flag <player> despawned_guards:<list[]> if:!<player.has_flag[despawned_guards]>
                    - money take quantity:<[price]>

                    # Spawns in the guard.
                    - create player Guard <player.location.add[1,0,1]> traits:sentinel save:guard

                    - define guard <entry[guard].created_npc>

                    # Configures the guard.
                    - flag <player> guards:->:<[guard]>
                    # Default statuses.
                    - flag <[guard]> statuses:<list[following|aggressive|spawned]>

                    - define guard_number <player.flag[guard_ownership_amount].if_null[0].add[1]>
                    - flag <player> guard_ownership_amount:++

                    - assignment set script:personal_guard npc:<[guard]>
                    - adjust <[guard]> "name:<proc[gs_data].context[guard.name]> <[guard_number]><reset>"
                    - adjust <[guard]> skin_blob:<proc[gs_data].context[guard.skin.texture]>;<proc[gs_data].context[guard.skin.signature]>
                    - equip <[guard]> hand:<proc[gs_data].context[guard.main_hand]>
                    - adjust <[guard]> owner:<player>

                    # Sentinel things.
                    - execute "sentinel guard <player.name> --id <[guard].id>" as_server silent
                    - execute "sentinel respawntime <proc[gs_data].context[guard.respawn_delay]> --id <[guard].id>" as_server silent
                    - execute "sentinel attackrate <proc[gs_data].context[guard.attack_rate]> --id <[guard].id>" as_server silent
                    - execute "sentinel realistic <proc[gs_data].context[guard.realistic]> --id <[guard].id>" as_server silent
                    - execute "sentinel guarddistance <proc[gs_data].context[guard.follow_distance]> --id <[guard].id>" as_server silent
                    - execute "sentinel health <proc[gs_data].context[guard.health]> --id <[guard].id>" as_server silent
                    - execute "sentinel range <proc[gs_data].context[guard.attack_range]> --id <[guard].id>" as_server silent
                    - execute "sentinel chaserange <proc[gs_data].context[guard.chase_range]> --id <[guard].id>" as_server silent

                    # Adds targets, ignores, and avoids.
                    - foreach <proc[gs_data].context[guard.attacks]> as:i:
                        - execute "sentinel addtarget <[i]> --id <[guard].id>" as_server silent
                    - foreach <proc[gs_data].context[guard.ignores]> as:i:
                        - execute "sentinel addignore <[i]> --id <[guard].id>" as_server silent
                    - foreach <proc[gs_data].context[guard.avoids]> as:i:
                        - execute "sentinel addavoid <[i]> --id <[guard].id>" as_server silent

                    - wait 1s
                    # / CONFIG: What the shopkeeper will say when the player purchases a Guard.
                    - narrate "Thank you for your purchase!" format:guard_shop_shopkeeper_chat_format
                    - narrate "To get information about your Guards and how to use them, use the command: <yellow>/guardlist" format:guard_shop_shopkeeper_chat_format

# Guard assignment script.
personal_guard:
    type: assignment
    debug: false
    actions:
        on assignment:
            - trigger name:proximity state:true radius:<proc[gs_data].context[guard.proximity_radius]>
            - trigger name:chat state:true radius:<proc[gs_data].context[guard.proximity_radius]>
    interact scripts:
        - guard_interact_script

# Guard interact script.
guard_interact_script:
    type: interact
    debug: false
    steps:
        1:
            proximity trigger:
                entry:
                    script:
                        - lookclose true range:<proc[gs_data].context[guard.proximity_radius]> realistic
                exit:
                    script:
                        - lookclose false
            chat trigger:
                1:
                    # Deletes guard.
                    # / CONFIG: Set the command to delete the guard. Is case insensitive.
                    trigger: /remove/
                    script:
                       - run remove_guard def.guard:<npc>
                2:
                    # Stop following.
                    # / CONFIG: Set the command to tell the guard to stop following the player. Is case insensitive.
                    trigger: /stay/
                    script:
                        - run stop_following def.guard:<npc>
                3:
                    # Start following.
                    # / CONFIG: Set the command to tell the guard to continue following the player. Is case insensitive.
                    trigger: /follow/
                    script:
                        - run start_following def.guard:<npc>
                4:
                    # Don't attack.
                    # / CONFIG: Set the command to tell the guard TO NOT attack enemies. Is case insensitive.
                    trigger: /passive/
                    script:
                        - run become_passive def.guard:<npc>
                5:
                    # Do attack.
                    # / CONFIG: Set the command to tell the guard TO attack enemies. Is case insensitive.
                    trigger: /aggressive/
                    script:
                        - run become_aggressive def.guard:<npc>
                6:
                    # Despawn.
                    # / CONFIG: Set the command to tell the guard to despawn. Is case insensitive.
                    trigger: /despawn/
                    script:
                        - run despawn_guard def.guard:<npc>

# Task to remove a Guard.
remove_guard:
    type: task
    definitions: guard
    debug: false
    script:
        - flag <player> guards:<-:<[guard]>
        - flag <player> guard_ownership_amount:--
        - flag <[guard]> statuses:!
        # / CONFIG: What the Guard will say in chat when they are removed.
        - narrate "<[guard].name><reset>: Removed!"
        - remove <[guard]>

# Task to stop a Guard from following you.
stop_following:
    type: task
    definitions: guard
    debug: false
    script:
        - execute "sentinel guard --id <[guard].id>" as_server silent
        # / CONFIG: What the Guard will say in chat when they are told to stay.
        - narrate "<[guard].name><reset>: I will stop following you."
        - if !<[guard].flag[statuses].contains[staying]>:
            - if <[guard].flag[statuses].contains[following]>:
                - flag <[guard]> statuses:<-:following
            - flag <[guard]> statuses:->:staying

# Task to make the Guard follow you.
start_following:
    type: task
    definitions: guard
    debug: false
    script:
        - execute "sentinel guard <player.name> --id <[guard].id>" as_server silent
        - execute "sentinel guarddistance <proc[gs_data].context[guard.follow_distance]> --id <[guard].id>" as_server silent
        # / CONFIG: What the Guard will say in chat when they are told to start following you.
        - narrate "<[guard].name><reset>: I will start following you."
        - if !<[guard].flag[statuses].contains[following]>:
            - if <[guard].flag[statuses].contains[staying]>:
                - flag <[guard]> statuses:<-:staying
            - flag <[guard]> statuses:->:following

# Task to make the Guard passive.
become_passive:
    type: task
    definitions: guard
    debug: false
    script:
        - foreach <proc[gs_data].context[guard.attacks]> as:i:
            - execute "sentinel removetarget <[i]> --id <[guard].id>" as_server silent
        # / CONFIG: What the Guard will say in chat when they are told to be passive.
        - narrate "<[guard].name><reset>: I will not attack enemies."
        - if !<[guard].flag[statuses].contains[passive]>:
            - if <[guard].flag[statuses].contains[aggressive]>:
                - flag <[guard]> statuses:<-:aggressive
            - flag <[guard]> statuses:->:passive

# Task to make the Guard aggressive.
become_aggressive:
    type: task
    definitions: guard
    debug: false
    script:
        - foreach <proc[gs_data].context[guard.attacks]> as:i:
            - execute "sentinel addtarget <[i]> --id <[guard].id>" as_server silent
        # / CONFIG: What the Guard will say in chat when they are told to be aggressive.
        - narrate "<[guard].name><reset>: I will attack enemies!"
        - if !<[guard].flag[statuses].contains[aggressive]>:
            - if <[guard].flag[statuses].contains[passive]>:
                - flag <[guard]> statuses:<-:passive
            - flag <[guard]> statuses:->:aggressive

# Task to despawn the Guard.
despawn_guard:
    type: task
    definitions: guard
    debug: false
    script:
        # / CONFIG: What the guard will say in chat when they are told to desapwn.
        - narrate "<[guard].name><reset>: See you later!"
        - if !<[guard].flag[statuses].contains[despawned]>:
            - if <[guard].flag[statuses].contains[spawned]>:
                - flag <[guard]> statuses:<-:spawned
            - flag <[guard]> statuses:->:despawned
            - despawn <[guard]>

# Task to spawn the Guard.
spawn_guard:
    type: task
    definitions: guard
    debug: false
    script:
        # / CONFIG: What the Guard should say when they are spawned back in.
        - narrate "<[guard].name><reset>: Hello! I'm back!"
        - if !<[guard].flag[statuses].contains[spawned]>:
            - if <[guard].flag[statuses].contains[despawned]>:
                - flag <[guard]> statuses:<-:despawned
            - flag <[guard]> statuses:->:spawned
            - flag <player> despawned_guards:<-:<[guard]>
            - spawn <[guard]> <player.location.add[1,0,1]>

# The inventory that lists all the Guards.
guard_list_inventory:
    type: inventory
    debug: false
    inventory: chest
    title: <&3>Guards
    gui: true
    procedural items:
        - define items <list[]>
        - if !<player.has_flag[guards]>:
            - determine <item[gray_stained_glass_pane].repeat_as_list[54]>
        - else:
            - foreach <player.flag[guards]> as:guard:
                - define display <[guard].name>
                - define lore <list[<white>Statuses:]>
                - foreach <[guard].flag[statuses]> as:status:
                    - define "lore:->:<white>- <blue><[status].to_titlecase>"
                - define "lore:->:<white>Left click to edit!"
                - define item <item[guard_head_clickable[display_name=<[display]>;lore=<[lore]>]].with_flag[guard:<[guard]>]>
                - define items:->:<[item]>
            - define items:|:<item[gray_stained_glass_pane].repeat_as_list[54]>
            - determine <[items]>
    slots:
        - [] [] [] [] [] [] [] [] []
        - [] [] [] [] [] [] [] [] []
        - [] [] [] [] [] [] [] [] []
        - [] [] [] [] [] [] [] [] []
        - [gray_stained_glass_pane] [gray_stained_glass_pane] [gray_stained_glass_pane] [gray_stained_glass_pane] [guard_list_tip] [gray_stained_glass_pane] [gray_stained_glass_pane] [gray_stained_glass_pane] [gray_stained_glass_pane]

# The inventory that lets you edit a Guard.
edit_guard_inventory:
    type: inventory
    debug: false
    inventory: chest
    title: GUARD
    gui: true
    procedural items:
        - determine <item[gray_stained_glass_pane].repeat_as_list[27]>
    slots:
        - [] [] [] [] [guard_head_clickable] [] [] [] []
        - [] [] [] [] [] [] [] [] []
        - [] [] [remove_item] [despawn_item] [spawn_item] [toggle_aggressiveness_item] [toggle_following_item] [] []

# The event that fires to open the Guard edit inventory, which sets up all the dynamic items and their lore.
edit_guard_data_from_inventory:
    type: world
    debug: false
    events:
        on player clicks guard_head_clickable in guard_list_inventory:
            - define inventory <inventory[edit_guard_inventory]>
            - define guard <context.item.flag[guard]>

            - inventory adjust d:<[inventory]> slot:5 display:<[guard].name>
            - inventory adjust d:<[inventory]> slot:5 "lore:Edit this guard!"
            - foreach <[guard].flag[statuses]> as:status:
                - if <[status]> == passive:
                    - define passive_or_aggressive:passive
                - else if <[status]> == aggressive:
                    - define passive_or_aggressive:aggressive
                - if <[status]> == following:
                    - define following_or_not_following:following
                - else if <[status]> == staying:
                    - define following_or_not_following:staying
            - inventory adjust d:<[inventory]> slot:24 "lore:<white>Click to toggle ggressiveness.|<white>Currently: <blue><[passive_or_aggressive]>"
            - inventory adjust d:<[inventory]> slot:25 "lore:<white>Click to toggle following.|<white>Currently: <blue><[following_or_not_following]>"

            - inventory flag d:<[inventory]> slot:24 status:<[passive_or_aggressive]>
            - inventory flag d:<[inventory]> slot:25 status:<[following_or_not_following]>

            - inventory flag d:<[inventory]> slot:21 guard:<[guard]>
            - inventory flag d:<[inventory]> slot:22 guard:<[guard]>
            - inventory flag d:<[inventory]> slot:23 guard:<[guard]>
            - inventory flag d:<[inventory]> slot:24 guard:<[guard]>
            - inventory flag d:<[inventory]> slot:25 guard:<[guard]>

            - adjust <[inventory]> title:<[guard].name>
            - inventory open d:<[inventory]>
        on player clicks remove_item in edit_guard_inventory:
            - inventory close
            - run remove_guard def.guard:<context.item.flag[guard]>
        on player clicks despawn_item in edit_guard_inventory:
            - inventory close
            - if <context.item.flag[guard].flag[statuses].contains[spawned]>:
                - run despawn_guard def.guard:<context.item.flag[guard]>
            - else:
                - narrate "<context.item.flag[guard].name><reset>: I am already despawned!"
        on player clicks spawn_item in edit_guard_inventory:
            - inventory close
            - if <context.item.flag[guard].flag[statuses].contains[despawned]>:
                - run spawn_guard def.guard:<context.item.flag[guard]>
            - else:
                # / CONFIG: What to say when the Guard is already spawned when tried to be spawned in.
                - narrate "<context.item.flag[guard].name><reset>: I am already spawned!"
        on player clicks toggle_aggressiveness_item in edit_guard_inventory:
            - inventory close
            - if <context.item.flag[status]> == passive:
                - run become_aggressive def.guard:<context.item.flag[guard]>
            - else:
                - run become_passive def.guard:<context.item.flag[guard]>
        on player clicks toggle_following_item in edit_guard_inventory:
            - inventory close
            - if <context.item.flag[status]> == following:
                - run stop_following def.guard:<context.item.flag[guard]>
            - else:
                - run start_following def.guard:<context.item.flag[guard]>

# Remove Guard item for "edit_guard_inventory".
remove_item:
    type: item
    debug: false
    material: barrier
    display name: <red>Remove Guard
    lore:
        - <white>Left click to
        - <white>permanently remove
        - <white>this guard.

# Despawn Guard item for "edit_guard_inventory".
despawn_item:
    type: item
    debug: false
    material: firework_star
    display name: <red>Despawn Guard
    lore:
        - <white>Left click to
        - <white>despawn this
        - <white>guard.

# Spawn Guard item for "edit_guard_inventory".
spawn_item:
    type: item
    debug: false
    material: sunflower
    display name: <red>Spawn Guard
    lore:
        - <white>Left click to
        - <white>spawn this
        - <white>guard if
        - <white>they are despawned.

# Toggle Guard aggressiveness item for "edit_guard_inventory".
toggle_aggressiveness_item:
    type: item
    debug: false
    material: feather
    display name: <red>Toggle Aggressiveness

# Toggle Guard following item for "edit_guard_inventory".
toggle_following_item:
    type: item
    debug: false
    material: lead
    display name: <red>Toggle Following

# Opens the guard list.
open_guard_list_inventory:
    type: command
    debug: false
    name: guardlist
    usage: /guardlist
    description: Lists all the guards you own and their statuses.
    permission: npcguardshop.open_guard_list
    aliases:
        - openguardlist
        - listguards
    script:
        - inventory open d:guard_list_inventory

# Inventory to buy a Guard for the shopkeeper.
buy_guard_inventory:
    type: inventory
    debug: false
    inventory: chest
    title: <&3>Guard Shop
    gui: true
    procedural items:
        - determine <item[gray_stained_glass_pane].repeat_as_list[54]>
    slots:
    - [] [] [] [] [] [] [] [] []
    - [] [] [] [] [] [] [] [] []
    - [] [] [] [] [guard_head_clickable] [] [] [] []
    - [] [] [] [] [] [] [] [] []
    - [] [] [] [] [] [] [] [] []

# Guard head for "buy_guard_inventory"
# / CONFIG: Configure the "display name" and "lore" however you want!
guard_head_clickable:
    type: item
    debug: false
    material: player_head
    display name: Purchase a Guard!
    lore:
        - <white>Price:<green> $<proc[gs_data].context[guard.price]>
    mechanisms:
        skull_skin: <proc[gs_data].context[guard.skin.uuid]>|<proc[gs_data].context[guard.skin.texture]>

guard_list_tip:
    type: item
    debug: false
    material: player_head
    display name: <green>How to Use Your Guard<&co>
    mechanisms:
        skull_skin: 917ad1d9-0807-4a28-ac5f-bd7a8f1b64e9|eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmEyYWZhN2JiMDYzYWMxZmYzYmJlMDhkMmM1NThhN2RmMmUyYmFjZGYxNWRhYzJhNjQ2NjJkYzQwZjhmZGJhZCJ9fX0=
    lore:
        - <white>You can also say the following
        - <white>commands in chat to tell
        - <white>your guard what to do.<&co>
        - <yellow>Passive<white> - Tells the guard to not
        - <white>fight any entities.
        - <yellow>Aggresive<white> - Tells the guard to fight
        - <white>any entities that may cause you harm.
        - <yellow>Stay<white> - Tells the guard to stop following
        - <white>you around.
        - <yellow>Follow<white> - Tells the guard to start
        - <white>following you around.
        - <yellow>Despawn<white> - Tells the guard to
        - <white> despawn temporarily.
        - <yellow>Remove<white> - Tells the guard to
        - <white> despawn PERMANANTLY!
        - <white>To spawn in any despawned Guards,
        - <white>use the command<&co>
        - <yellow>/spawnguards

# Command to spawn the Guards.
spawn_guards:
    type: command
    usage: /spawnguards
    name: spawnguards
    description: Spawns your personal guards!
    permission: npcguardshop.spawn_guards
    debug: false
    script:
        # Spawns in any unspawned guards.
        - foreach <player.flag[despawned_guards]> as:guard:
            - run spawn_guard def.guard:<[guard]>

# Command to reload the Guards.
reload_guards_command:
    type: command
    usage: /reloadguards
    name: reloadguards
    description: Reloads certain data for your personal guards. Mainly for administrators/operators.
    permission: npcguardshop.reload_guards
    debug: false
    script:
        - run reload_guards
        - narrate "Guards reloaded!" format:guard_shop_command_finished_format

# Task to reload the Guards. Mainly for administrtors/operators. Reload the guards when you edit any of these config values in the `guard_shop_config` container:
#   skin (texture, signature, and/or uuid)
#   respawn_delay
#   attack_rate
#   realistic
#   follow_distance
#   attack_range
#   chase_range
#   attacks
#   ignores
#   avoids
reload_guards:
    type: task
    debug: false
    script:
        - foreach <server.players_flagged[guards]> as:player:
            - foreach <[player].flag[guards]> as:guard:
                - define data <proc[gs_data].context[guard]>
                - define id <[guard].id>

                # Updates sentinel info
                - execute "sentinel respawntime <[data].get[respawn_delay]> --id <[id]>" as_server silent
                - execute "sentinel attackrate <[data].get[attack_rate]> --id <[id]>" as_server silent
                - execute "sentinel realistic <[data].get[realistic]> --id <[id]>" as_server silent
                - execute "sentinel guarddistance <[data].get[follow_distance]> --id <[id]>" as_server silent
                - execute "sentinel range <[data].get[attack_range]> --id <[guard].id>" as_server silent
                - execute "sentinel chaserange <[data].get[chase_range]> --id <[guard].id>" as_server silent

                # Updates NPC info
                - adjust <[guard]> skin_blob:<[data].get[skin.texture]>;<[data].get[skin.signature]>

                # Updates the targets, ignores, and avoids.
                - foreach <[data].get[attacks]> as:i:
                    - execute "sentinel addtarget <[i]> --id <[id]>" as_server silent
                - foreach <[data].get[ignores]> as:i:
                    - execute "sentinel addignore <[i]> --id <[id]>" as_server silent
                - foreach <[data].get[avoids]> as:i:
                    - execute "sentinel addavoid <[i]> --id <[id]>" as_server silent

# Despawn Guards when the player leaves if set.
player_leaves_despawn_guards:
    type: world
    debug: false
    events:
        on player quits flagged:guards:
            # Loops through all the player's guards and despawns them.
            - if <proc[gs_data].context[guard.despawn_on_owner_leave]>:
                - despawn <player.flag[guards]>

# Respawn Guards when the player leaves if set.
player_joins_respawn_guards:
    type: world
    debug: false
    events:
        on player joins flagged:guards:
            # Loops through all the player's guards and respawns them.
            - if <proc[gs_data].context[guard.respawn_on_owner_join]>:
                - spawn <player.flag[guards]> <player.location.add[1,0,1]>

# Chat format for shopkeeper.
guard_shop_shopkeeper_chat_format:
    type: format
    debug: false
    format: <proc[gs_data].context[shopkeeper.chat_name]>: <[text]>

# Error format for when a non-Guard related task needs an error to be thrown.
guard_shop_error_format:
    type: format
    debug: false
    format: <&lb><red><bold>ERROR<reset><&rb><&co> <[text]>

# Command finished format for when a non-Guard related task is completed.
guard_shop_command_finished_format:
    type: format
    debug: false
    format: <&lb><green>Done!<reset><&rb><&co> <[text]>

# This is a procedure to get any passed in config values from the `guard_shop_config` data script container and return them unespaced and parsed.
gs_data:
    type: procedure
    definitions: data_key
    debug: false
    script:
        - determine <script[guard_shop_config].data_key[<[data_key]>].unescaped.parse_color>
