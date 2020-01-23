-- Author: Yugen
--
-- Classic
--
-- Hope you like my addOn ^^
--
-- Frames for AbyssUIClassic
--------------------------------------------------------------------------------
local addonName, addonTable = ...
-- AbyssUIClassic_AFKCameraFrame
local AbyssUIClassic_AFKCameraFrame = CreateFrame("Frame", "$parentAbyssUI_AFKCameraFrame", WorldFrame)
AbyssUIClassic_AFKCameraFrame:SetFrameStrata("HIGH")
AbyssUIClassic_AFKCameraFrame:SetScale(UIParent:GetScale())
AbyssUIClassic_AFKCameraFrame:SetAllPoints(UIParent)
AbyssUIClassic_AFKCameraFrame:SetClampedToScreen(true)
AbyssUIClassic_AFKCameraFrame:Hide()
-- Text
AbyssUIClassic_AFKCameraFrame.text = AbyssUIClassic_AFKCameraFrame.text or AbyssUIClassic_AFKCameraFrame:CreateFontString(nil, "ARTWORK", "QuestMapRewardsFont")
AbyssUIClassic_AFKCameraFrame.text:SetScale(2)
AbyssUIClassic_AFKCameraFrame.text:SetAllPoints(true)
AbyssUIClassic_AFKCameraFrame.text:SetJustifyH("BOTTOM")
AbyssUIClassic_AFKCameraFrame.text:SetJustifyV("BOTTOM")
AbyssUIClassic_AFKCameraFrame.text:SetWidth(GetScreenWidth()/4)
AbyssUIClassic_AFKCameraFrame.text:SetHeight(GetScreenHeight()/2)
AbyssUIClassic_AFKCameraFrame.text:SetText("Move to leave AFK Mode")
-- Texture
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
AbyssUIClassic_ModelFrameAFKMode:SetPoint("BOTTOMRIGHT", 50, 0)
AbyssUIClassic_ModelFrameAFKMode:SetWidth(GetScreenWidth()/4)
AbyssUIClassic_ModelFrameAFKMode:SetHeight(GetScreenHeight()/2)
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
PlayerInfo_Name1:SetScale(4)
PlayerInfo_Name1.text = PlayerInfo_Name1.text or PlayerInfo_Name1:CreateFontString(nil, "ARTWORK", "QuestMapRewardsFont")
PlayerInfo_Name1.text:SetPoint("TOP", 0, -1)
PlayerInfo_Name1.text:SetText(playerName)
-- Race
local PlayerInfo_Race1 = CreateFrame("Frame", "$parentPlayerInfo_Race1", AbyssUIClassic_AFKCameraFrame)
local race, raceEn = UnitRace("player")
PlayerInfo_Race1:SetAllPoints(AbyssUIClassic_AFKCameraFrame)
PlayerInfo_Race1:SetScale(3)
PlayerInfo_Race1.text = PlayerInfo_Race1.text or PlayerInfo_Race1:CreateFontString(nil, "ARTWORK", "QuestMapRewardsFont")
PlayerInfo_Race1.text:SetPoint("BOTTOMLEFT", 5, 100)
PlayerInfo_Race1.text:SetText(raceEn)
-- Class
local PlayerInfo_Class1 = CreateFrame("Frame", "$parentPlayerInfo_Class1", AbyssUIClassic_AFKCameraFrame)
local playerClass, englishClass = UnitClass("player")
PlayerInfo_Class1:SetAllPoints(AbyssUIClassic_AFKCameraFrame)
PlayerInfo_Class1:SetScale(3)
PlayerInfo_Class1.text = PlayerInfo_Class1.text or PlayerInfo_Class1:CreateFontString(nil, "ARTWORK", "QuestMapRewardsFont")
PlayerInfo_Class1.text:SetPoint("BOTTOMLEFT", 5, 90)
PlayerInfo_Class1.text:SetText(playerClass)
-- Level
local PlayerInfo_Level1 = CreateFrame("Frame", "$parentPlayerInfo_Level1", AbyssUIClassic_AFKCameraFrame)
local level = UnitLevel("player")
PlayerInfo_Level1:SetAllPoints(AbyssUIClassic_AFKCameraFrame)
PlayerInfo_Level1:SetScale(3)
PlayerInfo_Level1.text = PlayerInfo_Level1.text or PlayerInfo_Level1:CreateFontString(nil, "ARTWORK", "QuestMapRewardsFont")
PlayerInfo_Level1.text:SetPoint("BOTTOMLEFT", 5, 80)
PlayerInfo_Level1.text:SetText(level)
--[[
-- Honor Level
local PlayerInfo_Honor1 = CreateFrame("Frame", "$parentPlayerInfo_Class1", AbyssUI_AFKCameraFrame)
local HonorLevel = UnitHonorLevel("player")
PlayerInfo_Honor1:SetAllPoints(AbyssUI_AFKCameraFrame)
PlayerInfo_Honor1:SetScale(3)
PlayerInfo_Honor1.text = PlayerInfo_Honor1.text or PlayerInfo_Honor1:CreateFontString(nil, "ARTWORK", "QuestMapRewardsFont")
PlayerInfo_Honor1.text:SetPoint("BOTTOMLEFT", 5, 60)
PlayerInfo_Honor1.text:SetText("Honor: "..HonorLevel)
--]]
-- Zone
local PlayerInfo_CurrentZone1 = CreateFrame("Frame", "$parentPlayerInfo_Class1", AbyssUIClassic_AFKCameraFrame)
local zoneName = GetZoneText()
PlayerInfo_CurrentZone1:SetAllPoints(AbyssUIClassic_AFKCameraFrame)
PlayerInfo_CurrentZone1:SetScale(3)
PlayerInfo_CurrentZone1.text = PlayerInfo_CurrentZone1.text or PlayerInfo_CurrentZone1:CreateFontString(nil, "ARTWORK", "QuestMapRewardsFont")
PlayerInfo_CurrentZone1.text:SetPoint("BOTTOMLEFT", 5, 70)
PlayerInfo_CurrentZone1.text:SetText(zoneName)
-- Faction
local PlayerInfo_Faction1 = CreateFrame("Frame", "$parentPlayerInfo_Faction1", AbyssUIClassic_AFKCameraFrame)
local englishFaction, localizedFaction = UnitFactionGroup("player")
PlayerInfo_Faction1:SetAllPoints(AbyssUIClassic_AFKCameraFrame)
PlayerInfo_Faction1:SetScale(3)
PlayerInfo_Faction1.text = PlayerInfo_Faction1.text or PlayerInfo_Faction1:CreateFontString(nil, "ARTWORK", "QuestMapRewardsFont")
PlayerInfo_Faction1.text:SetPoint("BOTTOMLEFT", 5, 60)
PlayerInfo_Faction1.text:SetText(localizedFaction)
-- Faction Color
 if ( englishFaction == "Horde" ) then
 	PlayerInfo_Faction1.text:SetVertexColor(196/255, 30/255, 59/255)
 elseif ( englishFaction == "Alliance" ) then
 	PlayerInfo_Faction1.text:SetVertexColor(0/255, 112/255, 222/255)
 elseif ( englishFaction == "Neutral" ) then
	PlayerInfo_Faction1.text:SetVertexColor(255/255, 255/255, 255/255)
 else
 	return nil
 end
-- Guild Info
local PlayerInfo_Guild1 = CreateFrame("Frame", "$parentPlayerInfo_Class1", AbyssUIClassic_AFKCameraFrame)
local guildName, guildRankName, guildRankIndex = GetGuildInfo("player")
PlayerInfo_Guild1:SetAllPoints(AbyssUIClassic_AFKCameraFrame)
PlayerInfo_Guild1:SetScale(3)
PlayerInfo_Guild1.text = PlayerInfo_Guild1.text or PlayerInfo_Guild1:CreateFontString(nil, "ARTWORK", "QuestMapRewardsFont")
PlayerInfo_Guild1.text:SetPoint("BOTTOMLEFT", 5, 50)
PlayerInfo_Guild1.text:SetText(guildName)
-- Class colorization (all player info)
 if ( englishClass == "DEATHKNIGHT" ) then
 	for i, v in pairs({ PlayerInfo_Name1, 
 		PlayerInfo_Level1, 
 		PlayerInfo_Race1, 
 		PlayerInfo_Class1,
		PlayerInfo_CurrentZone1,
		PlayerInfo_Guild1, }) do
 		v.text:SetVertexColor(196/255, 30/255, 59/255)
 	end 
 elseif ( englishClass == "DEMONHUNTER" ) then
 	 for i, v in pairs({ PlayerInfo_Name1, 
 		PlayerInfo_Level1, 
 		PlayerInfo_Race1, 
 		PlayerInfo_Class1,
		PlayerInfo_CurrentZone1,
		PlayerInfo_Guild1,
		 }) do
 		v.text:SetVertexColor(163/255, 48/255, 201/255)
 	end 
 elseif ( englishClass == "DRUID" ) then
 	 for i, v in pairs({ PlayerInfo_Name1, 
 		PlayerInfo_Level1, 
 		PlayerInfo_Race1, 
 		PlayerInfo_Class1,
		PlayerInfo_CurrentZone1,
		PlayerInfo_Guild1, }) do
 		v.text:SetVertexColor(255/255, 125/255, 10/255)
 	end 
 elseif ( englishClass == "HUNTER" ) then
  	 for i, v in pairs({ PlayerInfo_Name1, 
 		PlayerInfo_Level1, 
 		PlayerInfo_Race1, 
 		PlayerInfo_Class1,
		PlayerInfo_CurrentZone1,
		PlayerInfo_Guild1, }) do
 		v.text:SetVertexColor(171/255, 212/255, 115/255)
 	end 
 elseif ( englishClass == "MAGE" ) then
  	 for i, v in pairs({ PlayerInfo_Name1, 
 		PlayerInfo_Level1, 
 		PlayerInfo_Race1, 
 		PlayerInfo_Class1,
		PlayerInfo_CurrentZone1,
		PlayerInfo_Guild1, }) do
 		v.text:SetVertexColor(105/255, 204/255, 240/255)
 	end 
 elseif ( englishClass == "MONK" ) then
  	 for i, v in pairs({ PlayerInfo_Name1, 
 		PlayerInfo_Level1, 
 		PlayerInfo_Race1, 
 		PlayerInfo_Class1,
		PlayerInfo_CurrentZone1,
		PlayerInfo_Guild1, }) do
 		v.text:SetVertexColor(0/255, 255/255, 150/255)
 	end 
 elseif ( englishClass == "PALADIN" ) then
  	 for i, v in pairs({ PlayerInfo_Name1, 
 		PlayerInfo_Level1, 
 		PlayerInfo_Race1, 
 		PlayerInfo_Class1,
		PlayerInfo_CurrentZone1,
		PlayerInfo_Guild1, }) do
 		v.text:SetVertexColor(245/255, 140/255, 186/255)
 	end 
 elseif ( englishClass == "PRIEST" ) then
  	 for i, v in pairs({ PlayerInfo_Name1, 
 		PlayerInfo_Level1, 
 		PlayerInfo_Race1, 
 		PlayerInfo_Class1,
		PlayerInfo_CurrentZone1,
		PlayerInfo_Guild1, }) do
 		v.text:SetVertexColor(255/255, 255/255, 255/255)
 	end 
 elseif ( englishClass == "ROGUE" ) then
  	 for i, v in pairs({ PlayerInfo_Name1, 
 		PlayerInfo_Level1, 
 		PlayerInfo_Race1, 
 		PlayerInfo_Class1,
		PlayerInfo_CurrentZone1,
		PlayerInfo_Guild1, }) do
 		v.text:SetVertexColor(255/255, 245/255, 105/255)
 	end 
 elseif ( englishClass == "SHAMAN" ) then
  	 for i, v in pairs({ PlayerInfo_Name1, 
 		PlayerInfo_Level1, 
 		PlayerInfo_Race1, 
 		PlayerInfo_Class1,
		PlayerInfo_CurrentZone1,
		PlayerInfo_Guild1, }) do
 		v.text:SetVertexColor(0/255, 112/255, 222/255)
 	end 
 elseif ( englishClass == "WARLOCK" ) then
  	 for i, v in pairs({ PlayerInfo_Name1, 
 		PlayerInfo_Level1, 
 		PlayerInfo_Race1, 
 		PlayerInfo_Class1,
		PlayerInfo_CurrentZone1,
		PlayerInfo_Guild1, }) do
 		v.text:SetVertexColor(148/255, 130/255, 201/255)
 	end 
 elseif ( englishClass == "WARRIOR" ) then
  	 for i, v in pairs({ PlayerInfo_Name1, 
 		PlayerInfo_Level1, 
 		PlayerInfo_Race1, 
 		PlayerInfo_Class1,
		PlayerInfo_CurrentZone1,
		PlayerInfo_Guild1, }) do
 		v.text:SetVertexColor(199/255, 156/255, 110/255)
 	end 
 else
 	return nil
 end
 -- Gold Amount
local PlayerInfo_GoldAmount1 = CreateFrame("Frame", "$parentPlayerInfo_GoldAmount1", AbyssUIClassic_AFKCameraFrame)
PlayerInfo_GoldAmount1:RegisterEvent("PLAYER_FLAGS_CHANGED")
PlayerInfo_GoldAmount1:RegisterEvent("PLAYER_ENTERING_WORLD")
local money = GetCoinTextureString(GetMoney())
PlayerInfo_GoldAmount1:SetAllPoints(AbyssUIClassic_AFKCameraFrame)
PlayerInfo_GoldAmount1:SetScale(2)
PlayerInfo_GoldAmount1.text = PlayerInfo_GoldAmount1.text or PlayerInfo_GoldAmount1:CreateFontString(nil, "ARTWORK", "QuestMapRewardsFont")
PlayerInfo_GoldAmount1.text:SetPoint("TOPLEFT", 5, -1)
PlayerInfo_GoldAmount1.text:SetText("Resources: "..money)
-- ExtraInfoAFKMode
-- CLock
local ExtraInfo_Clock1 = CreateFrame("Frame", "$parentExtraInfo_Clock1", AbyssUIClassic_AFKCameraFrame)
ExtraInfo_Clock1:SetAllPoints(AbyssUIClassic_AFKCameraFrame)
ExtraInfo_Clock1:SetScale(3)
ExtraInfo_Clock1.text = ExtraInfo_Clock1.text or ExtraInfo_Clock1:CreateFontString(nil, "ARTWORK", "QuestMapRewardsFont")
ExtraInfo_Clock1.text:SetPoint("TOPRIGHT", -5, -1)
function ExtraInfo_Clock1:onUpdate(sinceLastUpdate)
	self.sinceLastUpdate = (self.sinceLastUpdate or 0) + sinceLastUpdate
	if ( self.sinceLastUpdate >= 5 ) then
		if ( AbyssUIClassicAddonSettings.ExtraFunctionAmericanClock == true ) then
			local dataTime = date("%H:%M |cffffcc00%m/%d/%y|r ")
		else
			local dataTime = date("%H:%M |cffffcc00%d/%m/%y|r ")
		end
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
	--HonorLevel = UnitHonorLevel("player")
 	zoneName = GetZoneText()
	guildName, guildRankName, guildRankIndex = GetGuildInfo("player")
	if ( AbyssUIClassicAddonSettings.ExtraFunctionAmericanClock == true ) then
		dataTime = date("%H:%M |cffffcc00%m/%d/%y|r ")
	else
		dataTime = date("%H:%M |cffffcc00%d/%m/%y|r ")
	end
	englishFaction, localizedFaction = UnitFactionGroup("player")
	money = GetCoinTextureString(GetMoney())
	-- Set
	PlayerInfo_Name1.text:SetText(playerName)
	PlayerInfo_Level1.text:SetText("Level: "..level)
	PlayerInfo_Race1.text:SetText(race)
	PlayerInfo_Class1.text:SetText(playerClass)
	ExtraInfo_Clock1.text:SetText(dataTime)
	--PlayerInfo_Honor1.text:SetText("Honor: "..HonorLevel)
	PlayerInfo_GoldAmount1.text:SetText("Resources: "..money)
	PlayerInfo_CurrentZone1.text:SetText(zoneName)
	PlayerInfo_Guild1.text:SetText(guildName)
end
-- Clock Update
local timer = ExtraInfo_Clock1:CreateAnimationGroup()
local timerAnim = timer:CreateAnimation()
timerAnim:SetDuration(5) -- how often you want it to finish
timer:SetScript("OnFinished", function(self, requested)
    -- requested = true if you used timer:Stop(), false if it finished naturally
    AbyssUIClassic_UpdateAFKCameraData()
    self:Play() -- start it over again
end)
timer:Play()
----------------------------------------------------
-- AbyssUIClassic_AFKCamera SetScript
AbyssUIClassic_AFKCamera:SetScript("OnEvent", function(self, event, ...)
	local inInstance, instanceType = IsInInstance()
	if ( AbyssUIClassicAddonSettings.AFKCammeraFrame ~= true ) then
		if ( event == "PLAYER_FLAGS_CHANGED" or event == "PLAYER_ENTERING_WORLD" ) then
			local isAFK = UnitIsAFK("player")
			if isAFK == true and inInstance ~= true then
				UIFrameFadeIn(UIParent, 4, 1, 0)
				AbyssUIClassic_UpdateAFKCameraData()
				UIFrameFadeIn(AbyssUIClassic_AFKCameraFrame, 3, 0, 1)
			elseif isAFK == false and inInstance ~= true then
				AbyssUIClassic_AFKCameraFrame:Hide()
				UIParent:SetAlpha(1)
			elseif isAFK == true and inInstance == true then
				AbyssUIClassic_AFKCameraFrame:Hide()
				UIParent:SetAlpha(1)
			elseif isAFK == false and inInstance == true then
				AbyssUIClassic_AFKCameraFrame:Hide()
				UIParent:SetAlpha(1)
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
AbyssUIClassic_LevelUpFrame:SetFrameStrata("DIALOG")
AbyssUIClassic_LevelUpFrame:SetWidth(GetScreenWidth())
AbyssUIClassic_LevelUpFrame:SetHeight(GetScreenHeight()/4)
AbyssUIClassic_LevelUpFrame:SetClampedToScreen(true)
AbyssUIClassic_LevelUpFrame:SetPoint("CENTER", "UIParent", "CENTER", 0, 0)
AbyssUIClassic_LevelUpFrame.text = AbyssUIClassic_LevelUpFrame.text or AbyssUIClassic_LevelUpFrame:CreateFontString(nil, "ARTWORK", "QuestMapRewardsFont")
AbyssUIClassic_LevelUpFrame.text:SetScale(6)
AbyssUIClassic_LevelUpFrame.text:SetPoint("CENTER", 0, 5)
AbyssUIClassic_LevelUpFrame.text:SetText("You've Reached")
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
-- Player Name/Level
local LevelUp_PlayerInfo = CreateFrame("Frame", "$parentLevelUp_PlayerLevel", AbyssUIClassic_LevelUpFrame)
LevelUp_PlayerInfo:SetAllPoints(AbyssUIClassic_LevelUpFrame)
LevelUp_PlayerInfo:SetScale(6)
LevelUp_PlayerInfo.text = LevelUp_PlayerInfo.text or LevelUp_PlayerInfo:CreateFontString(nil, "ARTWORK", "QuestMapRewardsFont")
LevelUp_PlayerInfo.text:SetPoint("CENTER", 0, -5)
LevelUp_PlayerInfo.text:SetText("|cfff2dc7fLevel|r ".."|cfff2dc7f"..level.."|r")
LevelUp_PlayerInfo.text:SetWidth(GetScreenWidth())
LevelUp_PlayerInfo.text:SetHeight(GetScreenHeight()/4)
local function AbyssUIClassic_UpdateYouDiedLevelUpData()
	-- Get
	level = UnitLevel("player")
	-- Set
	LevelUp_PlayerInfo.text:SetText("|cfff2dc7fLevel|r ".."|cfff2dc7f"..level.."|r")
end
AbyssUIClassic_LevelUpFrame:RegisterEvent("PLAYER_LEVEL_UP")
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
AbyssUIClassicFirstFrame:SetWidth(GetScreenWidth())
AbyssUIClassicFirstFrame:SetHeight(GetScreenHeight())
AbyssUIClassicFirstFrame:SetPoint("CENTER", "UIParent", "CENTER", 0, 0)
AbyssUIClassicFirstFrame:EnableMouse(true)
AbyssUIClassicFirstFrame:SetFrameStrata("HIGH")
AbyssUIClassicFirstFrame.text = AbyssUIClassicFirstFrame.text or AbyssUIClassicFirstFrame:CreateFontString(nil, "ARTWORK", "QuestMapRewardsFont")
AbyssUIClassicFirstFrame.text:SetScale(5)
AbyssUIClassicFirstFrame.text:SetAllPoints(true)
AbyssUIClassicFirstFrame.text:SetJustifyH("CENTER")
AbyssUIClassicFirstFrame.text:SetJustifyV("CENTER")
AbyssUIClassicFirstFrame.text:SetText("Thank you for choosing AbyssUI|cff0d75d4Classic|r!")
----------------------------------------------------
local Subtittle = CreateFrame("Frame", "$parentSubtittle", AbyssUIClassicFirstFrame)
Subtittle:SetWidth(GetScreenWidth())
Subtittle:SetHeight(GetScreenHeight())
Subtittle:SetPoint("CENTER", AbyssUIClassicFirstFrame, "CENTER", 0, -50)
Subtittle:EnableMouse(false)
Subtittle:SetFrameStrata("HIGH")
Subtittle.text = Subtittle.text or Subtittle:CreateFontString(nil, "ARTWORK", "QuestMapRewardsFont")
Subtittle.text:SetScale(3)
Subtittle.text:SetAllPoints(true)
Subtittle.text:SetJustifyH("CENTER")
Subtittle.text:SetJustifyV("CENTER")
Subtittle.text:SetText("The improved World of Warcraft user interface")
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
local CloseButton = CreateFrame("Button", "$parentFrameButton", AbyssUIClassicFirstFrame, "UIPanelButtonTemplate")
CloseButton:SetHeight(40)
CloseButton:SetWidth(40)
CloseButton:SetPoint("TOPRIGHT", AbyssUIClassicFirstFrame, "TOPRIGHT", 0, 0)
CloseButton:SetText("x")
CloseButton:SetNormalTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
----------------------------------------------------
local BorderCloseButton = CloseButton:CreateTexture(nil, "ARTWORK")
BorderCloseButton:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
BorderCloseButton:SetAllPoints(CloseButton)
BorderCloseButton:SetVertexColor(0.34, 0.34, 0.34, 1)
CloseButton:SetScript("OnClick", function()
	AbyssUIClassicFirstFrame:Hide()
	AbyssUIClassicSecondFrame:Show()
end)
----------------------------------------------------
local FrameButton = CreateFrame("Button", "$parentFrameButton", AbyssUIClassicFirstFrame, "UIPanelButtonTemplate")
FrameButton:SetHeight(GetScreenHeight())
FrameButton:SetWidth(GetScreenWidth())
FrameButton:SetPoint("CENTER", AbyssUIClassicFirstFrame, "CENTER", 0, 0)
FrameButton:SetNormalTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
FrameButton:SetAlpha(0)
FrameButton:SetScript("OnClick", function()
	UIFrameFadeIn(AbyssUIClassicFirstFrame, 1, 1, 0)
	C_Timer.After(1, function()
		AbyssUIClassicFirstFrame:Hide()
		UIFrameFadeIn(AbyssUIClassicSecondFrame, 1, 0, 1)
	end)
end)
----------------------------------------------------
-- AbyssUIClassicSecondFrame
AbyssUIClassicSecondFrame = CreateFrame("Frame", "$parentAbyssUIClassicSecondFrame", UIParent)
AbyssUIClassicSecondFrame:Hide()
AbyssUIClassicSecondFrame:SetWidth(GetScreenWidth())
AbyssUIClassicSecondFrame:SetHeight(GetScreenHeight())
AbyssUIClassicSecondFrame:SetPoint("CENTER", "UIParent", "CENTER", 0, 0)
AbyssUIClassicSecondFrame:EnableMouse(true)
AbyssUIClassicSecondFrame:SetFrameStrata("HIGH")
AbyssUIClassicSecondFrame.text = AbyssUIClassicSecondFrame.text or AbyssUIClassicSecondFrame:CreateFontString(nil, "ARTWORK", "QuestMapRewardsFont")
AbyssUIClassicSecondFrame.text:SetScale(2)
AbyssUIClassicSecondFrame.text:SetAllPoints(true)
AbyssUIClassicSecondFrame.text:SetJustifyH("CENTER")
AbyssUIClassicSecondFrame.text:SetJustifyV("CENTER")
AbyssUIClassicSecondFrame.text:SetText("First we need to save the variables"
.." of the interface for the first use of AbyssUI.\n\nYou can choose to configure by yourself (Confirm)"
.." or use the recommended settings (Recommended).\n\nIf you choose to configure,"
.." the game will reload and then you can go to the configuration panel by typing '/abyssui config'.\n\n"
.."If you choose the recommended settings, the UI will load the settings that are the mostly"
.." recommended to use.\nYou always can configure the interface the way you would like by"
.." typing /abyssui config in the chat.")
----------------------------------------------------
local AbyssUIClassicBorder = AbyssUIClassicSecondFrame:CreateTexture(nil, "BACKGROUND")
AbyssUIClassicBorder:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
AbyssUIClassicBorder:SetPoint("TOPLEFT", -3, 3)
AbyssUIClassicBorder:SetPoint("BOTTOMRIGHT", 3, -3)
AbyssUIClassicBorder:SetVertexColor(0.2, 0.2, 0.2, 0.6)
----------------------------------------------------
local BorderBody = AbyssUIClassicSecondFrame:CreateTexture(nil, "ARTWORK")
BorderBody:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
BorderBody:SetAllPoints(AbyssUIClassicSecondFrame)
BorderBody:SetVertexColor(0.34, 0.34, 0.34, 0.7)
----------------------------------------------------
local Texture = AbyssUIClassicSecondFrame:CreateTexture(nil, "BACKGROUND")
Texture:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
Texture:SetAllPoints(AbyssUIClassicSecondFrame)
AbyssUIClassicSecondFrame.texture = Texture
----------------------------------------------------
local FrameButton2 = CreateFrame("Button", "$parentFrameButton", AbyssUIClassicSecondFrame, "UIPanelButtonTemplate")
FrameButton2:SetHeight(40)
FrameButton2:SetWidth(120)
FrameButton2:SetPoint("CENTER", AbyssUIClassicSecondFrame, "CENTER", 100, -200)
FrameButton2:SetText("Recommended")
FrameButton2.GlowTexture = FrameButton2:CreateTexture(nil, "OVERLAY", "UIPanelButtonHighlightTexture")
FrameButton2.GlowTexture:SetAllPoints()
FrameButton2.GlowTexture:Hide()
FrameButton2.Glow = FrameButton2:CreateAnimationGroup()
FrameButton2.Glow:SetLooping("REPEAT")
local anim = FrameButton2.Glow:CreateAnimation("Alpha")
	anim:SetChildKey("GlowTexture")
	anim:SetOrder(1)
	anim:SetFromAlpha(0)
	anim:SetToAlpha(1)
	anim:SetDuration(0.5)
anim = FrameButton2.Glow:CreateAnimation("Alpha")
	anim:SetOrder(2)
	anim:SetChildKey("GlowTexture")
	anim:SetFromAlpha(1)
	anim:SetToAlpha(0)
	anim:SetDuration(0.5)
FrameButton2.Glow:SetScript("OnPlay", function(self)
		self:GetParent().GlowTexture:Show()
	end)
FrameButton2.Glow:SetScript("OnStop", function(self)
		self:GetParent().GlowTexture:Hide()
	end)
if not FrameButton2.running then
	FrameButton2.running = true
	FrameButton2.Glow:Play()
else
	FrameButton2.running = false
	FrameButton2.Glow:Stop()
end
----------------------------------------------------
local BorderButton = FrameButton2:CreateTexture(nil, "ARTWORK")
BorderButton:SetAllPoints(FrameButton2)
FrameButton2:SetScript("OnClick", function()
	-- Set
	for i, v in pairs {
		addonTable.CameraSmooth50,
		addonTable.InspectTarget,
		addonTable.AutoSellGray,
		addonTable.DisableHealingSpam,
		addonTable.ConfirmPopUps,
		addonTable.UnitFrameImproved,
		addonTable.HideUnitImprovedFaction,
	} do
	 	v:SetChecked(true)
	end
	-- Get
	AbyssUIClassicAddonSettings.ExtraFunctionCameraSmooth50 = addonTable.CameraSmooth50:GetChecked()
	AbyssUIClassicAddonSettings.ExtraFunctionInspectTarget = addonTable.InspectTarget:GetChecked()
	AbyssUIClassicAddonSettings.ExtraFunctionSellGray = addonTable.AutoSellGray:GetChecked()
	AbyssUIClassicAddonSettings.ExtraFunctionDisableHealingSpam = addonTable.DisableHealingSpam:GetChecked()
	AbyssUIClassicAddonSettings.ExtraFunctionConfirmPopUps = addonTable.ConfirmPopUps:GetChecked()
	AbyssUIClassicAddonSettings.UnitFrameImproved = addonTable.UnitFrameImproved:GetChecked()
	AbyssUIClassicAddonSettings.HideUnitImprovedFaction = addonTable.HideUnitImprovedFaction:GetChecked()
	AbyssUIClassicSecondFrame:Hide()
	FrameButton2.Glow:Finish()
	ReloadUI()
end)
----------------------------------------------------
local FrameButton = CreateFrame("Button", "$parentFrameButton", AbyssUIClassicSecondFrame, "UIPanelButtonTemplate")
FrameButton:SetHeight(40)
FrameButton:SetWidth(120)
FrameButton:SetPoint("CENTER", AbyssUIClassicSecondFrame, "CENTER", -100, -200)
FrameButton:SetText("Confirm")
----------------------------------------------------
local BorderButton = FrameButton:CreateTexture(nil, "ARTWORK")
BorderButton:SetAllPoints(FrameButton)
FrameButton:SetScript("OnClick", function()
	AbyssUIClassicSecondFrame:Hide()
	FrameButton2.Glow:Finish()
	ReloadUI()
end)
----------------------------------------------------
local CloseButton = CreateFrame("Button", "$parentFrameButton", AbyssUIClassicSecondFrame, "UIPanelButtonTemplate")
CloseButton:SetHeight(40)
CloseButton:SetWidth(40)
CloseButton:SetPoint("TOPRIGHT", AbyssUIClassicSecondFrame, "TOPRIGHT", 0, 0)
CloseButton:SetText("x")
CloseButton:SetNormalTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
----------------------------------------------------
local BorderCloseButton = CloseButton:CreateTexture(nil, "ARTWORK")
BorderCloseButton:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
BorderCloseButton:SetAllPoints(CloseButton)
BorderCloseButton:SetVertexColor(0.34, 0.34, 0.34, 1)
CloseButton:SetScript("OnClick", function()
	AbyssUIClassicSecondFrame:Hide()
	FrameButton2.Glow:Finish()
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
-- AbyssUIClassic_ReloadFrameFadeUI
AbyssUIClassic_ReloadFrameFadeUI = CreateFrame("Frame", "$parentAbyssUIClassic_ReloadFrameFadeUI", UIParent)
AbyssUIClassic_ReloadFrameFadeUI:Hide()
AbyssUIClassic_ReloadFrameFadeUI:SetWidth(500)
AbyssUIClassic_ReloadFrameFadeUI:SetHeight(180)
AbyssUIClassic_ReloadFrameFadeUI:SetPoint("CENTER", "UIParent", "CENTER", 0, -100)
AbyssUIClassic_ReloadFrameFadeUI:EnableMouse(true)
AbyssUIClassic_ReloadFrameFadeUI:SetClampedToScreen(true)
AbyssUIClassic_ReloadFrameFadeUI:SetMovable(true)
AbyssUIClassic_ReloadFrameFadeUI:RegisterForDrag("LeftButton")
AbyssUIClassic_ReloadFrameFadeUI:SetScript("OnDragStart", AbyssUIClassic_ReloadFrameFadeUI.StartMoving)
AbyssUIClassic_ReloadFrameFadeUI:SetScript("OnDragStop", function(self)
  self:StopMovingOrSizing()
end)
AbyssUIClassic_ReloadFrameFadeUI:SetFrameStrata("Dialog")
AbyssUIClassic_ReloadFrameFadeUI.text = AbyssUIClassic_ReloadFrameFadeUI.text or AbyssUIClassic_ReloadFrameFadeUI:CreateFontString(nil,"ARTWORK","QuestMapRewardsFont")
AbyssUIClassic_ReloadFrameFadeUI.text:SetScale(1.5)
AbyssUIClassic_ReloadFrameFadeUI.text:SetAllPoints(true)
AbyssUIClassic_ReloadFrameFadeUI.text:SetJustifyH("CENTER")
AbyssUIClassic_ReloadFrameFadeUI.text:SetJustifyV("CENTER")
AbyssUIClassic_ReloadFrameFadeUI.text:SetText("It will only hide Blizzard frames, addons have their own frames,\n a good addon probably has an option to hide while out of combat.\n I could have added the entire interface to be hidden,\n but that would prevent interaction with some frames (eg auction, loot, quest, frames).")
----------------------------------------------------
local Border = AbyssUIClassic_ReloadFrameFadeUI:CreateTexture(nil, "BACKGROUND")
Border:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
Border:SetPoint("TOPLEFT", -3, 3)
Border:SetPoint("BOTTOMRIGHT", 3, -3)
Border:SetVertexColor(0.2, 0.2, 0.2, 0.6)
----------------------------------------------------
local BorderBody = AbyssUIClassic_ReloadFrameFadeUI:CreateTexture(nil, "ARTWORK")
BorderBody:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
BorderBody:SetAllPoints(AbyssUIClassic_ReloadFrameFadeUI)
BorderBody:SetVertexColor(0.34, 0.34, 0.34, 0.7)
----------------------------------------------------
local Texture = AbyssUIClassic_ReloadFrameFadeUI:CreateTexture(nil, "BACKGROUND")
Texture:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
Texture:SetAllPoints(AbyssUIClassic_ReloadFrameFadeUI)
AbyssUIClassic_ReloadFrameFadeUI.texture = Texture
----------------------------------------------------
local FrameButtonConfirm = CreateFrame("Button","$parentFrameButtonConfirm", AbyssUIClassic_ReloadFrameFadeUI, "UIPanelButtonTemplate")
FrameButtonConfirm:SetHeight(24)
FrameButtonConfirm:SetWidth(70)
FrameButtonConfirm:SetPoint("BOTTOM", AbyssUIClassic_ReloadFrameFadeUI, "BOTTOM", 0, 10)
FrameButtonConfirm:SetText("Confirm")
FrameButtonConfirm:SetNormalTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
----------------------------------------------------
local BorderButton = FrameButtonConfirm:CreateTexture(nil, "ARTWORK")
BorderButton:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
BorderButton:SetAllPoints(FrameButtonConfirm)
BorderButton:SetVertexColor(0.34, 0.34, 0.34, 0.7)
FrameButtonConfirm:SetScript("OnClick", function()
	AbyssUIClassic_ReloadFrameFadeUI:Hide()
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
AbyssUIClassic_ActionBarInfo.text:SetText("AbyssUI|cff0d75d4Classic|r Actionbar could glitch sometimes.")
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
			AbyssUIClassicFirstFrame:Hide()
		end
	elseif ( event == "PLAYER_LOGOUT" ) then
		AbyssUIClassicProfile = time()
	else
		return nil
	end
end)
-- End
