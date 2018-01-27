local E, L, V, P, G = unpack(ElvUI); --Import: Engine, Locales, PrivateDB, ProfileDB, GlobalDB
local UF = E:GetModule("UnitFrames");

local ns = oUF
local ElvUF = ns.oUF
assert(ElvUF, "ElvUI was unable to locate oUF.")

--Cache global variables
--Lua functions
local max = math.max
--WoW API / Variables
local CreateFrame = CreateFrame
local InCombatLockdown = InCombatLockdown
local RegisterStateDriver = RegisterStateDriver

function UF:Construct_AssistFrames()
	self:SetScript("OnEnter", UnitFrame_OnEnter)
	self:SetScript("OnLeave", UnitFrame_OnLeave)

	self.RaisedElementParent = CreateFrame("Frame", nil, self)
	self.RaisedElementParent.TextureParent = CreateFrame("Frame", nil, self.RaisedElementParent)
	self.RaisedElementParent:SetFrameLevel(self:GetFrameLevel() + 100)

	self.Health = UF:Construct_HealthBar(self, true)
	self.Name = UF:Construct_NameText(self)
	self.ThreatIndicator = UF:Construct_Threat(self)
	self.RaidTargetIndicator = UF:Construct_RaidIcon(self)
	self.Range = UF:Construct_Range(self)

	if not self.isChild then
		self:SetAttribute("initial-width", UF.db["units"]["assist"].width)
		self:SetAttribute("initial-height", UF.db["units"]["assist"].height)

		self.Buffs = UF:Construct_Buffs(self)
		self.Debuffs = UF:Construct_Debuffs(self)
		self.AuraWatch = UF:Construct_AuraWatch(self)
		self.RaidDebuffs = UF:Construct_RaidDebuffs(self)
		self.DebuffHighlight = UF:Construct_DebuffHighlight(self)

		self.unitframeType = "assist"
	else
		self:SetAttribute("initial-width", UF.db["units"]["assist"].targetsGroup.width)
		self:SetAttribute("initial-height", UF.db["units"]["assist"].targetsGroup.height)

		self.unitframeType = "assisttarget"
	end

	UF:Update_StatusBars()
	UF:Update_FontStrings()

	self.originalParent = self:GetParent()

	UF:Update_AssistFrames(self, UF.db["units"]["assist"])

	return self
end

function UF:Update_AssistHeader(header, db)
	header:Hide()
	header.db = db

	RegisterStateDriver(header, "visibility", "show")
	RegisterStateDriver(header, "visibility", "[target=raid1,exists] show;hide")

	local width, height = header:GetSize()
	header.dirtyWidth, header.dirtyHeight = width, max(height, db.height)

	if not header.positioned then
		header:ClearAllPoints()
		header:Point("TOPLEFT", E.UIParent, "TOPLEFT", 4, -248)
		E:CreateMover(header, header:GetName().."Mover", L["MA Frames"], nil, nil, nil, "ALL,RAID")
		header.mover.positionOverride = "TOPLEFT"
		header:SetAttribute("minHeight", header.dirtyHeight)
		header:SetAttribute("minWidth", header.dirtyWidth)
		header.positioned = true
	end
end

function UF:Update_AssistFrames(frame, db)
	frame.db = db
	frame.colors = ElvUF.colors
	frame:RegisterForClicks(self.db.targetOnMouseDown and "AnyDown" or "AnyUp")

	do
		frame.ORIENTATION = db.orientation --allow this value to change when unitframes position changes on screen?
		if self.thinBorders then
			frame.SPACING = 0
			frame.BORDER = E.mult
		else
			frame.BORDER = E.Border
			frame.SPACING = E.Spacing
		end
		frame.SHADOW_SPACING = 3

		frame.UNIT_WIDTH = db.width
		frame.UNIT_HEIGHT = db.height

		frame.USE_POWERBAR = false
		frame.POWERBAR_DETACHED = false
		frame.USE_INSET_POWERBAR = false
		frame.USE_MINI_POWERBAR = false
		frame.USE_POWERBAR_OFFSET = false
		frame.POWERBAR_OFFSET = 0
		frame.POWERBAR_HEIGHT = 0
		frame.POWERBAR_WIDTH = 0

		frame.USE_PORTRAIT = false
		frame.USE_PORTRAIT_OVERLAY = false
		frame.PORTRAIT_WIDTH = 0

		frame.CLASSBAR_YOFFSET = 0
		frame.BOTTOM_OFFSET = 0

		frame.VARIABLES_SET = true
	end

	if frame.isChild and frame.originalParent then
		local childDB = db.targetsGroup
		frame.db = db.targetsGroup
		if not frame.originalParent.childList then
			frame.originalParent.childList = {}
		end
		frame.originalParent.childList[frame] = true

		if not InCombatLockdown() then
			if childDB.enable then
				frame:SetParent(frame.originalParent)
				RegisterUnitWatch(frame)
				frame:Size(childDB.width, childDB.height)
				frame:ClearAllPoints()
				frame:Point(E.InversePoints[childDB.anchorPoint], frame.originalParent, childDB.anchorPoint, childDB.xOffset, childDB.yOffset)
			else
				UnregisterUnitWatch(frame)
				frame:SetParent(E.HiddenFrame)
			end
		end
	elseif not InCombatLockdown() then
		frame:Size(frame.UNIT_WIDTH, frame.UNIT_HEIGHT)
	end

	--Health
	UF:Configure_HealthBar(frame)

	--Threat
	UF:Configure_Threat(frame)

	--Name
	do
		local name = frame.Name
		name:Point("CENTER", frame.Health, "CENTER")
		if UF.db.colors.healthclass then
			frame:Tag(name, "[name:medium]")
		else
			frame:Tag(name, "[namecolor][name:medium]")
		end
	end

	--Range
	UF:Configure_Range(frame)

	if not frame.isChild then
		--Auras
		UF:EnableDisable_Auras(frame)
		UF:Configure_Auras(frame, "Buffs")
		UF:Configure_Auras(frame, "Debuffs")

		--RaidDebuffs
		UF:Configure_RaidDebuffs(frame)

		--Debuff Highlight
		UF:Configure_DebuffHighlight(frame)

		--Buff Indicator
		UF:UpdateAuraWatch(frame)
	end

	frame:UpdateAllElements("ElvUI_UpdateAllElements")
end

UF["headerstoload"]["assist"] = {"MAINASSIST", "ELVUI_UNITTARGET"}