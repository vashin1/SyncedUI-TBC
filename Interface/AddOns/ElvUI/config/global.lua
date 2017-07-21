local E, L, V, P, G = unpack(ElvUI);

G["general"] = {
	["autoScale"] = true,
	["minUiScale"] = 0.64,
	["eyefinity"] = false,
	["smallerWorldMap"] = true,
	["WorldMapCoordinates"] = {
		["enable"] = true,
		["position"] = "BOTTOMLEFT",
		["xOffset"] = 0,
		["yOffset"] = 0
	},
	["versionCheck"] = true
};

G["chat"] = {
	["classColorMentionExcludedNames"] = {}
}

G["classCache"] = {}

G["classtimer"] = {};

G["nameplates"] = {};

G["unitframe"] = {
	["aurafilters"] = {},
	["buffwatch"] = {}
};

G["bags"] = {
	["ignoredItems"] = {}
};