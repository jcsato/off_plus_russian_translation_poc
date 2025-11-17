::mods_hookExactClass("skills/backgrounds/assassin_background", function(ab) {
	local getGoodEnding = ::mods_getMember(ab, "getGoodEnding");
	local getBadEnding = ::mods_getMember(ab, "getBadEnding");

	::mods_override(ab, "getGoodEnding", function() {
		if (("State" in World) && World.State != null && World.Assets.getOrigin() != null && World.Assets.getOrigin().getID() == "scenario.southern_assassins")
			return "%name% присоединился к компании, уже хорошо разбирающейся в искусстве ассасинов, и несмотря на всё время, проведённое среди теневых убийц, он всё равно сумел тебя выпугать. Несмотря ни на что, он боролся за %companyname% в радости и радости, и сражался достойно. Последнее, что вы слышали, убийца покинул компанию и с тех пор его никто не видел и не слышал. До сих пор ты не понимаешь, каковы были его причины, по которым он присоединился.";
		else
			return getGoodEnding();
	})

	::mods_override(ab, "getBadEnding", function() {
		if (("State" in World) && World.State != null && World.Assets.getOrigin() != null && World.Assets.getOrigin().getID() == "scenario.southern_assassins")
			return "%name% присоединился к компании, уже хорошо разбираясь в искусстве ассасинов, и несмотря на всё время, проведённое среди теневых убийц, он всё равно сумел тебя вывести из колеи. Несмотря ни на что, он боролся за %companyname% в радости и радости, и сражался достойно. Последнее, что вы слышали, убийца покинул компанию и с тех пор его никто не видел и не слышал. Однако вы слышали тревожные сообщения о том, что южные гильдии убийц полностью исчезли, без тел, а лишь слухи о месте в капюшоне северяне, связывающих эти исчезновения.";
		else
			return getBadEnding();
	})
});
