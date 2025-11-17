::mods_hookExactClass("skills/actives/recover_skill", function(rs) {
	local getTooltip = ::mods_getMember(rs, "getTooltip");

	::mods_override(rs, "getTooltip", function() {
		local ret = getTooltip();

		if (getContainer().getActor().getSkills().hasSkill("effects.oath_of_endurance_completed")) {
			ret.pop();
			ret.push({ id = 7, type = "text", icon = "ui/icons/special.png", text = "Усталость тока снижается на [color=" + Const.UI.Color.PositiveValue + "]66%[/color]" });
		}

		return ret;
	});
});

::mods_hookExactClass("skills/actives/knock_back", function(kb) {
	local getTooltip = ::mods_getMember(kb, "getTooltip");

	::mods_override(kb, "getTooltip", function() {
		local ret = getTooltip();

		if (getContainer().getActor().getSkills().hasSkill("effects.oath_of_fortification_completed"))
			ret.push({ id = 7, type = "text", icon = "ui/icons/special.png", text = "У него [color=" + Const.UI.Color.PositiveValue + "]" + ::OFFP.Oathtakers.Boons.FortificationStunChance + "%[/color] шанс оглушить при попадании" });

		return ret;
	});
});

::mods_hookBaseClass("skills/skill", function(s) {
	while (!("getDefaultTooltip" in s)) s = s[s.SuperName];
	local getDefaultTooltip = s.getDefaultTooltip;

	s.getDefaultTooltip = function() {
		local ret = getDefaultTooltip();

		if (m.Container.getActor().getSkills().hasSkill("effects.oath_of_honor_active") && ((m.IsWeaponSkill && m.IsRanged) || (m.IsOffensiveToolSkill))) {
			// Remove base OFF+ warning
			ret.pop();
			ret.push( { id = 9, type = "hint", icon = "ui/tooltips/warning.png", text = "[color=" + Const.UI.Color.NegativeValue + "]Нельзя использовать, потому что этот персонаж дал клятву, запрещающую использовать дальнобойное оружие или инструменты[/color]" } );
		}

		return ret;
	}

	while (!("getDefaultUtilityTooltip" in s)) s = s[s.SuperName];
	local getDefaultUtilityTooltip = s.getDefaultUtilityTooltip;

	s.getDefaultUtilityTooltip = function() {
		local ret = getDefaultUtilityTooltip();

		if (m.Container.getActor().getSkills().hasSkill("effects.oath_of_honor_active") && ((m.IsWeaponSkill && m.IsRanged) || (m.IsOffensiveToolSkill))) {
			// Remove base OFF+ warning
			ret.pop();
			ret.push( { id = 9, type = "hint", icon = "ui/tooltips/warning.png", text = "[color=" + Const.UI.Color.NegativeValue + "]Нельзя использовать, потому что этот персонаж дал клятву, запрещающую использовать дальнобойное оружие или инструменты[/color]" } );
		}

		return ret;
	}
});
