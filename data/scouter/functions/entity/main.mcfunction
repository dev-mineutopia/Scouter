# HPのないEntityとBossモンスターを除くEntityを登録
execute if entity @e[type=!wither_skull,type=!ender_dragon,type=!wither,type=!player,tag=!SC-entity,type=!armor_stand,type=!area_effect_cloud,type=!arrow,type=!boat,type=!chest_minecart,type=!command_block_minecart,type=!dragon_fireball,type=!egg,type=!end_crystal,type=!ender_pearl,type=!evoker_fangs,type=!experience_bottle,type=!experience_orb,type=!eye_of_ender,type=!falling_block,type=!fireball,type=!firework_rocket,type=!fishing_bobber,type=!furnace_minecart,type=!hopper_minecart,type=!item,type=!item_frame,type=!leash_knot,type=!lightning_bolt,type=!minecart,type=!llama_spit,type=!painting,type=!potion,type=!shulker_bullet,type=!small_fireball,type=!spawner_minecart,type=!spectral_arrow,type=!tnt,type=!tnt_minecart,type=!trident] as @e[type=!ender_dragon,type=!wither,type=!player,tag=!SC-entity,type=!armor_stand,type=!area_effect_cloud,type=!arrow,type=!boat,type=!chest_minecart,type=!command_block_minecart,type=!dragon_fireball,type=!egg,type=!end_crystal,type=!ender_pearl,type=!evoker_fangs,type=!experience_bottle,type=!experience_orb,type=!eye_of_ender,type=!falling_block,type=!fireball,type=!firework_rocket,type=!fishing_bobber,type=!furnace_minecart,type=!hopper_minecart,type=!item,type=!item_frame,type=!leash_knot,type=!lightning_bolt,type=!minecart,type=!llama_spit,type=!painting,type=!potion,type=!shulker_bullet,type=!small_fireball,type=!spawner_minecart,type=!spectral_arrow,type=!tnt,type=!tnt_minecart,type=!trident,type=!wither_skull] run function scouter:entity/resister

# エンドラとウィザー用
execute if entity @e[type=ender_dragon,tag=!SC-boss-entity] as @e[type=ender_dragon,tag=!SC-boss-entity] run function scouter:entity/boss-resister
execute if entity @e[type=wither,tag=!SC-boss-entity] as @e[type=wither,tag=!SC-boss-entity] run function scouter:entity/boss-resister

# SC-entityの付近にプレイヤーがいる場合に、表示関連の処理を行う
# AECの名前はプレイヤーが8ブロック以内にいないと見えないっぽい(クライアント設定次第？)
execute if entity @e[tag=SC-entity] as @e[tag=SC-entity] at @s if entity @e[type=player,distance=..10] run function scouter:entity/near-player

# SC-boss-entity用
execute if entity @e[tag=SC-boss-entity] as @e[tag=SC-boss-entity] at @s if entity @e[type=player,distance=..15] run function scouter:entity/boss-hp