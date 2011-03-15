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
syn keyword ashFunction abort add_item_condition adv1 adventure contained
syn keyword ashFunction appearance_rates append append_replacement contained
syn keyword ashFunction append_tail attack autosell autosell_price contained
syn keyword ashFunction available_amount batch_close batch_open contained
syn keyword ashFunction black_market_available boolean_modifier contained
syn keyword ashFunction boolean_modifier buffed_hit_stat buy buy contained
syn keyword ashFunction can_drink can_eat can_equip can_interact ceil contained
syn keyword ashFunction chamber change_mcd char_at chat_clan contained
syn keyword ashFunction chat_clan chat_macro chat_notify chat_private contained
syn keyword ashFunction class_modifier class_modifier clear contained
syn keyword ashFunction cli_execute closet_amount contained
syn keyword ashFunction combat_mana_cost_modifier contained
syn keyword ashFunction combat_rate_modifier contains_text council contained
syn keyword ashFunction count craft creatable_amount create contained
syn keyword ashFunction create_matcher current_hit_stat current_mcd contained
syn keyword ashFunction daily_special damage_absorption_percent contained
syn keyword ashFunction damage_reduction delete disable contained
syn keyword ashFunction dispensary_available display_amount drink eat contained
syn keyword ashFunction eatsilent effect_modifier effect_modifier contained
syn keyword ashFunction elemental_resistance elemental_resistance contained
syn keyword ashFunction enable end enthrone_familiar entity_decode contained
syn keyword ashFunction entity_encode entryway equip equipped_amount contained
syn keyword ashFunction equipped_item expected_damage contained
syn keyword ashFunction experience_bonus expression_eval contained
syn keyword ashFunction extract_items extract_meat familiar_equipment contained
syn keyword ashFunction familiar_equipped_equipment familiar_weight contained
syn keyword ashFunction file_to_map find floor form_field contained
syn keyword ashFunction fullness_limit galaktik_cures_discounted contained
syn keyword ashFunction gameday_to_int gameday_to_string contained
syn keyword ashFunction get_campground get_ccs_action get_auto_attack contained
syn keyword ashFunction get_counters get_dwelling get_ingredients contained
syn keyword ashFunction get_inventory get_monsters get_power contained
syn keyword ashFunction get_property get_related get_revision contained
syn keyword ashFunction get_version group group_count group_string contained
syn keyword ashFunction guardians guild_store_available contained
syn keyword ashFunction have_bartender have_chef have_display contained
syn keyword ashFunction have_effect have_equipped have_familiar contained
syn keyword ashFunction have_mushroom_plot have_outfit have_shop contained
syn keyword ashFunction have_skill hedgemaze hermit contained
syn keyword ashFunction hidden_temple_unlocked hippy_store_available contained
syn keyword ashFunction historical_age historical_price in_bad_moon contained
syn keyword ashFunction in_hardcore in_moxie_sign in_muscle_sign contained
syn keyword ashFunction in_mysticality_sign index_of inebriety_limit contained
syn keyword ashFunction initiative_modifier insert is_displayable contained
syn keyword ashFunction is_giftable is_goal is_integer is_npc_item contained
syn keyword ashFunction is_online is_tradeable item_amount contained
syn keyword ashFunction item_drop_modifier item_drops contained
syn keyword ashFunction item_drops_array item_type last_index_of contained
syn keyword ashFunction last_monster length load_html logprint contained
syn keyword ashFunction mall_price mana_cost_modifier map_to_file max contained
syn keyword ashFunction max maximize maximize meat_drop contained
syn keyword ashFunction meat_drop_modifier min min mmg_bet_amount contained
syn keyword ashFunction mmg_bet_owner mmg_bet_owner_id mmg_bet_taker contained
syn keyword ashFunction mmg_bet_taker_id mmg_bet_winnings contained
syn keyword ashFunction mmg_make_bet mmg_my_bets mmg_offered_bets contained
syn keyword ashFunction mmg_retract_bet mmg_search mmg_take_bet contained
syn keyword ashFunction mmg_visit mmg_wait_event modifier_eval contained
syn keyword ashFunction monster_attack monster_defense contained
syn keyword ashFunction monster_element monster_eval monster_hp contained
syn keyword ashFunction monster_level_adjustment moon_light contained
syn keyword ashFunction moon_phase mp_cost my_adventures contained
syn keyword ashFunction my_ascensions my_basestat my_buffedstat contained
syn keyword ashFunction my_class my_closet_meat my_daycount contained
syn keyword ashFunction my_enthroned_familiar my_familiar my_fullness contained
syn keyword ashFunction my_hash my_hp my_id my_inebriety my_level contained
syn keyword ashFunction my_location my_maxhp my_maxmp my_meat my_mp contained
syn keyword ashFunction my_name my_primestat my_spleen_use contained
syn keyword ashFunction my_turncount now_to_string numeric_modifier contained
syn keyword ashFunction numeric_modifier numeric_modifier contained
syn keyword ashFunction numeric_modifier numeric_modifier outfit contained
syn keyword ashFunction outfit_pieces overdrink print print_html contained
syn keyword ashFunction pulls_remaining put_closet put_display contained
syn keyword ashFunction put_shop put_stash random contained
syn keyword ashFunction raw_damage_absorption refresh_stash contained
syn keyword ashFunction refresh_status remove_item_condition replace contained
syn keyword ashFunction replace_all replace_first replace_string contained
syn keyword ashFunction replace_string reset restore_hp restore_mp contained
syn keyword ashFunction retrieve_item round run_combat runaway contained
syn keyword ashFunction session_logs set_auto_attack set_length contained
syn keyword ashFunction set_location set_property shop_amount contained
syn keyword ashFunction spleen_limit split_string square_root start contained
syn keyword ashFunction stash_amount stat_bonus_today contained
syn keyword ashFunction stat_bonus_tomorrow stat_modifier steal contained
syn keyword ashFunction stills_available storage_amount contained
syn keyword ashFunction string_modifier string_modifier substring contained
syn keyword ashFunction take_closet take_display take_stash contained
syn keyword ashFunction take_storage tavern throw_items contained
syn keyword ashFunction time_to_string to_boolean to_class to_effect contained
syn keyword ashFunction to_effect to_effect to_element to_familiar contained
syn keyword ashFunction to_familiar to_float to_int to_item to_item contained
syn keyword ashFunction to_item to_location to_location to_lower_case contained
syn keyword ashFunction to_monster to_plural to_skill to_skill contained
syn keyword ashFunction to_skill to_slot to_stat to_string contained
syn keyword ashFunction to_upper_case to_url today_to_string truncate contained
syn keyword ashFunction turns_per_cast turns_played url_decode contained
syn keyword ashFunction url_encode use use_familiar use_skill contained
syn keyword ashFunction use_skill user_confirm visit_url visit_url contained
syn keyword ashFunction visit_url wait waitq weapon_hands weapon_type contained
syn keyword ashFunction weight_adjustment white_citadel_available contained
syn keyword ashFunction who_clan will_usually_dodge will_usually_miss contained
syn keyword ashFunction write writeln contained

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
