::OFFP.Helpers.getManagementScreenTooltip = function(skill) {
	local ret = skill.getTooltip();

	if (skill.getID().find("_completed") != null)
		ret.apply(@(tooltip) tooltip.type == "description" ? { id = 2, type = "description", text = "Соблюдение этой клятвы приведёт к следующим последствиям:" } : tooltip);

	return ret;
};
