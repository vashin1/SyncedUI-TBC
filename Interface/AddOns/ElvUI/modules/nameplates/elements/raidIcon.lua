local E, L, V, P, G = unpack(ElvUI)
local mod = E:GetModule("NamePlates")

function mod:UpdateElement_RaidIcon(frame)
	local icon = frame.RaidIcon
	icon:ClearAllPoints()
	if frame.HealthBar:IsShown() then
		icon:SetPoint("RIGHT", frame.HealthBar, "LEFT", -6, 0)
	else
		icon:SetPoint("BOTTOM", frame.Name, "TOP", 0, 3)
	end
end