local E, L, V, P, G = unpack(ElvUI);
local UF = E:GetModule("UnitFrames");

local CreateFrame = CreateFrame;

local ns = oUF;
local ElvUF = ns.oUF;
assert(ElvUF, "ElvUI was unable to locate oUF.");

function UF:Configure_ClassBar(frame)
	if(not frame.VARIABLES_SET) then return; end

	local bars = frame[frame.ClassBar];
	if(not bars) then return; end
	local db = frame.db;
	bars.origParent = frame;

	if((not self.thinBorders and not E.PixelMode) and frame.CLASSBAR_HEIGHT > 0 and frame.CLASSBAR_HEIGHT < 7) then
		frame.CLASSBAR_HEIGHT = 7;
		if(db.classbar) then db.classbar.height = 7; end
		UF.ToggleResourceBar(bars);
	elseif((self.thinBorders or E.PixelMode) and frame.CLASSBAR_HEIGHT > 0 and frame.CLASSBAR_HEIGHT < 3) then
		frame.CLASSBAR_HEIGHT = 3;
		if(db.classbar) then db.classbar.height = 3; end
		UF.ToggleResourceBar(bars);
	end

	local CLASSBAR_WIDTH = frame.CLASSBAR_WIDTH;

	local color = self.db.colors.classResources.bgColor
	bars.backdrop.ignoreUpdates = true
	bars.backdrop:SetBackdropColor(color.r, color.g, color.b)

	color = E.db.unitframe.colors.borderColor
	bars.backdrop:SetBackdropBorderColor(color.r, color.g, color.b)

	if(frame.USE_MINI_CLASSBAR and not frame.CLASSBAR_DETACHED) then
		bars:ClearAllPoints();
		bars:Point("CENTER", frame.Health.backdrop, "TOP", 0, 0);
		CLASSBAR_WIDTH = CLASSBAR_WIDTH * 2/3
		bars:SetFrameLevel(55)

		if(bars.Holder and bars.Holder.mover) then
			bars.Holder.mover:SetScale(0.0001);
			bars.Holder.mover:SetAlpha(0);
		end
	elseif(not frame.CLASSBAR_DETACHED) then
		bars:ClearAllPoints();

		if(frame.ORIENTATION == "RIGHT") then
			bars:Point("BOTTOMRIGHT", frame.Health.backdrop, "TOPRIGHT", -frame.BORDER, frame.SPACING*3);
		else
			bars:Point("BOTTOMLEFT", frame.Health.backdrop, "TOPLEFT", frame.BORDER, frame.SPACING*3);
		end
		bars:SetFrameLevel(frame:GetFrameLevel() + 5)

		if(bars.Holder and bars.Holder.mover) then
			bars.Holder.mover:SetScale(0.0001);
			bars.Holder.mover:SetAlpha(0);
		end
	else
		CLASSBAR_WIDTH = db.classbar.detachedWidth - ((frame.BORDER + frame.SPACING)*2);
		if(bars.Holder) then bars.Holder:Size(db.classbar.detachedWidth, db.classbar.height); end

		if(not bars.Holder or (bars.Holder and not bars.Holder.mover)) then
			bars.Holder = CreateFrame("Frame", nil, bars);
			bars.Holder:Point("BOTTOM", E.UIParent, "BOTTOM", 0, 150);
			bars.Holder:Size(db.classbar.detachedWidth, db.classbar.height);
			bars:Width(CLASSBAR_WIDTH);
			bars:Height(frame.CLASSBAR_HEIGHT - ((frame.BORDER+frame.SPACING)*2));
			bars:ClearAllPoints();
			bars:Point("BOTTOMLEFT", bars.Holder, "BOTTOMLEFT", frame.BORDER + frame.SPACING, frame.BORDER + frame.SPACING);
			E:CreateMover(bars.Holder, "ClassBarMover", L["Classbar"], nil, nil, nil, "ALL,SOLO");
		else
			bars:ClearAllPoints();
			bars:Point("BOTTOMLEFT", bars.Holder, "BOTTOMLEFT", frame.BORDER + frame.SPACING, frame.BORDER + frame.SPACING);
			bars.Holder.mover:SetScale(1);
			bars.Holder.mover:SetAlpha(1);
		end

		if not db.classbar.strataAndLevel.useCustomStrata then
			bars:SetFrameStrata("LOW")
		else
			bars:SetFrameStrata(db.classbar.strataAndLevel.frameStrata)
		end

		if not db.classbar.strataAndLevel.useCustomLevel then
			bars:SetFrameLevel(frame:GetFrameLevel() + 5)
		else
			bars:SetFrameLevel(db.classbar.strataAndLevel.frameLevel)
		end
	end

	bars:Width(CLASSBAR_WIDTH);
	bars:Height(frame.CLASSBAR_HEIGHT - ((frame.BORDER + frame.SPACING)*2));

	if(frame.CLASSBAR_DETACHED and db.classbar.parent == "UIPARENT") then
		bars:SetParent(E.UIParent);
	else
		bars:SetParent(frame);
	end

	if(frame.db.classbar.enable and frame.CAN_HAVE_CLASSBAR and not frame:IsElementEnabled(frame.ClassBar)) then
		frame:EnableElement(frame.ClassBar);
		bars:Show();
	elseif(not frame.USE_CLASSBAR and frame:IsElementEnabled(frame.ClassBar)) then
		frame:DisableElement(frame.ClassBar);
		bars:Hide();
	end
end

local function ToggleResourceBar(bars)
	local frame = bars.origParent or bars:GetParent();
	local db = frame.db;
	if(not db) then return; end
	frame.CLASSBAR_SHOWN = bars:IsShown();

	local height;
	if(db.classbar) then
		height = db.classbar.height;
	elseif(db.combobar) then
		height = db.combobar.height;
	elseif(frame.AltPowerBar) then
		height = db.power.height;
	end

	if(bars.text) then
		if(frame.CLASSBAR_SHOWN) then
			bars.text:SetAlpha(1);
		else
			bars.text:SetAlpha(0);
		end
	end

	frame.CLASSBAR_HEIGHT = (frame.USE_CLASSBAR and (frame.CLASSBAR_SHOWN and height) or 0);
	frame.CLASSBAR_YOFFSET = (not frame.USE_CLASSBAR or not frame.CLASSBAR_SHOWN or frame.CLASSBAR_DETACHED) and 0 or (frame.USE_MINI_CLASSBAR and ((frame.SPACING+(frame.CLASSBAR_HEIGHT/2))) or (frame.CLASSBAR_HEIGHT - (frame.BORDER-frame.SPACING)));

	if(not frame.CLASSBAR_DETACHED) then
		UF:Configure_HealthBar(frame);
		UF:Configure_Portrait(frame, true);
		UF:Configure_Threat(frame);
	end
end
UF.ToggleResourceBar = ToggleResourceBar;

function UF:Construct_DruidAltManaBar(frame)
	local dpower = CreateFrame("Frame", nil, frame);
	dpower:CreateBackdrop("Default", nil, nil, self.thinBorders, true)
	dpower.colorPower = true;
	dpower.PostUpdateVisibility = ToggleResourceBar;

	dpower.ManaBar = CreateFrame("StatusBar", nil, dpower);
	UF["statusbars"][dpower.ManaBar] = true;
	dpower.ManaBar:SetStatusBarTexture(E["media"].blankTex);
	dpower.ManaBar:SetAllPoints(dpower);

	dpower.bg = dpower:CreateTexture(nil, "BORDER");
	dpower.bg:SetAllPoints(dpower.ManaBar);
	dpower.bg:SetTexture(E["media"].blankTex);
	dpower.bg.multiplier = 0.3;

	dpower.Text = dpower:CreateFontString(nil, "OVERLAY");
	UF:Configure_FontString(dpower.Text);

	return dpower;
end

function UF:DruidResourceBarVisibilityUpdate()
	local parent = self:GetParent();

	UF:UpdatePlayerFrameAnchors(parent, self:IsShown());
end