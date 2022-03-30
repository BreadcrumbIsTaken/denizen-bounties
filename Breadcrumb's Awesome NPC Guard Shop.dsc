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
# @script-version 0.0
#
# Plugin dependancies:
#   Denizen (to run this script)
#   Citizens (NPCs)
#   Sentinel (NPC combat!)
#   Vault (economy)
#   Depenizen (Denizen bridge)
#
# Installation:
#   Install all the plugins required above and put them into your plugins folder.
#   After you run the server, a bunch of plugin folders will be created.
#   Go into plugins/Denizen/scripts/ and drag this file into it.
#   In game, use the command "/ex reload" to reload Denizen's scripts.
#
# How to use:
#   Configure all the data below to whatever values you want.
#   Create an NPC for the shopkeeper and assign it the "guard_shop_shopkeeper" assignment. (/npc assignment --set guard_shop_shopkeeper)
#
# Guard commands:
#   When in the proximity range specified in the "guard_shop_data" container, you can give the guards commands by typing them in chat.
#   The commands are "stay", "follow", "passive", "aggressive", and "remove".
#   The "stay" command will make the guards not follow the owner when the owner moves outside of the guard's proximity range.
#   The "follow" command will make the guards follow the owner again.
#   The "passive" command will make the guard not harm any entity.
#   The "aggressive" command will make the guard attack entities.
#   The "remove" command will remove the guard compleatly.

# TODO: Passive and aggressive command. Probably use the ignoretarget command instead of guard, but try and see.

guard_shop_data:
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
        # What to say when player has enough guards
        too_many_guards: Sorry, but you already have enough guards.
        # Proximity radius.
        proximity_radius: 5
    guard:
        # Price per guard.
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
        follow_speed: 1.6
        # How much health the guard has
        health: 35
        # What item to put in guard's main hand.
        main_hand: iron_sword
        commands:
            # Stop moving (don't follow)
            stay: stay
            # Continue following player
            follow: follow
            # Despawn guard (temporarily). To respawn do /respawnguards
            despawn: despawn
            # No attacking
            passive: passive
            # Become aggressive
            aggressive: aggressive
            # Permanatly removes guard
            remove: remove
        # Guard's name
        name: &6Guard
        # Shows up in chat before text.
        chat_name: &6Guard&r&co
        # What to say when following a command
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
        attack_rate: 1
        # If true, guard will not notice entities behind it.
        # If false, it will notice entities behind it.
        realistic: false

# Basic economy script. Change this however you want. If you already have one,
# than you can delete/comment this out.
guard_shop_economy:
    type: economy
    priority: normal
    name single: dollar
    name plural: dollars
    digits: 2
    format: $<[amount]>
    balance: <player.flag[money]>
    has: <player.flag[money].is[or_more].than[<[amount]>]>
    withdraw:
        - flag <player> money:-:<[amount]>
    deposit:
        - flag <player> money:+:<[amount]>

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
                                - create player Guard <player.location> traits:sentinel save:guard

                                - define guard <entry[guard].created_npc>

                                # Spawns in the guard
                                - flag <player> guards:->:<[guard]>
                                - flag <[guard]> owner:<player>
                                - assignment set script:personal_guard npc:<[guard]>
                                - adjust <[guard]> name:<proc[gs_data].context[guard.name]>
                                - adjust <[guard]> skin_blob:<proc[gs_data].context[guard.skin_texture]>;<proc[gs_data].context[guard.skin_signature]>
                                - health <[guard]> <proc[gs_data].context[guard.health]>
                                - equip <[guard]> hand:<proc[gs_data].context[guard.main_hand]>

                                - execute "sentinel guard <player.name> --id <[guard].id>" as_server
                                - execute "sentinel respawntime <proc[gs_data].context[guard.respawn_delay]> --id <[guard].id>" as_server
                                - execute "sentinel attackrate <proc[gs_data].context[guard.attack_rate]> --id <[guard].id>" as_server
                                - execute "sentinel realistic <proc[gs_data].context[guard.realistic]> --id <[guard].id>" as_server

                                - if !<proc[gs_data].context[guard.attacks].is_empty>:
                                    - foreach <proc[gs_data].context[guard.attacks]> as:i:
                                        - execute "sentinel addtarget <[i]> --id <[guard].id>" as_server
                                - if !<proc[gs_data].context[guard.ignores].is_empty>:
                                    - foreach <proc[gs_data].context[guard.ignores]> as:i:
                                        - execute "sentinel addignore <[i]> --id <[guard].id>" as_server
                                - if !<proc[gs_data].context[guard.avoids].is_empty>:
                                    - foreach <proc[gs_data].context[guard.avoids]> as:i:
                                        - execute "sentinel addavoid <[i]> --id <[guard].id>" as_server

                                - flag <player> guards_follow:true
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
            - trigger name:proximity state:true radius:5
        on attack:
            - if <npc.flag[owner].flag[guards_follow]>:
                - flag <npc.flag[owner]> guards_follow:!
    interact scripts:
        - guard_interact_script

guard_interact_script:
    type: interact
    steps:
        1:
            proximity trigger:
                entry:
                    script:
                        - if <player.flag[guards_follow]>:
                            - follow stop
                        - lookclose true range:<proc[gs_data].context[guard.proximity_radius]> realistic
                exit:
                    script:
                        - if <player.flag[guards_follow]>:
                            - lookclose false
                            - follow target:<player> lead:<proc[gs_data].context[guard.follow_lead]> speed:<proc[gs_data].context[guard.follow_speed]>
            chat trigger:
                1:
                    # COMPLEATLY REMOVE GUARD
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
                    trigger: /<proc[gs_data].context[guard.commands.stay]>/
                    hide trigger message: true
                    script:
                        - flag <player> guards_follow:false
                        - narrate <proc[gs_data].context[guard.command_reply]> format:guard_chat_format
                3:
                    trigger: /<proc[gs_data].context[guard.commands.follow]>/
                    hide trigger message: true
                    script:
                        - flag <player> guards_follow:true
                        - narrate <proc[gs_data].context[guard.command_reply]> format:guard_chat_format
                4:
                    trigger: /<proc[gs_data].context[guard.commands.passive]>/
                    hide trigger message: true
                    script:
                        - execute "sentinel guard <player.name> --id <npc.id>" as_server
                        - narrate <proc[gs_data].context[guard.command_reply]> format:guard_chat_format
                5:
                    trigger: /<proc[gs_data].context[guard.commands.aggressive]>/
                    hide trigger message: true
                    script:
                        - execute "sentinel guard --id <npc.id>" as_server
                        - narrate <proc[gs_data].context[guard.command_reply]> format:guard_chat_format
                6:
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
        - if <player.has_flag[guards_despawned]>:
            - foreach <player.flag[guards]> as:guard:
                - spawn <[guard]> <player.location> persistent
            - flag <player> guards_despawned:!
        - else:
            - narrate <proc[gs_data].context[respawn_command_error]>

guard_shop_shopkeeper_chat_format:
    type: format
    format: <proc[gs_data].context[shopkeeper.chat_name].unescaped.parse_color> <[text]>

guard_chat_format:
    type: format
    format: <proc[gs_data].context[guard.chat_name].unescaped.parse_color> <[text]>

gs_data:
    type: procedure
    definitions: data_key
    script:
        - determine <script[guard_shop_data].data_key[<[data_key]>].unescaped.parse_color>
