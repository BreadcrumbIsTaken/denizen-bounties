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
# @denizen-build REL-1762
# @script-version 1.0
#
# Plugin dependencies:
#   Denizen (to run this script)
#   Citizens (NPCs)
#   Sentinel (NPC combat!)
#
# Installation:
#   Install all the plugins required above and put them into your plugins folder.
#   After you run the server, a bunch of plugin folders will be created.
#   Go into plugins/Denizen/scripts/ and drag this file into it.
#   In game, use the command "/ex reload" to reload Denizen's scripts.
#
# How to use:
#   Configure all the config values below to whatever values you want.
#   Create an NPC for the shopkeeper and assign it the "guard_shop_shopkeeper" assignment. (/ex assignment add script:guard_shop_shopkeeper)
#   Some config values will need to be reloaded to take effect. Use the command "/reloadguards" to get the data updated.
#
# Guard commands:
#   When in the proximity range specified in the "guard_shop_config" container, you can give the guards commands by typing them in chat.
#   The commands are "stay", "follow", "passive", "aggressive", and "remove".
#   The "stay" command will make the guards not follow the owner when the owner moves outside of the guard's proximity range.
#   The "follow" command will make the guards follow the owner again.
#   The "passive" command will make the guard not harm any entity.
#   The "aggressive" command will make the guard attack entities.
#   The "remove" command will remove the guard compleatly.

guard_shop_config:
    type: data
    respawn_command_error: You can only use this command when you have despawned guards!
    shopkeeper:
        # Shows up in chat before text.
        chat_name: &cShopkeeper&r&co
        # What to say when player enters proximity.
        greeting: Welcome to the &3Guard Shop&r!
        # What to say when player exits proximity.
        goodbye: Goodbye!
        # Purchace inquiry.
        store_inquiry: Would you like to purchace your own personal guard? It is only $150! &e(yes/no)
        # What to say when player purchases.
        purchace: Thank you for your purchace!
        # What to say when player does not purchace.
        no_purchace: No problem!
        # What to say when player is short on money.
        not_enough_money: Sorry, but it looks like you don't have enough money.
        # What to say when player has enough guards.
        too_many_guards: Sorry, but you already have enough guards.
        # Proximity radius.
        proximity_radius: 5
    guard:
        # Price per guard. This assumes you already have an ecomomy system setup using Vault. If you do not currently have one, check out this website for more information: https://meta.denizenscript.com/Docs/Languages/economy
        price: 150
        # Texutre value for skin.
        skin_texture: ewogICJ0aW1lc3RhbXAiIDogMTY0MjkwMzc3Njg1NiwKICAicHJvZmlsZUlkIiA6ICJkMGI4MjE1OThmMTE0NzI1ODBmNmNiZTliOGUxYmU3MCIsCiAgInByb2ZpbGVOYW1lIiA6ICJqYmFydHl5IiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzM5NDBlOTgyZGZiODg4NWE1NzQwODVmMDcwYjk5ZWM1ZjE0NzQ4YzE4Y2Q1M2Q2NzNmMzc3ZmUyNzRkZjFhNTkiLAogICAgICAibWV0YWRhdGEiIDogewogICAgICAgICJtb2RlbCIgOiAic2xpbSIKICAgICAgfQogICAgfQogIH0KfQ==
        # Signature value for skin.
        skin_signature: pG/azz1n93QEIYMOUTsYZsTNnMohP+eiG1tcJh+pKgfv12gFcoiRyzESCj1BaCpAShZAf8A0lseTf+qvfUcuwarWaVUHGqbxNQrQQIrY7YzuTD2AhbrnsGEs9YYQnBhlNTajeQe70nqv5rfKa8RaFsSPb+s+XzItrMXWMRh6mlM+iTxIdqpIavlq4vMFwqUa1ItVncj8Kf4+fsdzvyCEJXC94LZN+yCL9p3ahp3zKNo01jkBkNCxxlKOSW+z4o/fp+i+rHsUwMUZS6vw6em8dgp1hBlUJru+G7ohntxNThyrRqHof9Qag/GFvCcPYF8ib5nGu6uunKLovODfXz1VFsSXFOyGIFPnmXUE8MKJ5qDOUZ9RAkGIFYWeO5NXWnBbXhjaPkRI0qG3QUdkuiPgG6Bcd1cj20qk1q2LuRDxeXR69cfkKR/JHF4AxPzG13DWOxHZSe9bwtmZ/VLtCbrIozA09vnAryPAyTI3pxVLrap8ODL9yN+5TIFOmOo8lTiYdnPWVFET11g/4zK7r3XIhiAEdgdYLAhI2sXuzPkwxaitIDJhs9WJ3MMi87bzABI5EqiJEKVvpEFjpR0ok3pq6GQemmzpsCtvfRZhZi5OO1VkGiC9XU/xY5M4Yoxqi59e1bThuJxGdj867zpr1X22b3JnC5h+ZG3lf380LOVvCS4=
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
        main_hand: iron_sword
        commands:
            # Stop moving (don't follow).
            stay: stay
            # Continue following player.
            follow: follow
            # Despawn guard (temporarily). To respawn do /respawnguards.
            despawn: despawn
            # No attacking.
            passive: passive
            # Become aggressive.
            aggressive: aggressive
            # Permanatly removes guard.
            remove: remove
        # Guard's name
        name: &6Guard
        # Shows up in chat before text.
        chat_name: &6Guard&r&co
        # What to say when following a command.
        command_reply: Okay!
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

# --- Do not edit below this line. Let the script handle the rest ;) ---

guard_shop_shopkeeper:
    type: assignment
    actions:
        on assignment:
            - trigger name:proximity state:true radius:<proc[gs_data].context[shopkeeper.proximity_radius]>
    interact scripts:
        - guard_shop_shopkeeper_interact_script

guard_shop_shopkeeper_interact_script:
    type: interact
    steps:
        1:
            proximity trigger:
                entry:
                    script:
                        - lookclose true range:<proc[gs_data].context[shopkeeper.proximity_radius]> realistic
                        - narrate <proc[gs_data].context[shopkeeper.greeting]> format:guard_shop_shopkeeper_chat_format
                        - wait 1s
                        - narrate <proc[gs_data].context[shopkeeper.store_inquiry]> format:guard_shop_shopkeeper_chat_format
                exit:
                    script:
                        - lookclose false
                        - narrate <proc[gs_data].context[shopkeeper.goodbye]> format:guard_shop_shopkeeper_chat_format
            chat trigger:
                1:
                    trigger: /yes|Yes|YES/
                    hide trigger message: true
                    script:
                        - if !<player.has_flag[guard_ownership_amount]>:
                            - flag <player> guard_ownership_amount:1
                        - if <player.flag[guard_ownership_amount]> <= <proc[gs_data].context[guard.guards_per_player]>:
                            - define price <proc[gs_data].context[guard.price]>
                            - if <player.flag[money].is[or_more].than[<[price]>]>:
                                - money take quantity:<[price]>
                                - narrate <proc[gs_data].context[shopkeeper.purchace]> format:guard_shop_shopkeeper_chat_format
                                # Spawns in the guard.
                                - create player Guard <player.location> traits:sentinel save:guard

                                - define guard <entry[guard].created_npc>

                                # Configures the guard.
                                - flag <player> guards:->:<[guard]>
                                - flag <[guard]> owner:<player>
                                - assignment set script:personal_guard npc:<[guard]>
                                - adjust <[guard]> name:<proc[gs_data].context[guard.name]>
                                - adjust <[guard]> skin_blob:<proc[gs_data].context[guard.skin_texture]>;<proc[gs_data].context[guard.skin_signature]>
                                - health <[guard]> <proc[gs_data].context[guard.health]>
                                - equip <[guard]> hand:<proc[gs_data].context[guard.main_hand]>

                                # Sentinel things.
                                - execute "sentinel guard <player.name> --id <[guard].id>" as_server
                                - execute "sentinel respawntime <proc[gs_data].context[guard.respawn_delay]> --id <[guard].id>" as_server
                                - execute "sentinel attackrate <proc[gs_data].context[guard.attack_rate]> --id <[guard].id>" as_server
                                - execute "sentinel realistic <proc[gs_data].context[guard.realistic]> --id <[guard].id>" as_server
                                - execute "sentinel guarddistance <proc[gs_data].context[guard.follow_distance]> --id <[guard].id>" as_server

                                # Adds targets, ignores, and avoids.
                                - if !<proc[gs_data].context[guard.attacks].is_empty>:
                                    - foreach <proc[gs_data].context[guard.attacks]> as:i:
                                        - execute "sentinel addtarget <[i]> --id <[guard].id>" as_server
                                - if !<proc[gs_data].context[guard.ignores].is_empty>:
                                    - foreach <proc[gs_data].context[guard.ignores]> as:i:
                                        - execute "sentinel addignore <[i]> --id <[guard].id>" as_server
                                - if !<proc[gs_data].context[guard.avoids].is_empty>:
                                    - foreach <proc[gs_data].context[guard.avoids]> as:i:
                                        - execute "sentinel addavoid <[i]> --id <[guard].id>" as_server
                            - else:
                                - narrate <proc[gs_data].context[shopkeeper.not_enough_money]> format:guard_shop_shopkeeper_chat_format
                        - else:
                            - narrate <proc[gs_data].context[shopkeeper.too_many_guards]> format:guard_shop_shopkeeper_chat_format
                2:
                    trigger: /no|No|NO/
                    hide trigger message: true
                    script:
                        - narrate <proc[gs_data].context[shopkeeper.no_purchace]> format:guard_shop_shopkeeper_chat_format

personal_guard:
    type: assignment
    actions:
        on assignment:
            - trigger name:proximity state:true radius:<proc[gs_data].context[guard.proximity_radius]>
            - trigger name:chat state:true radius:<proc[gs_data].context[guard.proximity_radius]>
    interact scripts:
        - guard_interact_script

guard_interact_script:
    type: interact
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
                    trigger: /<proc[gs_data].context[guard.commands.remove]>/
                    hide trigger message: true
                    script:
                        - flag <player> guards:<-:<npc>
                        - if <player.flag[guard_ownership_amount]> == 1:
                            - flag <player> guard_ownership_amount:0
                        - else:
                            - flag <player> guard_ownership_amount:--
                        - remove <npc>
                        - narrate <proc[gs_data].context[guard.command_reply]> format:guard_chat_format
                2:
                    # Stop following.
                    trigger: /<proc[gs_data].context[guard.commands.stay]>/
                    hide trigger message: true
                    script:
                        - execute "sentinel guard --id <npc.id>" as_server
                        - narrate <proc[gs_data].context[guard.command_reply]> format:guard_chat_format
                3:
                    # Start following.
                    trigger: /<proc[gs_data].context[guard.commands.follow]>/
                    hide trigger message: true
                    script:
                        - execute "sentinel guard <player.name> --id <npc.id>" as_server
                        - execute "sentinel guarddistance <proc[gs_data].context[guard.follow_distance]> --id <npc.id>" as_server
                        - narrate <proc[gs_data].context[guard.command_reply]> format:guard_chat_format
                4:
                    # Don't attack.
                    trigger: /<proc[gs_data].context[guard.commands.passive]>/
                    hide trigger message: true
                    script:
                        - if !<proc[gs_data].context[guard.attacks].is_empty>:
                            - foreach <proc[gs_data].context[guard.attacks]> as:i:
                                - execute "sentinel removetarget <[i]> --id <npc.id>" as_server
                        - narrate <proc[gs_data].context[guard.command_reply]> format:guard_chat_format
                5:
                    # Do attack.
                    trigger: /<proc[gs_data].context[guard.commands.aggressive]>/
                    hide trigger message: true
                    script:
                        - if !<proc[gs_data].context[guard.attacks].is_empty>:
                            - foreach <proc[gs_data].context[guard.attacks]> as:i:
                                - execute "sentinel addtarget <[i]> --id <npc.id>" as_server
                        - narrate <proc[gs_data].context[guard.command_reply]> format:guard_chat_format
                6:
                    # Despawn.
                    trigger: /<proc[gs_data].context[guard.commands.despawn]>/
                    hide trigger message: true
                    script:
                        - narrate <proc[gs_data].context[guard.command_reply]> format:guard_chat_format
                        - flag <player> guards_despawned
                        - despawn

respawn_guards:
    type: command
    usage: /respawnguards
    name: respawnguards
    description: Respawns your personal guards!
    script:
        # Respawns the guards.
        - if <player.has_flag[guards_despawned]>:
            - foreach <player.flag[guards]> as:guard:
                - spawn <[guard]> <player.location> persistent
            - flag <player> guards_despawned:!
        - else:
            - narrate <proc[gs_data].context[respawn_command_error]>

reload_guards_command:
    type: command
    usage: /reloadguards
    name: reloadguards
    description: Reloads certain data for your personal guards.
    script:
        - run reload_guards
        - narrate "Guards reloaded!"

reload_guards:
    type: task
    script:
        - foreach <player.flag[guards]> as:guard:
            - define data <proc[gs_data].context[guard]>
            - define id <[guard].id>

            # Updates sentinel info
            - execute "sentinel respawntime <[data].get[name]> --id <[id]>" as_server
            - execute "sentinel attackrate <[data].get[attack_rate]> --id <[id]>" as_server
            - execute "sentinel realistic <[data].get[realistic]> --id <[id]>" as_server
            - execute "sentinel guarddistance <[data].get[follow_distance]> --id <[id]>" as_server

            # Updates the targets, ignores, and avoids.
            - if !<[data].get[attacks].is_empty>:
                - foreach <[data].get[attacks]> as:i:
                    - execute "sentinel addtarget <[i]> --id <[id]>" as_server
            - if !<[data].get[ignores].is_empty>:
                - foreach <[data].get[ignores]> as:i:
                    - execute "sentinel addignore <[i]> --id <[id]>" as_server
            - if !<[data].get[avoids].is_empty>:
                - foreach <[data].get[avoids]> as:i:
                    - execute "sentinel addavoid <[i]> --id <[id]>" as_server

player_leaves_despawn_guards:
    type: world
    events:
        on player quits:
            # Loops through all the player's guards and despawns them.
            - if <proc[gs_data].context[guard.despawn_on_owner_leave]>:
                - foreach <player.flag[guards]> as:i:
                    - despawn <[i]>

player_joins_respawn_guards:
    type: world
    events:
        on player joins:
            # Loops through all the player's guards and respawns them.
            - if <proc[gs_data].context[guard.respawn_on_owner_join]>:
                - foreach <player.flag[guards]> as:guard:
                    - spawn <[guard]> <player.location> persistent

# Chat format for shopkeeper.
guard_shop_shopkeeper_chat_format:
    type: format
    format: <proc[gs_data].context[shopkeeper.chat_name]> <[text]>

# Chat format for guard.
guard_chat_format:
    type: format
    format: <proc[gs_data].context[guard.chat_name]> <[text]>

# Shorter than having to rewrite everything all over again.
gs_data:
    type: procedure
    definitions: data_key
    script:
        - determine <script[guard_shop_config].data_key[<[data_key]>].unescaped.parse_color>
