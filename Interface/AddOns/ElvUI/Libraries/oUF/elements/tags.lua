--[[
-- Credits: Vika, Cladhaire, Tekkub
]]

local ns = oUF
local oUF = ns.oUF

local LMH = LibStub("LibMobHealth-4.0")

local _G = _G
local unpack = unpack
local format = string.format
local tinsert, tremove = table.insert, table.remove

local GetComboPoints = GetComboPoints
local GetNumRaidMembers = GetNumRaidMembers
local GetPetHappiness = GetPetHappiness
local GetQuestDifficultyColor = GetQuestDifficultyColor
local GetRaidRosterInfo = GetRaidRosterInfo
local IsResting = IsResting
local UnitCanAttack = UnitCanAttack
local UnitClass = UnitClass
local UnitClassification = UnitClassification
local UnitCreatureFamily = UnitCreatureFamily
local UnitCreatureType = UnitCreatureType
local UnitFactionGroup = UnitFactionGroup
local UnitIsConnected = UnitIsConnected
local UnitIsDead = UnitIsDead
local UnitIsGhost = UnitIsGhost
local UnitIsPVP = UnitIsPVP
local UnitIsPartyLeader = UnitIsPartyLeader
local UnitIsPlayer = UnitIsPlayer
local UnitLevel = UnitLevel
local UnitMana = UnitMana
local UnitManaMax = UnitManaMax
local UnitName = UnitName
local UnitPowerType = UnitPowerType
local UnitRace = UnitRace
local UnitSex = UnitSex

local _PATTERN = "%[..-%]+"

local _ENV = {
	Hex = function(r, g, b)
		if type(r) == "table" then
			if r.r then r, g, b = r.r, r.g, r.b else r, g, b = unpack(r) end
		end
		if not r or type(r) == "string" then
			return "|cffFFFFFF"
		end
		return format("|cff%02x%02x%02x", r*255, g*255, b*255)
	end,
	ColorGradient = oUF.ColorGradient,
}
local _PROXY = setmetatable(_ENV, {__index = _G})

local tagStrings = {
	["creature"] = [[function(u)
		return UnitCreatureFamily(u) or UnitCreatureType(u)
	end]],

	["dead"] = [[function(u)
		if(UnitIsDead(u)) then
			return "Dead"
		elseif(UnitIsGhost(u)) then
			return "Ghost"
		end
	end]],

	["difficulty"] = [[function(u)
		if UnitCanAttack("player", u) then
			local l = UnitLevel(u)
			return Hex(GetQuestDifficultyColor((l > 0) and l or 999))
		end
	end]],

	["leader"] = [[function(u)
		if(UnitIsPartyLeader(u)) then
			return "L"
		end
	end]],

	["leaderlong"] = [[function(u)
		if(UnitIsPartyLeader(u)) then
			return "Leader"
		end
	end]],

	["level"] = [[function(u)
		local l = UnitLevel(u)
		if(l > 0) then
			return l
		else
			return "??"
		end
	end]],

	["missinghp"] = [[function(u)
		local current = LMH:GetUnitMaxHP(u) - LMH:GetUnitCurrentHP(u)
		if(current > 0) then
			return current
		end
	end]],

	["missingpp"] = [[function(u)
		local current = UnitManaMax(u) - UnitMana(u)
		if(current > 0) then
			return current
		end
	end]],

	["name"] = [[function(u, r)
		return UnitName(r or u)
	end]],

	["offline"] = [[function(u)
		if(not UnitIsConnected(u)) then
			return "Offline"
		end
	end]],

	["perhp"] = [[function(u)
		local m = LMH:GetUnitMaxHP(u)
		if(m == 0) then
			return 0
		else
			return math.floor(LMH:GetUnitCurrentHP(u)/m*100+.5)
		end
	end]],

	["perpp"] = [[function(u)
		local m = UnitManaMax(u)
		if(m == 0) then
			return 0
		else
			return math.floor(UnitMana(u)/m*100+.5)
		end
	end]],

	["plus"] = [[function(u)
		local c = UnitClassification(u)
		if(c == "elite" or c == "rareelite") then
			return "+"
		end
	end]],

	["pvp"] = [[function(u)
		if(UnitIsPVP(u)) then
			return "PvP"
		end
	end]],

	["raidcolor"] = [[function(u)
		local _, x = UnitClass(u)
		if(x) then
			return Hex(_COLORS.class[x])
		end
	end]],

	["rare"] = [[function(u)
		local c = UnitClassification(u)
		if(c == "rare" or c == "rareelite") then
			return "Rare"
		end
	end]],

	["resting"] = [[function(u)
		if(u == "player" and IsResting()) then
			return "zzz"
		end
	end]],

	["sex"] = [[function(u)
		local s = UnitSex(u)
		if(s == 2) then
			return "Male"
		elseif(s == 3) then
			return "Female"
		end
	end]],

	["smartclass"] = [[function(u)
		if(UnitIsPlayer(u)) then
			return _TAGS["class"](u)
		end

		return _TAGS["creature"](u)
	end]],

	["status"] = [[function(u)
		if(UnitIsDead(u)) then
			return "Dead"
		elseif(UnitIsGhost(u)) then
			return "Ghost"
		elseif(not UnitIsConnected(u)) then
			return "Offline"
		else
			return _TAGS["resting"](u)
		end
	end]],

	["cpoints"] = [[function(u)
		local cp = GetComboPoints("player", "target")
		if(cp > 0) then
			return cp
		end
	end]],

	["smartlevel"] = [[function(u)
		local c = UnitClassification(u)
		if(c == "worldboss") then
			return "Boss"
		else
			local plus = _TAGS["plus"](u)
			local level = _TAGS["level"](u)
			if(plus) then
				return level .. plus
			else
				return level
			end
		end
	end]],

	["classification"] = [[function(u)
		local c = UnitClassification(u)
		if(c == "rare") then
			return "Rare"
		elseif(c == "rareelite") then
			return "Rare Elite"
		elseif(c == "elite") then
			return "Elite"
		elseif(c == "worldboss") then
			return "Boss"
		end
	end]],

	["shortclassification"] = [[function(u)
		local c = UnitClassification(u)
		if(c == "rare") then
			return "R"
		elseif(c == "rareelite") then
			return "R+"
		elseif(c == "elite") then
			return "+"
		elseif(c == "worldboss") then
			return "B"
		end
	end]],

	["group"] = [[function(unit)
		local name, server = UnitName(unit)
		if(server and server ~= "") then
			name = format("%s-%s", name, server)
		end

		for i=1, GetNumRaidMembers() do
			local raidName, _, group = GetRaidRosterInfo(i)
			if(raidName == name) then
				return group
			end
		end
	end]],

	["deficit:name"] = [[function(u)
		local missinghp = _TAGS["missinghp"](u)
		if(missinghp) then
			return "-" .. missinghp
		else
			return _TAGS["name"](u)
		end
	end]],

	["curmana"] = [[function(unit)
		return UnitMana(unit, SPELL_POWER_MANA)
	end]],

	["maxmana"] = [[function(unit)
		return UnitManaMax(unit, SPELL_POWER_MANA)
	end]],

	["happiness"] = [[function(u)
		if(UnitIsUnit(u, "pet")) then
			local happiness = GetPetHappiness()
			if(happiness == 1) then
				return ":<"
			elseif(happiness == 2) then
				return ":|"
			elseif(happiness == 3) then
				return ":D"
			end
		end
	end]],

	["powercolor"] = [[function(u)
		local pType, pToken, altR, altG, altB = UnitPowerType(u)
		local t = _COLORS.power[pToken]

		if(not t) then
			if(altR) then
				if(altR > 1 or altG > 1 or altB > 1) then
					return Hex(altR / 255, altG / 255, altB / 255)
				else
					return Hex(altR, altG, altB)
				end
			else
				return Hex(_COLORS.power[pType])
			end
		end

		return Hex(t)
	end]],
}

local tags = setmetatable(
	{
		curhp = function(unit) return LMH:GetUnitCurrentHP(unit) end,
		curpp = UnitMana,
		maxhp = function(unit) return LMH:GetUnitMaxHP(unit) end,
		maxpp = UnitManaMax,
		class = UnitClass,
		faction = UnitFactionGroup,
		race = UnitRace,
	},

	{
		__index = function(self, key)
			local tagFunc = tagStrings[key]
			if(tagFunc) then
				local func, err = loadstring("return " .. tagFunc)
				if(func) then
					func = func()

					-- Want to trigger __newindex, so no rawset.
					self[key] = func
					tagStrings[key] = nil

					return func
				else
					error(err, 3)
				end
			end
		end,
		__newindex = function(self, key, val)
			if(type(val) == "string") then
				tagStrings[key] = val
			elseif(type(val) == "function") then
				-- So we don't clash with any custom envs.
				if(getfenv(val) == _G) then
					setfenv(val, _PROXY)
				end

				rawset(self, key, val)
			end
		end,
	}
)

_ENV._TAGS = tags

local tagEvents = {
	["curhp"]				= "UNIT_HEALTH",
	["maxhp"]				= "UNIT_MAXHEALTH",
	["curpp"]				= "UNIT_ENERGY UNIT_FOCUS UNIT_MANA UNIT_RAGE",
	["maxpp"]				= "UNIT_MAXENERGY UNIT_MAXFOCUS UNIT_MAXMANA UNIT_MAXRAGE",
	["dead"]				= "UNIT_HEALTH",
	["leader"]				= "PARTY_LEADER_CHANGED",
	["leaderlong"]			= "PARTY_LEADER_CHANGED",
	["level"]				= "UNIT_LEVEL PLAYER_LEVEL_UP",
	["missinghp"]			= "UNIT_HEALTH UNIT_MAXHEALTH",
	["missingpp"]			= "UNIT_MAXENERGY UNIT_MAXFOCUS UNIT_MAXMANA UNIT_MAXRAGE UNIT_ENERGY UNIT_FOCUS UNIT_MANA UNIT_RAGE",
	["name"]				= "UNIT_NAME_UPDATE",
	["offline"]				= "UNIT_HEALTH",
	["perhp"]				= "UNIT_HEALTH UNIT_MAXHEALTH",
	["perpp"]				= "UNIT_MAXENERGY UNIT_MAXFOCUS UNIT_MAXMANA UNIT_MAXRAGE UNIT_ENERGY UNIT_FOCUS UNIT_MANA UNIT_RAGE",
	["plus"]				= "UNIT_CLASSIFICATION_CHANGED",
	["pvp"]					= "UNIT_FACTION",
	["rare"]				= "UNIT_CLASSIFICATION_CHANGED",
	["resting"]				= "PLAYER_UPDATE_RESTING",
	["status"]				= "UNIT_HEALTH PLAYER_UPDATE_RESTING",
	["cpoints"]				= "PLAYER_COMBO_POINTS PLAYER_TARGET_CHANGED",
	["smartlevel"]			= "UNIT_LEVEL PLAYER_LEVEL_UP UNIT_CLASSIFICATION_CHANGED",
	["classification"]		= "UNIT_CLASSIFICATION_CHANGED",
	["shortclassification"]	= "UNIT_CLASSIFICATION_CHANGED",
	["group"]				= "PARTY_MEMBERS_CHANGED RAID_ROSTER_UPDATE",
	["curmana"]				= "UNIT_MANA UNIT_MAXMANA",
	["maxmana"]				= "UNIT_MANA UNIT_MAXMANA",
	["happiness"]			= "UNIT_HAPPINESS",
	["powercolor"]			= "UNIT_DISPLAYPOWER",
}

local unitlessEvents = {
	PLAYER_LEVEL_UP = true,
	PLAYER_UPDATE_RESTING = true,
	PLAYER_TARGET_CHANGED = true,

	RAID_ROSTER_UPDATE = true,
	PARTY_MEMBERS_CHANGED = true,
	PARTY_LEADER_CHANGED = true,

	PLAYER_COMBO_POINTS = true,
}

local events = {}
local frame = CreateFrame"Frame"
frame:SetScript("OnEvent", function(self, event, unit)
	local strings = events[event]
	if(strings) then
		for k, fontstring in next, strings do
			if(fontstring:IsVisible() and (unitlessEvents[event] or fontstring.parent.unit == unit)) then
				fontstring:UpdateTag()
			end
		end
	end
end)

local OnUpdates = {}
local eventlessUnits = {}

local createOnUpdate = function(timer)
	local OnUpdate = OnUpdates[timer]

	if(not OnUpdate) then
		local total = timer
		local frame = CreateFrame("Frame")
		local strings = eventlessUnits[timer]

		frame:SetScript("OnUpdate", function(self, elapsed)
			if(total >= timer) then
				for k, fs in next, strings do
					if(fs.parent:IsVisible() and UnitExists(fs.parent.unit)) then
						fs:UpdateTag()
					end
				end

				total = 0
			end

			total = total + elapsed
		end)

		OnUpdates[timer] = frame
	end
end

local OnShow = function(self)
	for _, fs in next, self.__tags do
		fs:UpdateTag()
	end
end

local getTagName = function(tag)
	local s = (tag:match(">+()") or 2)
	local e = tag:match(".*()<+")
	e = (e and e - 1) or -2

	return tag:sub(s, e), s, e
end

local RegisterEvent = function(fontstr, event)
	if(not events[event]) then events[event] = {} end

	frame:RegisterEvent(event)
	tinsert(events[event], fontstr)
end

local RegisterEvents = function(fontstr, tagstr)
	for tag in tagstr:gmatch(_PATTERN) do
		tag = getTagName(tag)
		local tagevents = tagEvents[tag]
		if(tagevents) then
			for event in tagevents:gmatch("%S+") do
				RegisterEvent(fontstr, event)
			end
		end
	end
end

local UnregisterEvents = function(fontstr)
	for event, data in pairs(events) do
		for k, tagfsstr in pairs(data) do
			if(tagfsstr == fontstr) then
				if(#data == 1) then
					frame:UnregisterEvent(event)
				end

				tremove(data, k)
			end
		end
	end
end

local OnEnter = function(self)
	for _, fs in pairs(self.__mousetags) do
		fs:SetAlpha(1)
	end
end

local OnLeave = function(self)
	for _, fs in pairs(self.__mousetags) do
		fs:SetAlpha(0)
	end
end

local escapeSequences = {
	["||c"] = "|c",
	["||r"] = "|r",
	["||T"] = "|T",
	["||t"] = "|t",
}

local onUpdateDelay = {}
local tagPool = {}
local funcPool = {}
local tmp = {}

local Tag = function(self, fs, tagstr)
	if(not fs or not tagstr) then return end

	if(not self.__tags) then
		self.__tags = {}
		self.__mousetags = {}
		tinsert(self.__elements, OnShow)
	else
		-- Since people ignore everything that's good practice - unregister the tag
		-- if it already exists.
		for _, tag in pairs(self.__tags) do
			if(fs == tag) then
				-- We don't need to remove it from the __tags table as Untag handles
				-- that for us.
				self:Untag(fs)
			end
		end
	end

	fs.parent = self

	for escapeSequence, replacement in pairs(escapeSequences) do
		while tagstr:find(escapeSequence) do
			tagstr = tagstr:gsub(escapeSequence, replacement)
		end
	end

	if tagstr:find("%[mouseover%]") then
		tinsert(self.__mousetags, fs)
		fs:SetAlpha(0)
		if not self.__HookFunc then
			self:HookScript("OnEnter", OnEnter)
			self:HookScript("OnLeave", OnLeave)
			self.__HookFunc = true;
		end
		tagstr = tagstr:gsub("%[mouseover%]", "")
	else
		for index, fontString in pairs(self.__mousetags) do
			if fontString == fs then
				self.__mousetags[index] = nil;
				fs:SetAlpha(1)
			end
		end
	end

	local containsOnUpdate
	for tag in tagstr:gmatch(_PATTERN) do
		if not tagEvents[tag:sub(2, -2)] then
			containsOnUpdate = onUpdateDelay[tag:sub(2, -2)] or 0.15;
		end
	end

	local func = tagPool[tagstr]
	if(not func) then
		local format, numTags = tagstr:gsub("%%", "%%%%"):gsub(_PATTERN, "%%s")
		local args = {}

		for bracket in tagstr:gmatch(_PATTERN) do
			local tagFunc = funcPool[bracket] or tags[bracket:sub(2, -2)]
			if(not tagFunc) then
				local tagName, s, e = getTagName(bracket)

				local tag = tags[tagName]
				if(tag) then
					s = s - 2
					e = e + 2

					if(s ~= 0 and e ~= 0) then
						local pre = bracket:sub(2, s)
						local ap = bracket:sub(e, -2)

						tagFunc = function(u,r)
							local str = tag(u,r)
							if(str) then
								return pre..str..ap
							end
						end
					elseif(s ~= 0) then
						local pre = bracket:sub(2, s)

						tagFunc = function(u,r)
							local str = tag(u,r)
							if(str) then
								return pre..str
							end
						end
					elseif(e ~= 0) then
						local ap = bracket:sub(e, -2)

						tagFunc = function(u,r)
							local str = tag(u,r)
							if(str) then
								return str..ap
							end
						end
					end

					funcPool[bracket] = tagFunc
				end
			end

			if(tagFunc) then
				tinsert(args, tagFunc)
			else
				numTags = -1
				func = function(self)
					return self:SetText(bracket)
				end
			end
		end

		if(numTags == 1) then
			func = function(self)
				local parent = self.parent
				local realUnit
				if(self.overrideUnit) then
					realUnit = parent.realUnit
				end

				_ENV._COLORS = parent.colors
				return self:SetFormattedText(
					format,
					args[1](parent.unit, realUnit) or ""
				)
			end
		elseif(numTags == 2) then
			func = function(self)
				local parent = self.parent
				local unit = parent.unit
				local realUnit
				if(self.overrideUnit) then
					realUnit = parent.realUnit
				end

				_ENV._COLORS = parent.colors
				return self:SetFormattedText(
					format,
					args[1](unit, realUnit) or "",
					args[2](unit, realUnit) or ""
				)
			end
		elseif(numTags == 3) then
			func = function(self)
				local parent = self.parent
				local unit = parent.unit
				local realUnit
				if(self.overrideUnit) then
					realUnit = parent.realUnit
				end

				_ENV._COLORS = parent.colors
				return self:SetFormattedText(
					format,
					args[1](unit, realUnit) or "",
					args[2](unit, realUnit) or "",
					args[3](unit, realUnit) or ""
				)
			end
		elseif numTags ~= -1 then
			func = function(self)
				local parent = self.parent
				local unit = parent.unit
				local realUnit
				if(self.overrideUnit) then
					realUnit = parent.realUnit
				end

				_ENV._COLORS = parent.colors
				for i, func in next, args do
					tmp[i] = func(unit, realUnit) or ""
				end

				-- We do 1, numTags because tmp can hold several unneeded variables.
				return self:SetFormattedText(format, unpack(tmp, 1, numTags))
			end
		end

		if numTags ~= -1 then
			tagPool[tagstr] = func
		end
	end
	fs.UpdateTag = func

	local unit = self.unit
	if(self.__eventless or fs.frequentUpdates) or containsOnUpdate then
		local timer
		if(type(fs.frequentUpdates) == "number") then
			timer = fs.frequentUpdates
		elseif containsOnUpdate then
			timer = containsOnUpdate
		else
			timer = .5
		end

		if(not eventlessUnits[timer]) then eventlessUnits[timer] = {} end
		tinsert(eventlessUnits[timer], fs)

		createOnUpdate(timer)
	else
		RegisterEvents(fs, tagstr)
	end

	tinsert(self.__tags, fs)
end

local Untag = function(self, fs)
	if(not fs) then return end

	UnregisterEvents(fs)
	for _, timers in next, eventlessUnits do
		for k, fontstr in next, timers do
			if(fs == fontstr) then
				tremove(timers, k)
			end
		end
	end

	for k, fontstr in next, self.__tags do
		if(fontstr == fs) then
			tremove(self.__tags, k)
		end
	end

	fs.UpdateTag = nil
end

oUF.Tags = {
	Methods = tags,
	Events = tagEvents,
	SharedEvents = unitlessEvents,
	OnUpdateThrottle = onUpdateDelay,
}

oUF:RegisterMetaFunction("Tag", Tag)
oUF:RegisterMetaFunction("Untag", Untag)