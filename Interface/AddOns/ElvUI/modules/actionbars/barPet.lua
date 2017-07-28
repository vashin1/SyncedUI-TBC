local E, L, V, P, G = unpack(ElvUI)
local AB = E:GetModule("ActionBars")

local _G = _G
local ceil = math.ceil

local CreateFrame = CreateFrame
local RegisterStateDriver = RegisterStateDriver
local GetBindingKey = GetBindingKey
local PetHasActionBar = PetHasActionBar
local GetPetActionInfo = GetPetActionInfo
local GetPetActionsUsable = GetPetActionsUsable
local SetDesaturation = SetDesaturation
local PetActionBar_ShowGrid = PetActionBar_ShowGrid
local PetActionBar_UpdateCooldowns = PetActionBar_UpdateCooldowns
local NUM_PET_ACTION_SLOTS = NUM_PET_ACTION_SLOTS

local bar = CreateFrame("Frame", "ElvUI_BarPet", E.UIParent, "SecureStateHeaderTemplate")
bar:SetFrameStrata("LOW")

function AB:UpdatePet(event, unit)
	if ((event == "UNIT_FLAGS" or event == "UNIT_AURA") and unit ~= "pet") then return end
	if (event == "UNIT_PET" and unit ~= "player") then return end

	local petActionButton, petActionIcon, petAutoCastableTexture, petAutoCastShine
	local petActionsUsable = GetPetActionsUsable()

	for i = 1, NUM_PET_ACTION_SLOTS do
		local buttonName = "PetActionButton" .. i
		petActionButton = _G[buttonName]
		petActionIcon = _G[buttonName .. "Icon"]
		petAutoCastableTexture = _G[buttonName .. "AutoCastable"]
		petAutoCastShine = _G[buttonName .. "AutoCast"]
		local name, subtext, texture, isToken, isActive, autoCastAllowed, autoCastEnabled = GetPetActionInfo(i)

		if not isToken then
			petActionIcon:SetTexture(texture)
			petActionButton.tooltipName = name
		else
			petActionIcon:SetTexture(_G[texture])
			petActionButton.tooltipName = _G[name]
		end

		petActionButton.isToken = isToken
		petActionButton.tooltipSubtext = subtext

		if isActive and name ~= "PET_ACTION_FOLLOW" then
			petActionButton:SetChecked(1)
		else
			petActionButton:SetChecked(0)
		end

		if autoCastAllowed then
			petAutoCastableTexture:Show()
		else
			petAutoCastableTexture:Hide()
		end

		if autoCastEnabled then
			petAutoCastShine:Show()
		else
			petAutoCastShine:Hide()
		end

--		petActionButton:SetAlpha(1)

		if texture then
			if petActionsUsable then
				SetDesaturation(petActionIcon, nil)
			else
				SetDesaturation(petActionIcon, 1)
			end
			petActionIcon:Show()
		else
			petActionIcon:Hide()
		end

		if not PetHasActionBar() and texture and name ~= "PET_ACTION_FOLLOW" then
			SetDesaturation(petActionIcon, 1)
			petActionButton:SetChecked(0)
		end
	end
end

function AB:PositionAndSizeBarPet()
	local buttonSpacing = E:Scale(self.db["barPet"].buttonspacing)
	local backdropSpacing = E:Scale((self.db["barPet"].backdropSpacing or self.db["barPet"].buttonspacing))
	local buttonsPerRow = self.db["barPet"].buttonsPerRow
	local numButtons = self.db["barPet"].buttons
	local size = E:Scale(self.db["barPet"].buttonsize)
	local point = self.db["barPet"].point
	local numColumns = ceil(numButtons / buttonsPerRow)
	local widthMult = self.db["barPet"].widthMult
	local heightMult = self.db["barPet"].heightMult

	bar.db = self.db["barPet"]

	if numButtons < buttonsPerRow then
		buttonsPerRow = numButtons
	end

	if numColumns < 1 then
		numColumns = 1
	end

	if self.db["barPet"].backdrop then
		bar.backdrop:Show()
	else
		bar.backdrop:Hide()

		widthMult = 1
		heightMult = 1
	end

	local barWidth = (size * (buttonsPerRow * widthMult)) + ((buttonSpacing * (buttonsPerRow - 1)) * widthMult) + (buttonSpacing * (widthMult-1)) + (backdropSpacing*2) + ((self.db["barPet"].backdrop and E.Border or E.Spacing)*2)
	local barHeight = (size * (numColumns * heightMult)) + ((buttonSpacing * (numColumns - 1)) * heightMult) + (buttonSpacing * (heightMult-1)) + (backdropSpacing*2) + ((self.db["barPet"].backdrop and E.Border or E.Spacing)*2)
	bar:Width(barWidth)
	bar:Height(barHeight)

	bar.mover:SetSize(bar:GetSize())

	if self.db["barPet"].enabled then
		bar:SetScale(1)
		bar:SetAlpha(self.db["barPet"].alpha)
		E:EnableMover(bar.mover:GetName())
	else
		bar:SetScale(0.0001)
		bar:SetAlpha(0)
		E:DisableMover(bar.mover:GetName())
	end

	local horizontalGrowth, verticalGrowth
	if point == "TOPLEFT" or point == "TOPRIGHT" then
		verticalGrowth = "DOWN"
	else
		verticalGrowth = "UP"
	end

	if point == "BOTTOMLEFT" or point == "TOPLEFT" then
		horizontalGrowth = "RIGHT"
	else
		horizontalGrowth = "LEFT"
	end

	bar.mouseover = self.db["barPet"].mouseover
	if bar.mouseover then
		bar:SetAlpha(0)
	else
		bar:SetAlpha(self.db["barPet"].alpha)
	end

	if self.db["barPet"].inheritGlobalFade then
		bar:SetParent(self.fadeParent)
	else
		bar:SetParent(E.UIParent)
	end

	local button, lastButton, lastColumnButton
	local firstButtonSpacing = (self.db["barPet"].backdrop and (E.Border + backdropSpacing) or E.Spacing)
	for i = 1, NUM_PET_ACTION_SLOTS do
		button = _G["PetActionButton"..i]
		lastButton = _G["PetActionButton"..i-1]
		lastColumnButton = _G["PetActionButton"..i-buttonsPerRow]
		button:SetParent(bar)
		button:ClearAllPoints()
		button:Size(size)
		button:SetAttribute("showgrid", 1)
		button:Show()

		if i == 1 then
			local x, y
			if point == "BOTTOMLEFT" then
				x, y = firstButtonSpacing, firstButtonSpacing
			elseif point == "TOPRIGHT" then
				x, y = -firstButtonSpacing, -firstButtonSpacing
			elseif point == "TOPLEFT" then
				x, y = firstButtonSpacing, -firstButtonSpacing
			else
				x, y = -firstButtonSpacing, firstButtonSpacing
			end

			button:Point(point, bar, point, x, y)
		elseif (i - 1) % buttonsPerRow == 0 then
			local x = 0
			local y = -buttonSpacing
			local buttonPoint, anchorPoint = "TOP", "BOTTOM"
			if verticalGrowth == "UP" then
				y = buttonSpacing
				buttonPoint = "BOTTOM"
				anchorPoint = "TOP"
			end
			button:Point(buttonPoint, lastColumnButton, anchorPoint, x, y)
		else
			local x = buttonSpacing
			local y = 0
			local buttonPoint, anchorPoint = "LEFT", "RIGHT"
			if horizontalGrowth == "LEFT" then
				x = -buttonSpacing
				buttonPoint = "RIGHT"
				anchorPoint = "LEFT"
			end

			button:Point(buttonPoint, lastButton, anchorPoint, x, y)
		end

		if i > numButtons then
			button:SetScale(0.0001)
			button:SetAlpha(0)
		else
			button:SetScale(1)
			button:SetAlpha(1)
		end

		self:StyleButton(button)
	end

	RegisterStateDriver(bar, "visibility", self.db["barPet"].visibility)

	bar:GetScript("OnSizeChanged")(bar)
end

function AB:UpdatePetBindings()
	for i=1, NUM_PET_ACTION_SLOTS do
		if self.db.hotkeytext then
			local key = GetBindingKey("BONUSACTIONBUTTON"..i)
			_G["PetActionButton"..i.."HotKey"]:Show()
			_G["PetActionButton"..i.."HotKey"]:SetText(key)
			self:FixKeybindText(_G["PetActionButton"..i])
		else
			_G["PetActionButton"..i.."HotKey"]:Hide()
		end
	end
end

function AB:CreateBarPet()
	bar:CreateBackdrop("Default")
	bar.backdrop:SetAllPoints()
	if self.db["bar4"].enabled then
		bar:Point("RIGHT", ElvUI_Bar4, "LEFT", -4, 0)
	else
		bar:Point("RIGHT", E.UIParent, "RIGHT", -4, 0)
	end

	PetActionBarFrame.showgrid = 1
	PetActionBar_ShowGrid()

	self:HookScript(bar, "OnEnter", "Bar_OnEnter")
	self:HookScript(bar, "OnLeave", "Bar_OnLeave")
	for i = 1, NUM_PET_ACTION_SLOTS do
		self:HookScript(_G["PetActionButton" .. i], "OnEnter", "Button_OnEnter")
		self:HookScript(_G["PetActionButton" .. i], "OnLeave", "Button_OnLeave")
	end

	self:RegisterEvent("SPELLS_CHANGED", "UpdatePet")
	self:RegisterEvent("PLAYER_CONTROL_GAINED", "UpdatePet")
	self:RegisterEvent("PLAYER_ENTERING_WORLD", "UpdatePet")
	self:RegisterEvent("PLAYER_CONTROL_LOST", "UpdatePet")
	self:RegisterEvent("PET_BAR_UPDATE", "UpdatePet")
	self:RegisterEvent("UNIT_PET", "UpdatePet")
	self:RegisterEvent("UNIT_FLAGS", "UpdatePet")
	self:RegisterEvent("UNIT_AURA", "UpdatePet")
	self:RegisterEvent("PLAYER_FARSIGHT_FOCUS_CHANGED", "UpdatePet")
	self:RegisterEvent("PET_BAR_UPDATE_COOLDOWN", PetActionBar_UpdateCooldowns)

	E:CreateMover(bar, "ElvBar_Pet", L["Pet Bar"], nil, nil, nil,"ALL,ACTIONBARS")

	self:PositionAndSizeBarPet()
	self:UpdatePetBindings()
end