::mods_registerMod("off_plus_russian_translation_poc", 0.1, "Of Flesh and Faith+ - Russian Translation Proof of Concept");

::mods_queue("off_plus_russian_translation_poc", "of_flesh_and_faith_plus", function() {
	::include("script_hooks/!offp_r_h_helpers");
	::include("script_hooks/offp_r_h_anatomists");
	::include("script_hooks/offp_r_h_assassin_retirement");
	::include("script_hooks/offp_r_h_legendary_events");
	::include("script_hooks/offp_r_h_oath_effects");
	::include("script_hooks/offp_r_h_oathtakers_events");
	::include("script_hooks/offp_r_s_assassin_master_follower");
	::include("script_hooks/offp_r_s_barbarian_runeblade");
	::include("script_hooks/offp_r_s_oathtakers_intro_event");
	::include("script_hooks/offp_r_s_offp_anatomist_vs_oathtaker_event");
	::include("script_hooks/offp_r_s_offp_anatomists_experimental_integrity_event");
	::include("script_hooks/offp_r_s_offp_dead_necromancer_event");
});
