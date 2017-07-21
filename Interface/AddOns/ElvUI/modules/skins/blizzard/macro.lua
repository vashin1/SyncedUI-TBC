local E, L, V, P, G = unpack(ElvUI)
local S = E:GetModule("Skins")

function S:LoadMacroSkin()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.macro ~= true then return end

	MacroFrame:StripTextures()
	MacroFrame:CreateBackdrop("Transparent")
	MacroFrame.backdrop:Point("TOPLEFT", 10, -11)
	MacroFrame.backdrop:Point("BOTTOMRIGHT", -32, 71)

	MacroFrame.bg = CreateFrame("Frame", nil, MacroFrame)
	MacroFrame.bg:SetTemplate("Transparent", true)
	MacroFrame.bg:Point("TOPLEFT", MacroButton1, -10, 10)
	MacroFrame.bg:Point("BOTTOMRIGHT", MacroButton18, 10, -10)

	MacroFrameTextBackground:StripTextures()
	MacroFrameTextBackground:CreateBackdrop("Default")
	MacroFrameTextBackground.backdrop:Point("TOPLEFT", 6, -3)
	MacroFrameTextBackground.backdrop:Point("BOTTOMRIGHT", -2, 3)

	local Buttons = {
		"MacroFrameTab1",
		"MacroFrameTab2",
		"MacroDeleteButton",
		"MacroNewButton",
		"MacroExitButton",
		"MacroEditButton",
		"MacroPopupOkayButton",
		"MacroPopupCancelButton"
	}

	for i = 1, #Buttons do
		_G[Buttons[i]]:StripTextures()
		S:HandleButton(_G[Buttons[i]])
	end

	for i = 1, 2 do
		local tab = _G["MacroFrameTab" .. i]

		tab:Height(22)
	end

	MacroFrameTab1:Point("TOPLEFT", MacroFrame, "TOPLEFT", 85, -39)
	MacroFrameTab2:Point("LEFT", MacroFrameTab1, "RIGHT", 4, 0)

	S:HandleCloseButton(MacroFrameCloseButton)

	S:HandleScrollBar(MacroFrameScrollFrameScrollBar)
	S:HandleScrollBar(MacroPopupScrollFrameScrollBar)

	MacroEditButton:ClearAllPoints()
	MacroEditButton:Point("BOTTOMLEFT", MacroFrameSelectedMacroButton, "BOTTOMRIGHT", 10, 0)

	MacroFrameSelectedMacroName:Point("TOPLEFT", MacroFrameSelectedMacroBackground, "TOPRIGHT", -4, -10)

	MacroFrameSelectedMacroButton:StripTextures()
	MacroFrameSelectedMacroButton:SetTemplate("Transparent")
	MacroFrameSelectedMacroButton:StyleButton(true)
	MacroFrameSelectedMacroButton:GetNormalTexture():SetTexture(nil)

	MacroFrameSelectedMacroButtonIcon:SetTexCoord(unpack(E.TexCoords))
	MacroFrameSelectedMacroButtonIcon:SetInside()

	MacroFrameCharLimitText:ClearAllPoints()
	MacroFrameCharLimitText:Point("BOTTOM", MacroFrameTextBackground, 0, -9)

	for i = 1, MAX_MACROS do
		local Button = _G["MacroButton"..i]
		local ButtonIcon = _G["MacroButton"..i.."Icon"]

		if Button then
			Button:StripTextures()
			Button:SetTemplate("Default", true)
			Button:StyleButton(nil, true)
		end

		if ButtonIcon then
			ButtonIcon:SetTexCoord(unpack(E.TexCoords))
			ButtonIcon:SetInside()
		end
	end

	S:HandleIconSelectionFrame(MacroPopupFrame, NUM_MACRO_ICONS_SHOWN, "MacroPopupButton", "MacroPopup")

	MacroPopupScrollFrame:CreateBackdrop("Transparent")
	MacroPopupScrollFrame.backdrop:Point("TOPLEFT", 51, 2)
	MacroPopupScrollFrame.backdrop:Point("BOTTOMRIGHT", 0, 4)

	MacroPopupFrame:Point("TOPLEFT", MacroFrame, "TOPRIGHT", -41, 1)
end

S:AddCallbackForAddon("Blizzard_MacroUI", "Macro", S.LoadMacroSkin)