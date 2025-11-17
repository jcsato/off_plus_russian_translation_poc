::mods_hookNewObject("retinue/followers/assassin_master_follower.nut", function(amf) {
	amf.m.Name = "Гроссмейстер";
	amf.m.Description = "Грандмастер — эксперт боевых искусств южных гильдий. Хотя, чтобы сравниться с ним в мастерстве, потребовалась бы почти вся жизнь, у него ещё многому можно научиться.";
	amf.m.Effects[0] = "Ваши люди изучают специальность убийцы на 5-м уровне вместо получения очка способностей.";
	amf.m.Effects[1] = "Ваши люди принимают философию убийства на 8 уровне вместо того, чтобы получить очко способностей.";
	amf.m.Requirements[0].Text = "Вы — доверенный убийца южных гильдий."

	local getTooltip = amf.getTooltip;

	amf.getTooltip = function() {
		local ret = getTooltip();

		ret.pop();
		ret.push({ id = 1, type = "warning", icon = "ui/icons/warning.png", text = "Не подлежит замене" });
		return ret;
	};
});
