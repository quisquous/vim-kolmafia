" ASH syntax file for KoLmafia scripting

if !exists("main_syntax")
  if version < 600
    syntax clear
  elseif exists("b:current_syntax")
    finish
  endif
  let main_syntax = 'ash'
endif

" This was munged from http://wiki.kolmafia.us/index.php?title=Ash_Functions
" FIXME: auto-generate from source and better format function list
syn keyword ashFunction abort add_item_condition adv1 adventure
syn keyword ashFunction appearance_rates append append_replacement append_tail
syn keyword ashFunction attack autosell autosell_price available_amount
syn keyword ashFunction batch_close batch_open black_market_available
syn keyword ashFunction boolean_modifier boolean_modifier buffed_hit_stat buy
syn keyword ashFunction buy can_drink can_eat can_equip can_interact ceil
syn keyword ashFunction chamber change_mcd char_at chat_clan chat_clan
syn keyword ashFunction chat_macro chat_notify chat_private class_modifier
syn keyword ashFunction class_modifier clear cli_execute closet_amount
syn keyword ashFunction combat_mana_cost_modifier combat_rate_modifier
syn keyword ashFunction contains_text council count craft creatable_amount
syn keyword ashFunction create create_matcher current_hit_stat current_mcd
syn keyword ashFunction daily_special damage_absorption_percent
syn keyword ashFunction damage_reduction delete disable dispensary_available
syn keyword ashFunction display_amount drink eat eatsilent effect_modifier
syn keyword ashFunction effect_modifier elemental_resistance
syn keyword ashFunction elemental_resistance enable end enthrone_familiar
syn keyword ashFunction entity_decode entity_encode entryway equip
syn keyword ashFunction equipped_amount equipped_item expected_damage
syn keyword ashFunction experience_bonus expression_eval extract_items
syn keyword ashFunction extract_meat familiar_equipment
syn keyword ashFunction familiar_equipped_equipment familiar_weight file_to_map
syn keyword ashFunction find floor form_field fullness_limit
syn keyword ashFunction galaktik_cures_discounted gameday_to_int
syn keyword ashFunction gameday_to_string get_campground get_ccs_action
syn keyword ashFunction get_auto_attack get_counters get_dwelling
syn keyword ashFunction get_ingredients get_inventory get_monsters get_power
syn keyword ashFunction get_property get_related get_revision get_version group
syn keyword ashFunction group_count group_string guardians
syn keyword ashFunction guild_store_available have_bartender have_chef
syn keyword ashFunction have_display have_effect have_equipped have_familiar
syn keyword ashFunction have_mushroom_plot have_outfit have_shop have_skill
syn keyword ashFunction hedgemaze hermit hidden_temple_unlocked
syn keyword ashFunction hippy_store_available historical_age historical_price
syn keyword ashFunction in_bad_moon in_hardcore in_moxie_sign in_muscle_sign
syn keyword ashFunction in_mysticality_sign index_of inebriety_limit
syn keyword ashFunction initiative_modifier insert is_displayable is_giftable
syn keyword ashFunction is_goal is_integer is_npc_item is_online is_tradeable
syn keyword ashFunction item_amount item_drop_modifier item_drops
syn keyword ashFunction item_drops_array item_type last_index_of last_monster
syn keyword ashFunction length load_html logprint mall_price mana_cost_modifier
syn keyword ashFunction map_to_file max max maximize maximize meat_drop
syn keyword ashFunction meat_drop_modifier min min mmg_bet_amount mmg_bet_owner
syn keyword ashFunction mmg_bet_owner_id mmg_bet_taker mmg_bet_taker_id
syn keyword ashFunction mmg_bet_winnings mmg_make_bet mmg_my_bets
syn keyword ashFunction mmg_offered_bets mmg_retract_bet mmg_search
syn keyword ashFunction mmg_take_bet mmg_visit mmg_wait_event modifier_eval
syn keyword ashFunction monster_attack monster_defense monster_element
syn keyword ashFunction monster_eval monster_hp monster_level_adjustment
syn keyword ashFunction moon_light moon_phase mp_cost my_adventures
syn keyword ashFunction my_ascensions my_basestat my_buffedstat my_class
syn keyword ashFunction my_closet_meat my_daycount my_enthroned_familiar
syn keyword ashFunction my_familiar my_fullness my_hash my_hp my_id
syn keyword ashFunction my_inebriety my_level my_location my_maxhp my_maxmp
syn keyword ashFunction my_meat my_mp my_name my_primestat my_spleen_use
syn keyword ashFunction my_turncount now_to_string numeric_modifier
syn keyword ashFunction numeric_modifier numeric_modifier numeric_modifier
syn keyword ashFunction numeric_modifier outfit outfit_pieces overdrink print
syn keyword ashFunction print_html pulls_remaining put_closet put_display
syn keyword ashFunction put_shop put_stash random raw_damage_absorption
syn keyword ashFunction refresh_stash refresh_status remove_item_condition
syn keyword ashFunction replace replace_all replace_first replace_string
syn keyword ashFunction replace_string reset restore_hp restore_mp
syn keyword ashFunction retrieve_item round run_combat runaway session_logs
syn keyword ashFunction set_auto_attack set_length set_location set_property
syn keyword ashFunction shop_amount spleen_limit split_string square_root start
syn keyword ashFunction stash_amount stat_bonus_today stat_bonus_tomorrow
syn keyword ashFunction stat_modifier steal stills_available storage_amount
syn keyword ashFunction string_modifier string_modifier substring take_closet
syn keyword ashFunction take_display take_stash take_storage tavern throw_items
syn keyword ashFunction time_to_string to_boolean to_class to_effect to_effect
syn keyword ashFunction to_effect to_element to_familiar to_familiar to_float
syn keyword ashFunction to_int to_item to_item to_item to_location to_location
syn keyword ashFunction to_lower_case to_monster to_plural to_skill to_skill
syn keyword ashFunction to_skill to_slot to_stat to_string to_upper_case to_url
syn keyword ashFunction today_to_string truncate turns_per_cast turns_played
syn keyword ashFunction url_decode url_encode use use_familiar use_skill
syn keyword ashFunction use_skill user_confirm visit_url visit_url visit_url
syn keyword ashFunction wait waitq weapon_hands weapon_type weight_adjustment
syn keyword ashFunction white_citadel_available who_clan will_usually_dodge
syn keyword ashFunction will_usually_miss write writeln contained

" Built-in functions are not reserved words, so only match them when
" followed by a parenthesis.
syn match ashFunctionParens "\w\+\s*(" contains=ashFunction transparent

syn match ashComment "\/\/.*$" contains=ashTodo
syn match ashComment "#.*$" contains=ashTodo
syn region ashComment start="/\*" end="\*/" contains=ashTodo
syn keyword ashTodo FIXME TODO XXX contained

syn region ashString start='"' skip='\\"' end='"' oneline
syn region ashString start="'" skip="\\'" end="'" oneline

syn match ashIntegerConstant "\<-\?\d\+\>"
syn match ashFloatConstant "\<-\?\d\+\.\d\+\>"
syn keyword ashBooleanConstant false true

syn keyword ashDataType void boolean int float string buffer class effect element familiar item location monster skill slot stat record

syn match ashConstantName "$\w*" contained
syn match ashConstantValue "[^,]\+" contained nextgroup=ashConstantValue
syn region ashConstantValueList start="\["ms=s+1 end="\]"me=e-1 contained transparent keepend contains=ashConstantValue

syn region ashConstant start="$booleans\?\s*\[" end="\]" contains=ashConstantName, ashConstantValueList transparent keepend
syn region ashConstant start="$ints\?\s*\[" end="\]" contains=ashConstantName, ashConstantValueList transparent keepend
syn region ashConstant start="$floats\?\s*\[" end="\]" contains=ashConstantName, ashConstantValueList transparent keepend
syn region ashConstant start="$class\(es\)\?\s*\[" end="\]" contains=ashConstantName, ashConstantValueList transparent keepend
syn region ashConstant start="$effects\?\s*\[" end="\]" contains=ashConstantName, ashConstantValueList transparent keepend
syn region ashConstant start="$elements\?\s*\[" end="\]" contains=ashConstantName, ashConstantValueList transparent keepend
syn region ashConstant start="$familiars\?\s*\[" end="\]" contains=ashConstantName, ashConstantValueList transparent keepend
syn region ashConstant start="$items\?\s*\[" end="\]" contains=ashConstantName, ashConstantValueList transparent keepend
syn region ashConstant start="$locations\?\s*\[" end="\]" contains=ashConstantName, ashConstantValueList transparent keepend
syn region ashConstant start="$monsters\?\s*\[" end="\]" contains=ashConstantName, ashConstantValueList transparent keepend
syn region ashConstant start="$skills\?\s*\[" end="\]" contains=ashConstantName, ashConstantValueList transparent keepend
syn region ashConstant start="$slots\?\s*\[" end="\]" contains=ashConstantName, ashConstantValueList transparent keepend
syn region ashConstant start="$stats\?\s*\[" end="\]" contains=ashConstantName, ashConstantValueList transparent keepend

syn keyword ashCommand notify call new abort script contains
" Vim keyword, so has to be handled separately
syn match ashCommand "\<sort\>"

syn match ashImportCommand "^import\>" contained
syn region ashImportScript start='<' end='>' keepend oneline
syn region ashImportScript start='"' end='"' keepend oneline
syn region ashImport start='import\s*<' end='>' contains=ashImportCommand, ashImportScript keepend transparent oneline
syn region ashImport start='import\s*"' end='"' contains=ashImportCommand, ashImportScript keepend transparent oneline

syn keyword ashConditional if else switch
syn keyword ashRepeat for foreach repeat until while
syn keyword ashLabel case default
syn keyword ashException try catch
syn keyword ashKeyword return break from in to exit continue

hi link ashConstantName Type
hi link ashDataType Type
hi link ashComment Comment
hi link ashTodo Todo
hi link ashString String
hi link ashConstantValue String
hi link ashImportCommand PreProc 
hi link ashImportScript Todo
hi link ashCommand Keyword
hi link ashConditional Conditional
hi link ashRepeat Repeat
hi link ashLabel Label
hi link ashException Exception
hi link ashKeyword Keyword
hi link ashIntegerConstant Number
hi link ashFloatConstant Number
hi link ashBooleanConstant Constant
hi link ashSingleConstant Constant
hi link ashImportScript String
" This makes everything look like fruit salad, but these are not reserved
" keywords but are also not types.  So, what else to color them as?
hi link ashFunction Function

" This doesn't handle multi-line "$item[]" issues.
syn sync ccomment

let b:current_syntax = "ash"
if main_syntax == "ash"
  unlet main_syntax
endif
