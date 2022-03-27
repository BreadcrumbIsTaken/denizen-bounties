# +------------------------------------------------------------------------
# |    ____                     _                           _     _
# |   |  _ \                   | |                         | |   ( )
# |   | |_) |_ __ ___  __ _  __| | ___ _ __ _   _ _ __ ___ | |__ |/ ___
# |   |  _ <| '__/ _ \/ _` |/ _` |/ __| '__| | | | '_ ` _ \| '_ \  / __|
# |   | |_) | | |  __/ (_| | (_| | (__| |  | |_| | | | | | | |_) | \__ \
# |   |____/|_|  \___|\__,_|\__,_|\___|_|   \__,_|_| |_| |_|_.__/  |___/
# |                                                    _   _ _____   _____
# |       /\                                          | \ | |  __ \ / ____|
# |      /  \__      _____  ___  ___  _ __ ___   ___  |  \| | |__) | |
# |     / /\ \ \ /\ / / _ \/ __|/ _ \| '_ ` _ \ / _ \ | . ` |  ___/| |
# |    / ____ \ V  V /  __/\__ \ (_) | | | | | |  __/ | |\  | |    | |____
# |   /_/____\_\_/\_/ \___||___/\___/|_|_|_| |_|\___| |_| \_|_|     \_____|
# |    / ____|                   | |  / ____| |
# |   | |  __ _   _  __ _ _ __ __| | | (___ | |__   ___  _ __
# |   | | |_ | | | |/ _` | '__/ _` |  \___ \| '_ \ / _ \| '_ \
# |   | |__| | |_| | (_| | | | (_| |  ____) | | | | (_) | |_) |
# |    \_____|\__,_|\__,_|_|  \__,_| |_____/|_| |_|\___/| .__/
# |                                                     | |
# |                                                     |_|
# |   Your very own bodyguard in Minecraft!
# +------------------------------------------------------------------------
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

guard_shop_data:
    type: data
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
                        - lookclose true range:5
                        - narrate <proc[gs_data].context[shopkeeper.greeting]> format:guard_shop_shopkeeper_chat_format
                        - wait 1s
                        - narrate <proc[gs_data].context[shopkeeper.store_inquiry]> format:guard_shop_shopkeeper_chat_format
                exit:
                    script:
                        - narrate <proc[gs_data].context[shopkeeper.goodbye]> format:guard_shop_shopkeeper_chat_format
            chat trigger:
                1:
                    trigger: /yes|Yes|YES/
                    hide trigger message: true
                    script:
                        - if <player.flag[guard_ownership_amount]> <= <proc[gs_data].context[guard.guards_per_player]>:
                            - define price <proc[gs_data].context[guard.price]>
                            - if <player.flag[money].is[or_more].than[<[price]>]>:
                                - money take quantity:<[price]>
                                - narrate <proc[gs_data].context[shopkeeper.purchace]> format:guard_shop_shopkeeper_chat_format
                                - create player Guard <player.location> traits:Sentinel save:guard

                                - define guard <entry[guard].created_npc>

                                - flag player guards:->:<[guard]>
                                - adjust <[guard]> name:Guard
                                - adjust <[guard]> skin_blob:<proc[gs_data].context[guard.skin_texture]>;<proc[gs_data].context[guard.skin_signature]>
                            - else:
                                - narrate <proc[gs_data].context[shopkeeper.not_enough_money]> format:guard_shop_shopkeeper_chat_format
                        - else:
                            - narrate <proc[gs_data].context[shopkeeper.too_many_guards]> format:guard_shop_shopkeeper_chat_format
                2:
                    trigger: /no|No|NO/
                    hide trigger message: true
                    script:
                        - narrate <proc[gs_data].context[shopkeeper.no_purchace]> format:guard_shop_shopkeeper_chat_format

guard:
    type: assignment
    actions:
        on assignment:
            - trigger name:proximity state:true radius:<script[guard_shop_data].data_key[guard.proximity_radius]>

guard_shop_shopkeeper_chat_format:
    type: format
    format: <script[guard_shop_data].data_key[shopkeeper.chat_name].unescaped.parse_color> <[text]>

gs_data:
    type: procedure
    definitions: data_key
    script:
        - determine <script[guard_shop_data].data_key[<[data_key]>].unescaped.parse_color>
