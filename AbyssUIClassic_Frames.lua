-- Author: Yugen
--
-- Classic
--
-- Hope you like my addOn ^^
--
-- Frames for AbyssUIClassic
--------------------------------------------------------------------------------

-- AbyssUIClassic_AFKCameraFrame
local AbyssUIClassic_AFKCameraFrame = CreateFrame("Frame", "$parentAbyssUIClassic_AFKCameraFrame", UIParent)
AbyssUIClassic_AFKCameraFrame:SetFrameStrata("HIGH")
AbyssUIClassic_AFKCameraFrame:SetWidth(GetScreenWidth())
AbyssUIClassic_AFKCameraFrame:SetHeight(GetScreenHeight())
AbyssUIClassic_AFKCameraFrame:SetClampedToScreen(true)
AbyssUIClassic_AFKCameraFrame:SetPoint("CENTER", "UIParent", "CENTER", 0, 0)
AbyssUIClassic_AFKCameraFrame.text = AbyssUIClassic_AFKCameraFrame.text or AbyssUIClassic_AFKCameraFrame:CreateFontString(nil, "ARTWORK", "QuestMapRewardsFont")
AbyssUIClassic_AFKCameraFrame.text:SetScale(3)
AbyssUIClassic_AFKCameraFrame.text:SetAllPoints(true)
AbyssUIClassic_AFKCameraFrame.text:SetJustifyH("CENTER")
AbyssUIClassic_AFKCameraFrame.text:SetJustifyV("CENTER")
AbyssUIClassic_AFKCameraFrame.text:SetText("|cff0d75d4AbyssUIClassic|r\nThe |cff5f545eDark|r Blizzard UI revamp\nMove to leave AFK Mode")
AbyssUIClassic_AFKCameraFrame:Hide()
----------------------------------------------------
local AbyssUIClassicBorder = AbyssUIClassic_AFKCameraFrame:CreateTexture(nil, "BACKGROUND")
AbyssUIClassicBorder:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
AbyssUIClassicBorder:SetPoint("TOPLEFT", -3, 3)
AbyssUIClassicBorder:SetPoint("BOTTOMRIGHT", 3, -3)
AbyssUIClassicBorder:SetVertexColor(0.5, 0.5, 0.5, 0.5)
----------------------------------------------------
local BorderBody = AbyssUIClassic_AFKCameraFrame:CreateTexture(nil, "ARTWORK")
BorderBody:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
BorderBody:SetAllPoints(AbyssUIClassic_AFKCameraFrame)
BorderBody:SetVertexColor(0.5, 0.5, 0.5, 0.5)
----------------------------------------------------
local Texture = AbyssUIClassic_AFKCameraFrame:CreateTexture(nil, "BACKGROUND")
Texture:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
Texture:SetAllPoints(AbyssUIClassic_AFKCameraFrame)
AbyssUIClassic_AFKCameraFrame.texture = Texture
----------------------------------------------------
-- AFK Camera Function
local AbyssUIClassic_AFKCamera = CreateFrame("Frame", "$parentAbyssUIClassic_AFKCamera", nil)
AbyssUIClassic_AFKCamera:RegisterEvent("PLAYER_FLAGS_CHANGED")
AbyssUIClassic_AFKCamera:RegisterEvent("PLAYER_ENTERING_WORLD")
----------------------------------------------------
-- ModelFrameAFKMode
-- Model1
local AbyssUIClassic_ModelFrameAFKMode = CreateFrame("Frame", "$parentAbyssUIClassic_ModelFrameAFKMode", AbyssUIClassic_AFKCameraFrame)
AbyssUIClassic_ModelFrameAFKMode:SetPoint("TOPLEFT", 0, 0)
AbyssUIClassic_ModelFrameAFKMode:SetWidth(512)
AbyssUIClassic_ModelFrameAFKMode:SetHeight(512)
AbyssUIClassic_ModelFrameAFKMode:SetAlpha(1)

local ModelFrame_Model1 = CreateFrame("PlayerModel", "$parentModelFrame_Model1", AbyssUIClassic_ModelFrameAFKMode)
ModelFrame_Model1:SetUnit("player")
ModelFrame_Model1:SetAlpha(1)
ModelFrame_Model1:SetAllPoints(AbyssUIClassic_ModelFrameAFKMode)
ModelFrame_Model1:SetCustomCamera(1)
local x, y, z = ModelFrame_Model1:GetCameraPosition()
----------------------------------------------------
-- PlayerInfoAFKMode
-- Name
local PlayerInfo_Name1 = CreateFrame("Frame", "$parentPlayerInfo_Name1", AbyssUIClassic_AFKCameraFrame)
local playerName = UnitName("player")
PlayerInfo_Name1:SetAllPoints(AbyssUIClassic_AFKCameraFrame)
PlayerInfo_Name1:SetScale(3)
PlayerInfo_Name1.text = PlayerInfo_Name1.text or PlayerInfo_Name1:CreateFontString(nil, "ARTWORK", "QuestMapRewardsFont")
PlayerInfo_Name1.text:SetPoint("TOPRIGHT", 0, -10)
PlayerInfo_Name1.text:SetText(playerName)
-- Level
local PlayerInfo_Level1 = CreateFrame("Frame", "$parentPlayerInfo_Level1", AbyssUIClassic_AFKCameraFrame)
local level = UnitLevel("player")
PlayerInfo_Level1:SetAllPoints(AbyssUIClassic_AFKCameraFrame)
PlayerInfo_Level1:SetScale(3)
PlayerInfo_Level1.text = PlayerInfo_Level1.text or PlayerInfo_Level1:CreateFontString(nil, "ARTWORK", "QuestMapRewardsFont")
PlayerInfo_Level1.text:SetPoint("TOPRIGHT", 0, -20)
PlayerInfo_Level1.text:SetText(level)
-- Race
local PlayerInfo_Race1 = CreateFrame("Frame", "$parentPlayerInfo_Race1", AbyssUIClassic_AFKCameraFrame)
local race, raceEn = UnitRace("player")
PlayerInfo_Race1:SetAllPoints(AbyssUIClassic_AFKCameraFrame)
PlayerInfo_Race1:SetScale(3)
PlayerInfo_Race1.text = PlayerInfo_Race1.text or PlayerInfo_Race1:CreateFontString(nil, "ARTWORK", "QuestMapRewardsFont")
PlayerInfo_Race1.text:SetPoint("TOPRIGHT", 0, -30)
PlayerInfo_Race1.text:SetText(raceEn)
-- Class
local PlayerInfo_Class1 = CreateFrame("Frame", "$parentPlayerInfo_Class1", AbyssUIClassic_AFKCameraFrame)
local playerClass, englishClass = UnitClass("player")
PlayerInfo_Class1:SetAllPoints(AbyssUIClassic_AFKCameraFrame)
PlayerInfo_Class1:SetScale(3)
PlayerInfo_Class1.text = PlayerInfo_Class1.text or PlayerInfo_Class1:CreateFontString(nil, "ARTWORK", "QuestMapRewardsFont")
PlayerInfo_Class1.text:SetPoint("TOPRIGHT", 0, -40)
PlayerInfo_Class1.text:SetText(playerClass)
-- ExtraInfoAFKMode
-- CLock
local ExtraInfo_Clock1 = CreateFrame("Frame", "$parentExtraInfo_Clock1", AbyssUIClassic_AFKCameraFrame)
ExtraInfo_Clock1:SetAllPoints(AbyssUIClassic_AFKCameraFrame)
ExtraInfo_Clock1:SetScale(3)
ExtraInfo_Clock1.text = ExtraInfo_Clock1.text or ExtraInfo_Clock1:CreateFontString(nil, "ARTWORK", "QuestMapRewardsFont")
ExtraInfo_Clock1.text:SetPoint("BOTTOMRIGHT", 0, 0)
function ExtraInfo_Clock1:onUpdate(sinceLastUpdate)
	self.sinceLastUpdate = (self.sinceLastUpdate or 0) + sinceLastUpdate
	if ( self.sinceLastUpdate >= 5 ) then
		local dataTime = date("%H:%M |cffffcc00%d/%m/%y|r ")
		ExtraInfo_Clock1.text:SetText(dataTime)
		self.sinceLastUpdate = 0
	end
end
ExtraInfo_Clock1:SetScript("OnUpdate", ExtraInfo_Clock1.onUpdate)
local function AbyssUIClassic_UpdateAFKCameraData()
	-- Get
	playerName = UnitName("player")
	level = UnitLevel("player")
	race, raceEn = UnitRace("player")
	playerClass, englishClass = UnitClass("player")
	dataTime = date("%H:%M |cffffcc00%d/%m/%y|r ")
	-- Set
	PlayerInfo_Name1.text:SetText(playerName)
	PlayerInfo_Level1.text:SetText(level)
	PlayerInfo_Race1.text:SetText(race)
	PlayerInfo_Class1.text:SetText(playerClass)
	ExtraInfo_Clock1.text:SetText(dataTime)
end
-- AbyssUIClassic_AFKCamera SetScript
AbyssUIClassic_AFKCamera:SetScript("OnEvent", function(self, event, ...)
	local inInstance, instanceType = IsInInstance()
	if ( AbyssUIClassicAddonSettings.AFKCammeraFrame ~= true ) then
		if ( event == "PLAYER_FLAGS_CHANGED" or event == "PLAYER_ENTERING_WORLD" ) then
			local isAFK = UnitIsAFK("player")
			if isAFK == true and inInstance ~= true then
				AbyssUIClassic_UpdateAFKCameraData()
				UIFrameFadeIn(AbyssUIClassic_AFKCameraFrame, 3, 0, 1)
			elseif isAFK == false and inInstance ~= true then
				AbyssUIClassic_AFKCameraFrame:Hide()
			elseif isAFK == true and inInstance == true then
				AbyssUIClassic_AFKCameraFrame:Hide()
			elseif isAFK == false and inInstance == true then
				AbyssUIClassic_AFKCameraFrame:Hide()
			else
				AbyssUIClassic_AFKCameraFrame:Hide()
			end
		end
	else
		return nil
	end
end)
--------------------------------------------
-- YouDied Frame
local AbyssUIClassic_YouDiedFrame = CreateFrame("Frame", "$parentAbyssUIClassic_YouDiedFrame", UIParent)
AbyssUIClassic_YouDiedFrame:RegisterEvent("PLAYER_DEAD")
AbyssUIClassic_YouDiedFrame:SetFrameStrata("HIGH")
AbyssUIClassic_YouDiedFrame:SetWidth(GetScreenWidth())
AbyssUIClassic_YouDiedFrame:SetHeight(GetScreenHeight()/4)
AbyssUIClassic_YouDiedFrame:SetClampedToScreen(true)
AbyssUIClassic_YouDiedFrame:SetPoint("CENTER", "UIParent", "CENTER", 0, 0)
AbyssUIClassic_YouDiedFrame.text = AbyssUIClassic_YouDiedFrame.text or AbyssUIClassic_YouDiedFrame:CreateFontString(nil, "ARTWORK", "QuestMapRewardsFont")
AbyssUIClassic_YouDiedFrame.text:SetScale(10)
AbyssUIClassic_YouDiedFrame.text:SetAllPoints(true)
AbyssUIClassic_YouDiedFrame.text:SetJustifyH("CENTER")
AbyssUIClassic_YouDiedFrame.text:SetJustifyV("CENTER")
AbyssUIClassic_YouDiedFrame.text:SetText("|cff8b0000YOU DIED|r")
AbyssUIClassic_YouDiedFrame.text:SetWidth(GetScreenWidth())
AbyssUIClassic_YouDiedFrame.text:SetHeight(GetScreenHeight()/4)
AbyssUIClassic_YouDiedFrame:Hide()
AbyssUIClassic_YouDiedFrame:SetScript("OnEvent", function(self, event, ...)
	if ( AbyssUIClassicAddonSettings.HideYouDiedLevelUpFrame ~= true ) then
		if ( event == "PLAYER_DEAD" ) then
			UIFrameFadeIn(AbyssUIClassic_YouDiedFrame, 2, 0, 1)
			C_Timer.After(4, function()
				UIFrameFadeIn(AbyssUIClassic_YouDiedFrame, 4, 1, 0)
			end)
			C_Timer.After(10, function()
				AbyssUIClassic_YouDiedFrame:Hide()
			end)
		else
			return nil
		end
	else
		return nil
	end
end)
----------------------------------------------------
local AbyssUIClassicBorder = AbyssUIClassic_YouDiedFrame:CreateTexture(nil, "BACKGROUND")
AbyssUIClassicBorder:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
AbyssUIClassicBorder:SetPoint("TOPLEFT", -3, 3)
AbyssUIClassicBorder:SetPoint("BOTTOMRIGHT", 3, -3)
AbyssUIClassicBorder:SetVertexColor(0.6, 0.6, 0.6, 0.6)
----------------------------------------------------
local BorderBody = AbyssUIClassic_YouDiedFrame:CreateTexture(nil, "ARTWORK")
BorderBody:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
BorderBody:SetAllPoints(AbyssUIClassic_YouDiedFrame)
BorderBody:SetVertexColor(0.6, 0.6, 0.6, 0.6)
----------------------------------------------------
local Texture = AbyssUIClassic_YouDiedFrame:CreateTexture(nil, "BACKGROUND")
Texture:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
Texture:SetAllPoints(AbyssUIClassic_YouDiedFrame)
AbyssUIClassic_YouDiedFrame.texture = Texture
----------------------------------------------------
-- LevelUp Frame
local AbyssUIClassic_LevelUpFrame = CreateFrame("Frame", "$parentAbyssUIClassic_LevelUpFrame", UIParent)
AbyssUIClassic_LevelUpFrame:RegisterEvent("PLAYER_LEVEL_UP")
AbyssUIClassic_LevelUpFrame:SetFrameStrata("DIALOG")
AbyssUIClassic_LevelUpFrame:SetWidth(GetScreenWidth())
AbyssUIClassic_LevelUpFrame:SetHeight(GetScreenHeight()/4)
AbyssUIClassic_LevelUpFrame:SetClampedToScreen(true)
AbyssUIClassic_LevelUpFrame:SetPoint("CENTER", "UIParent", "CENTER", 0, 0)
AbyssUIClassic_LevelUpFrame.text = AbyssUIClassic_LevelUpFrame.text or AbyssUIClassic_LevelUpFrame:CreateFontString(nil, "ARTWORK", "QuestMapRewardsFont")
AbyssUIClassic_LevelUpFrame.text:SetScale(6)
AbyssUIClassic_LevelUpFrame.text:SetAllPoints(true)
AbyssUIClassic_LevelUpFrame.text:SetJustifyH("CENTER")
AbyssUIClassic_LevelUpFrame.text:SetJustifyV("CENTER")
AbyssUIClassic_LevelUpFrame.text:SetText("|cfff2dc7fLEVEL UP|r")
AbyssUIClassic_LevelUpFrame.text:SetWidth(GetScreenWidth())
AbyssUIClassic_LevelUpFrame.text:SetHeight(GetScreenHeight()/4)
AbyssUIClassic_LevelUpFrame:Hide()
----------------------------------------------------
local AbyssUIClassicBorder = AbyssUIClassic_LevelUpFrame:CreateTexture(nil, "BACKGROUND")
AbyssUIClassicBorder:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
AbyssUIClassicBorder:SetPoint("TOPLEFT", -3, 3)
AbyssUIClassicBorder:SetPoint("BOTTOMRIGHT", 3, -3)
AbyssUIClassicBorder:SetVertexColor(0.3, 0.3, 0.3, 0.3)
----------------------------------------------------
local BorderBody = AbyssUIClassic_LevelUpFrame:CreateTexture(nil, "ARTWORK")
BorderBody:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
BorderBody:SetAllPoints(AbyssUIClassic_LevelUpFrame)
BorderBody:SetVertexColor(0.3, 0.3, 0.3, 0.3)
----------------------------------------------------
local Texture = AbyssUIClassic_LevelUpFrame:CreateTexture(nil, "BACKGROUND")
Texture:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
Texture:SetAllPoints(AbyssUIClassic_LevelUpFrame)
AbyssUIClassic_LevelUpFrame.texture = Texture
----------------------------------------------------
-- Player Level
local LevelUp_PlayerLevel = CreateFrame("Frame", "$parentLevelUp_PlayerLevel", AbyssUIClassic_LevelUpFrame)
LevelUp_PlayerLevel:SetAllPoints(AbyssUIClassic_LevelUpFrame)
LevelUp_PlayerLevel:SetScale(6)
LevelUp_PlayerLevel.text = LevelUp_PlayerLevel.text or LevelUp_PlayerLevel:CreateFontString(nil, "ARTWORK", "QuestMapRewardsFont")
LevelUp_PlayerLevel.text:SetPoint("CENTER", 0, -10)
LevelUp_PlayerLevel.text:SetText(level)
LevelUp_PlayerLevel.text:SetWidth(GetScreenWidth())
LevelUp_PlayerLevel.text:SetHeight(GetScreenHeight()/4)
-- Player Nome
local LevelUp_PlayerName = CreateFrame("Frame", "$parentLevelUp_PlayerName", AbyssUIClassic_LevelUpFrame)
LevelUp_PlayerName:SetAllPoints(AbyssUIClassic_LevelUpFrame)
LevelUp_PlayerName:SetScale(6)
LevelUp_PlayerName.text = LevelUp_PlayerName.text or LevelUp_PlayerName:CreateFontString(nil, "ARTWORK", "QuestMapRewardsFont")
LevelUp_PlayerName.text:SetPoint("CENTER", 0, 10)
LevelUp_PlayerName.text:SetText(playerName)
LevelUp_PlayerName.text:SetWidth(GetScreenWidth())
LevelUp_PlayerName.text:SetHeight(GetScreenHeight()/4)
local function AbyssUIClassic_UpdateYouDiedLevelUpData()
	-- Get
	level = UnitLevel("player")
	playerName = UnitName("player")
	-- Set
	LevelUp_PlayerLevel.text:SetText(level)
	LevelUp_PlayerName.text:SetText(playerName)
end
-- AbyssUIClassic_LevelUpFrame Set Script
AbyssUIClassic_LevelUpFrame:SetScript("OnEvent", function(self, event, ...)
	if ( AbyssUIClassicAddonSettings.HideYouDiedLevelUpFrame ~= true ) then
		if ( event == "PLAYER_LEVEL_UP" ) then
			C_Timer.After(1, function()
				AbyssUIClassic_UpdateYouDiedLevelUpData()
				UIFrameFadeIn(AbyssUIClassic_LevelUpFrame, 2, 0, 1)
			end)
			C_Timer.After(3, function()
				UIFrameFadeIn(AbyssUIClassic_LevelUpFrame, 4, 1, 0)
			end)
			C_Timer.After(10, function()
				AbyssUIClassic_LevelUpFrame:Hide()
			end)
		else
			return nil
		end
	else
		return nil
	end
end)
-------------------------- Save and Extra Stuff --------------------------
-- AbyssUIClassicFirstFrame
AbyssUIClassicFirstFrame = CreateFrame("Frame", "$parentAbyssUIClassicFirstFrame", UIParent)
AbyssUIClassicFirstFrame:Hide()
AbyssUIClassicFirstFrame:SetWidth(350)
AbyssUIClassicFirstFrame:SetHeight(120)
AbyssUIClassicFirstFrame:SetPoint("CENTER", "UIParent", "CENTER", 0, 200)
AbyssUIClassicFirstFrame:EnableMouse(true)
AbyssUIClassicFirstFrame:SetFrameStrata("HIGH")
AbyssUIClassicFirstFrame.text = AbyssUIClassicFirstFrame.text or AbyssUIClassicFirstFrame:CreateFontString(nil, "ARTWORK", "QuestMapRewardsFont")
AbyssUIClassicFirstFrame.text:SetScale(1.5)
AbyssUIClassicFirstFrame.text:SetAllPoints(true)
AbyssUIClassicFirstFrame.text:SetJustifyH("CENTER")
AbyssUIClassicFirstFrame.text:SetJustifyV("CENTER")
AbyssUIClassicFirstFrame.text:SetText("Thanks for using |cff0d75d4AbyssUIClassic!|r\nThe |cff5f545eDark|r Blizzard UI revamp.\n|cffffcc00'Confirm'|r to ReloadUI")
----------------------------------------------------
local AbyssUIClassicBorder = AbyssUIClassicFirstFrame:CreateTexture(nil, "BACKGROUND")
AbyssUIClassicBorder:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
AbyssUIClassicBorder:SetPoint("TOPLEFT", -3, 3)
AbyssUIClassicBorder:SetPoint("BOTTOMRIGHT", 3, -3)
AbyssUIClassicBorder:SetVertexColor(0.2, 0.2, 0.2, 0.6)
----------------------------------------------------
local BorderBody = AbyssUIClassicFirstFrame:CreateTexture(nil, "ARTWORK")
BorderBody:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
BorderBody:SetAllPoints(AbyssUIClassicFirstFrame)
BorderBody:SetVertexColor(0.34, 0.34, 0.34, 0.7)
----------------------------------------------------
local Texture = AbyssUIClassicFirstFrame:CreateTexture(nil, "BACKGROUND")
Texture:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
Texture:SetAllPoints(AbyssUIClassicFirstFrame)
AbyssUIClassicFirstFrame.texture = Texture
----------------------------------------------------
local FrameButton = CreateFrame("Button", "$parentFrameButton", AbyssUIClassicFirstFrame, "UIPanelButtonTemplate")
FrameButton:SetHeight(24)
FrameButton:SetWidth(70)
FrameButton:SetPoint("BOTTOM", AbyssUIClassicFirstFrame, "BOTTOM", 0, 10)
FrameButton:SetText("Confirm")
FrameButton:SetNormalTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
----------------------------------------------------
local BorderButton = FrameButton:CreateTexture(nil, "ARTWORK")
BorderButton:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
BorderButton:SetAllPoints(FrameButton)
BorderButton:SetVertexColor(0.34, 0.34, 0.34, 0.7)
FrameButton:SetScript("OnClick", function()
	AbyssUIClassicFirstFrame:Hide()
	ReloadUI()
end)
----------------------------------------------------
-- AbyssUIClassic_ReloadFrame
AbyssUIClassic_ReloadFrame = CreateFrame("Frame", "$parentAbyssUIClassic_ReloadFrame", UIParent)
AbyssUIClassic_ReloadFrame:Hide()
AbyssUIClassic_ReloadFrame:SetWidth(400)
AbyssUIClassic_ReloadFrame:SetHeight(150)
AbyssUIClassic_ReloadFrame:SetPoint("CENTER", "UIParent", "CENTER", 0, -100)
AbyssUIClassic_ReloadFrame:EnableMouse(true)
AbyssUIClassic_ReloadFrame:SetClampedToScreen(true)
AbyssUIClassic_ReloadFrame:SetMovable(true)
AbyssUIClassic_ReloadFrame:RegisterForDrag("LeftButton")
AbyssUIClassic_ReloadFrame:SetScript("OnDragStart", AbyssUIClassic_ReloadFrame.StartMoving)
AbyssUIClassic_ReloadFrame:SetScript("OnDragStop", function(self)
  self:StopMovingOrSizing()
end)
AbyssUIClassic_ReloadFrame:SetFrameStrata("Dialog")
AbyssUIClassic_ReloadFrame.text = AbyssUIClassic_ReloadFrame.text or AbyssUIClassic_ReloadFrame:CreateFontString(nil,"ARTWORK","QuestMapRewardsFont")
AbyssUIClassic_ReloadFrame.text:SetScale(1.5)
AbyssUIClassic_ReloadFrame.text:SetAllPoints(true)
AbyssUIClassic_ReloadFrame.text:SetJustifyH("CENTER")
AbyssUIClassic_ReloadFrame.text:SetJustifyV("CENTER")
AbyssUIClassic_ReloadFrame.text:SetText("A reload is necessary so this configuration can be save!\nClick the |cffffcc00'Confirm'|r button to Reload.\nYou still can make changes (do before you confirm).")
----------------------------------------------------
local Border = AbyssUIClassic_ReloadFrame:CreateTexture(nil, "BACKGROUND")
Border:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
Border:SetPoint("TOPLEFT", -3, 3)
Border:SetPoint("BOTTOMRIGHT", 3, -3)
Border:SetVertexColor(0.2, 0.2, 0.2, 0.6)
----------------------------------------------------
local BorderBody = AbyssUIClassic_ReloadFrame:CreateTexture(nil, "ARTWORK")
BorderBody:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
BorderBody:SetAllPoints(AbyssUIClassic_ReloadFrame)
BorderBody:SetVertexColor(0.34, 0.34, 0.34, 0.7)
----------------------------------------------------
local Texture = AbyssUIClassic_ReloadFrame:CreateTexture(nil, "BACKGROUND")
Texture:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
Texture:SetAllPoints(AbyssUIClassic_ReloadFrame)
AbyssUIClassic_ReloadFrame.texture = Texture
----------------------------------------------------
local FrameButtonConfirm = CreateFrame("Button","$parentFrameButtonConfirm", AbyssUIClassic_ReloadFrame, "UIPanelButtonTemplate")
FrameButtonConfirm:SetHeight(24)
FrameButtonConfirm:SetWidth(70)
FrameButtonConfirm:SetPoint("BOTTOM", AbyssUIClassic_ReloadFrame, "BOTTOM", 0, 10)
FrameButtonConfirm:SetText("Confirm")
FrameButtonConfirm:SetNormalTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
----------------------------------------------------
local BorderButton = FrameButtonConfirm:CreateTexture(nil, "ARTWORK")
BorderButton:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
BorderButton:SetAllPoints(FrameButtonConfirm)
BorderButton:SetVertexColor(0.34, 0.34, 0.34, 0.7)
FrameButtonConfirm:SetScript("OnClick", function()
	AbyssUIClassic_ReloadFrame:Hide()
	ReloadUI()
end)
----------------------------------------------------
-- AbyssUIClassic_ActionBarCleaner
AbyssUIClassic_ActionBarCleaner = CreateFrame("Frame", "$parentAbyssUIClassic_ActionBarCleaner", UIParent)
AbyssUIClassic_ActionBarCleaner:Hide()
AbyssUIClassic_ActionBarCleaner:SetWidth(400)
AbyssUIClassic_ActionBarCleaner:SetHeight(150)
AbyssUIClassic_ActionBarCleaner:SetPoint("CENTER", "UIParent", "CENTER", 0, -100)
AbyssUIClassic_ActionBarCleaner:EnableMouse(true)
AbyssUIClassic_ActionBarCleaner:SetClampedToScreen(true)
AbyssUIClassic_ActionBarCleaner:SetMovable(true)
AbyssUIClassic_ActionBarCleaner:RegisterForDrag("LeftButton")
AbyssUIClassic_ActionBarCleaner:SetScript("OnDragStart", AbyssUIClassic_ActionBarCleaner.StartMoving)
AbyssUIClassic_ActionBarCleaner:SetScript("OnDragStop", function(self)
  self:StopMovingOrSizing()
end)
AbyssUIClassic_ActionBarCleaner:SetFrameStrata("Dialog")
AbyssUIClassic_ActionBarCleaner.text = AbyssUIClassic_ActionBarCleaner.text or AbyssUIClassic_ActionBarCleaner:CreateFontString(nil,"ARTWORK","QuestMapRewardsFont")
AbyssUIClassic_ActionBarCleaner.text:SetScale(1.5)
AbyssUIClassic_ActionBarCleaner.text:SetAllPoints(true)
AbyssUIClassic_ActionBarCleaner.text:SetJustifyH("CENTER")
AbyssUIClassic_ActionBarCleaner.text:SetJustifyV("CENTER")
AbyssUIClassic_ActionBarCleaner.text:SetText("Wait!\nThis will clean all your skills/spells from Actions Bars.")
----------------------------------------------------
local Border = AbyssUIClassic_ActionBarCleaner:CreateTexture(nil, "BACKGROUND")
Border:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
Border:SetPoint("TOPLEFT", -3, 3)
Border:SetPoint("BOTTOMRIGHT", 3, -3)
Border:SetVertexColor(0.2, 0.2, 0.2, 0.6)
----------------------------------------------------
local BorderBody = AbyssUIClassic_ActionBarCleaner:CreateTexture(nil, "ARTWORK")
BorderBody:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
BorderBody:SetAllPoints(AbyssUIClassic_ActionBarCleaner)
BorderBody:SetVertexColor(0.34, 0.34, 0.34, 0.7)
----------------------------------------------------
local Texture = AbyssUIClassic_ActionBarCleaner:CreateTexture(nil, "BACKGROUND")
Texture:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
Texture:SetAllPoints(AbyssUIClassic_ActionBarCleaner)
AbyssUIClassic_ActionBarCleaner.texture = Texture
----------------------------------------------------
local FrameButtonConfirm = CreateFrame("Button","$parentFrameButtonConfirm", AbyssUIClassic_ActionBarCleaner, "UIPanelButtonTemplate")
FrameButtonConfirm:SetHeight(24)
FrameButtonConfirm:SetWidth(70)
FrameButtonConfirm:SetPoint("BOTTOM", AbyssUIClassic_ActionBarCleaner, "BOTTOM", -50, 10)
FrameButtonConfirm:SetText("Confirm")
FrameButtonConfirm:SetNormalTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
----------------------------------------------------
local FrameButtonCancel = CreateFrame("Button","$parentFrameButtonCancel", AbyssUIClassic_ActionBarCleaner, "UIPanelButtonTemplate")
FrameButtonCancel:SetHeight(24)
FrameButtonCancel:SetWidth(70)
FrameButtonCancel:SetPoint("BOTTOM", AbyssUIClassic_ActionBarCleaner, "BOTTOM", 50, 10)
FrameButtonCancel:SetText("Cancel")
FrameButtonCancel:SetNormalTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
----------------------------------------------------
local BorderButton = FrameButtonConfirm:CreateTexture(nil, "ARTWORK")
BorderButton:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
BorderButton:SetAllPoints(FrameButtonConfirm)
BorderButton:SetVertexColor(0.34, 0.34, 0.34, 0.7)
FrameButtonConfirm:SetScript("OnClick", function()
	for i = 1, 120 do
		PickupAction(i) ClearCursor()
	end
	AbyssUIClassic_ActionBarCleaner:Hide()
end)
----------------------------------------------------
local BorderButton = FrameButtonCancel:CreateTexture(nil, "ARTWORK")
BorderButton:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
BorderButton:SetAllPoints(FrameButtonCancel)
BorderButton:SetVertexColor(0.34, 0.34, 0.34, 0.7)
FrameButtonCancel:SetScript("OnClick", function()
	AbyssUIClassic_ActionBarCleaner:Hide()
end)
----------------------------------------------------
-- AbyssUIClassic_ActionBarInfo
AbyssUIClassic_ActionBarInfo = CreateFrame("Frame", "$parentAbyssUIClassic_ActionBarInfo", UIParent)
AbyssUIClassic_ActionBarInfo:Hide()
AbyssUIClassic_ActionBarInfo:SetWidth(500)
AbyssUIClassic_ActionBarInfo:SetHeight(160)
AbyssUIClassic_ActionBarInfo:SetPoint("CENTER", "UIParent", "CENTER", 0, -100)
AbyssUIClassic_ActionBarInfo:EnableMouse(true)
AbyssUIClassic_ActionBarInfo:SetClampedToScreen(true)
AbyssUIClassic_ActionBarInfo:SetMovable(true)
AbyssUIClassic_ActionBarInfo:RegisterForDrag("LeftButton")
AbyssUIClassic_ActionBarInfo:SetScript("OnDragStart", AbyssUIClassic_ActionBarInfo.StartMoving)
AbyssUIClassic_ActionBarInfo:SetScript("OnDragStop", function(self)
  self:StopMovingOrSizing()
end)
AbyssUIClassic_ActionBarInfo:SetFrameStrata("Dialog")
AbyssUIClassic_ActionBarInfo.text = AbyssUIClassic_ActionBarInfo.text or AbyssUIClassic_ActionBarInfo:CreateFontString(nil,"ARTWORK","QuestMapRewardsFont")
AbyssUIClassic_ActionBarInfo.text:SetScale(1.5)
AbyssUIClassic_ActionBarInfo.text:SetAllPoints(true)
AbyssUIClassic_ActionBarInfo.text:SetJustifyH("CENTER")
AbyssUIClassic_ActionBarInfo.text:SetJustifyV("CENTER")
AbyssUIClassic_ActionBarInfo.text:SetText("This option is for the small version of Blizzard MainBar\nGo to: Esc> Interface> ActionBar\nCheck: Bottom Left Bar, Right Bar 1 and 2.\nAbyssUI|cff0d75d4Classic|r Actionbar glitchs sometimes, reload the UI and it will be fixed (mostly of the times).\nCheck the comments section for more info.")
----------------------------------------------------
local Border = AbyssUIClassic_ActionBarInfo:CreateTexture(nil, "BACKGROUND")
Border:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
Border:SetPoint("TOPLEFT", -3, 3)
Border:SetPoint("BOTTOMRIGHT", 3, -3)
Border:SetVertexColor(0.2, 0.2, 0.2, 0.6)
----------------------------------------------------
local BorderBody = AbyssUIClassic_ActionBarInfo:CreateTexture(nil, "ARTWORK")
BorderBody:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
BorderBody:SetAllPoints(AbyssUIClassic_ActionBarInfo)
BorderBody:SetVertexColor(0.34, 0.34, 0.34, 0.7)
----------------------------------------------------
local Texture = AbyssUIClassic_ActionBarInfo:CreateTexture(nil,"BACKGROUND")
Texture:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
Texture:SetAllPoints(AbyssUIClassic_ActionBarInfo)
AbyssUIClassic_ActionBarInfo.texture = Texture
----------------------------------------------------
local FrameButtonReset = CreateFrame("Button","$parentFrameButtonReset", AbyssUIClassic_ActionBarInfo, "UIPanelButtonTemplate")
FrameButtonReset:SetHeight(24)
FrameButtonReset:SetWidth(85)
FrameButtonReset:SetPoint("BOTTOM", AbyssUIClassic_ActionBarInfo, "BOTTOM", 0, 10)
FrameButtonReset:SetText("Reload UI")
FrameButtonReset:SetNormalTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
----------------------------------------------------
local BorderButton = FrameButtonReset:CreateTexture(nil, "ARTWORK")
BorderButton:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
BorderButton:SetAllPoints(FrameButtonReset)
BorderButton:SetVertexColor(0.34, 0.34, 0.34, 0.7)
FrameButtonReset:SetScript("OnClick", function()
	AbyssUIClassic_ActionBarInfo:Hide()
	ReloadUI()
end)
----------------------------------------------------
-- AbyssUIClassic_ColorPickerFrame
AbyssUIClassic_ColorPickerFrame = CreateFrame("Frame", "$parentAbyssUIClassic_ColorPickerFrame", UIParent)
AbyssUIClassic_ColorPickerFrame:Hide()
AbyssUIClassic_ColorPickerFrame:SetWidth(400)
AbyssUIClassic_ColorPickerFrame:SetHeight(150)
AbyssUIClassic_ColorPickerFrame:SetPoint("CENTER", "UIParent", "CENTER", 0, -100)
AbyssUIClassic_ColorPickerFrame:EnableMouse(true)
AbyssUIClassic_ColorPickerFrame:SetClampedToScreen(true)
AbyssUIClassic_ColorPickerFrame:SetMovable(true)
AbyssUIClassic_ColorPickerFrame:RegisterForDrag("LeftButton")
AbyssUIClassic_ColorPickerFrame:SetScript("OnDragStart", AbyssUIClassic_ColorPickerFrame.StartMoving)
AbyssUIClassic_ColorPickerFrame:SetScript("OnDragStop", function(self)
  self:StopMovingOrSizing()
end)
AbyssUIClassic_ColorPickerFrame:SetFrameStrata("Dialog")
AbyssUIClassic_ColorPickerFrame.text = AbyssUIClassic_ColorPickerFrame.text or AbyssUIClassic_ColorPickerFrame:CreateFontString(nil,"ARTWORK","QuestMapRewardsFont")
AbyssUIClassic_ColorPickerFrame.text:SetScale(1.5)
AbyssUIClassic_ColorPickerFrame.text:SetAllPoints(true)
AbyssUIClassic_ColorPickerFrame.text:SetJustifyH("CENTER")
AbyssUIClassic_ColorPickerFrame.text:SetJustifyV("CENTER")
AbyssUIClassic_ColorPickerFrame.text:SetText("Choose a color by clicking on 'Choose a color', 'Okay' and then reload the UI.")
----------------------------------------------------
local Border = AbyssUIClassic_ColorPickerFrame:CreateTexture(nil, "BACKGROUND")
Border:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
Border:SetPoint("TOPLEFT", -3, 3)
Border:SetPoint("BOTTOMRIGHT", 3, -3)
Border:SetVertexColor(0.2, 0.2, 0.2, 0.6)
----------------------------------------------------
local BorderBody = AbyssUIClassic_ColorPickerFrame:CreateTexture(nil, "ARTWORK")
BorderBody:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
BorderBody:SetAllPoints(AbyssUIClassic_ColorPickerFrame)
BorderBody:SetVertexColor(0.34, 0.34, 0.34, 0.7)
----------------------------------------------------
local Texture = AbyssUIClassic_ColorPickerFrame:CreateTexture(nil, "BACKGROUND")
Texture:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
Texture:SetAllPoints(AbyssUIClassic_ColorPickerFrame)
AbyssUIClassic_ColorPickerFrame.texture = Texture
----------------------------------------------------
local FrameButtonColorPicker = CreateFrame("Button","$parentFrameButtonColorPicker", AbyssUIClassic_ColorPickerFrame, "UIPanelButtonTemplate")
FrameButtonColorPicker:SetHeight(24)
FrameButtonColorPicker:SetWidth(120)
FrameButtonColorPicker:SetPoint("BOTTOM", AbyssUIClassic_ColorPickerFrame, "BOTTOM", -50, 10)
FrameButtonColorPicker:SetText("Choose a Color")
FrameButtonColorPicker:SetNormalTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
----------------------------------------------------
local BorderButton = FrameButtonColorPicker:CreateTexture(nil, "ARTWORK")
BorderButton:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
BorderButton:SetAllPoints(FrameButtonColorPicker)
BorderButton:SetVertexColor(0.34, 0.34, 0.34, 0.7)
FrameButtonColorPicker:SetScript("OnClick", function()
	AbyssUIClassic_ShowColorPicker()
end)
----------------------------------------------------
local FrameButtonReset = CreateFrame("Button","$parentFrameButtonReset", AbyssUIClassic_ColorPickerFrame, "UIPanelButtonTemplate")
FrameButtonReset:SetHeight(24)
FrameButtonReset:SetWidth(85)
FrameButtonReset:SetPoint("BOTTOM", AbyssUIClassic_ColorPickerFrame, "BOTTOM", 50, 10)
FrameButtonReset:SetText("Reload UI")
FrameButtonReset:SetNormalTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
----------------------------------------------------
local BorderButton = FrameButtonReset:CreateTexture(nil, "ARTWORK")
BorderButton:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
BorderButton:SetAllPoints(FrameButtonReset)
BorderButton:SetVertexColor(0.34, 0.34, 0.34, 0.7)
FrameButtonReset:SetScript("OnClick", function()
	AbyssUIClassic_ColorPickerFrame:Hide()
	ReloadUI()
end)
--------------------------------- Save ---------------------------------
local AbyssUIClassicSave = CreateFrame("Frame")
AbyssUIClassicSave:RegisterEvent("ADDON_LOADED")
AbyssUIClassicSave:RegisterEvent("PLAYER_LOGOUT")
AbyssUIClassicSave:SetScript("OnEvent", function(self, event, arg1)
	if ( event == "ADDON_LOADED" and arg1 == "AbyssUIClassic" ) then
		if ( AbyssUIClassicCount == nil ) then
			AbyssUIClassicCount = 0
		end
		if ( AbyssUIClassicProfile == nil ) then
			AbyssUIClassicCount = AbyssUIClassicCount + 1
				AbyssUIClassicStart()
		else
			local name, elapsed = UnitName("player"), time() - AbyssUIClassicProfile
			C_Timer.After(4, function()
				print("Thanks for using |cff0d75d4AbyssUIClassic!|r The |cff5f545eDark|r Blizzard UI revamp.")
			end)
			C_Timer.After(5, function()
				AbyssUIClassicDailyInfo()
				print("|cffa5f6f3Time since last login: |r" .. name .. " you leave for |cffffcc00" .. SecondsToTime(elapsed) .. "|r")
			end)
			AbyssUIClassicFirstFrame:Hide()
		end
	elseif ( event == "PLAYER_LOGOUT" ) then
		AbyssUIClassicProfile = time()
	end
end)
-- End
