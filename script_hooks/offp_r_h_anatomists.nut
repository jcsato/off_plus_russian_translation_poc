::mods_hookExactClass("items/misc/anatomist/research_notes_legendary_item", function(rnli) {
	local getTooltip = ::mods_getMember(rnli, "getTooltip");

	::mods_override(rnli, "getTooltip", function() {
		local ret = getTooltip();

		if (World.Statistics.getFlags().get("isConquererPotionDiscovered"))
			ret.push({ id = 15, type = "text", icon = "ui/icons/special.png", text = "Завоеватель: Душа падших"});

		return ret;
	});
});