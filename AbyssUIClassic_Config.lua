-- Author: Yugen
--
-- Classic
--
-- Hope you like my addOn ^^
--
-- Configuration page for AbyssUIClassic
--------------------------------------------------------------------------------
local AbyssUIClassic_Config = {}
local addonName, addonTable = ...

local function InitSettings()
AbyssUIClassic_Config.panel = CreateFrame( "Frame", "$parentAbyssUIClassic_Config", InterfaceOptionsFramePanelContainer)
-- Register in the Interface Addon Options GUI
-- Set the name for the Category for the Options Panel
AbyssUIClassic_Config.panel.name = "AbyssUI|cff0d75d4Classic|r"
-- Add the panel to the Interface Options
InterfaceOptions_AddCategory(AbyssUIClassic_Config.panel, addonName)
--Child Panels
AbyssUIClassic_Config.childpanel1 = CreateFrame( "Frame", "$parentConfigChild_HideElements", AbyssUIClassic_Config.panel)
AbyssUIClassic_Config.childpanel1.name = "ActionBar"
AbyssUIClassic_Config.childpanel1.parent = AbyssUIClassic_Config.panel.name
InterfaceOptions_AddCategory(AbyssUIClassic_Config.childpanel1)
--
AbyssUIClassic_Config.childpanel2 = CreateFrame( "Frame", "$parentConfigChild_PortraitColorization", AbyssUIClassic_Config.panel)
AbyssUIClassic_Config.childpanel2.name = "Hide Elements"
AbyssUIClassic_Config.childpanel2.parent = AbyssUIClassic_Config.panel.name
InterfaceOptions_AddCategory(AbyssUIClassic_Config.childpanel2)
--
AbyssUIClassic_Config.childpanel3 = CreateFrame( "Frame", "$parentConfigChild_Miscellaneous", AbyssUIClassic_Config.panel)
AbyssUIClassic_Config.childpanel3.name = "Miscellaneous"
AbyssUIClassic_Config.childpanel3.parent = AbyssUIClassic_Config.panel.name
InterfaceOptions_AddCategory(AbyssUIClassic_Config.childpanel3)
--
AbyssUIClassic_Config.childpanel4 = CreateFrame( "Frame", "$parentConfigChild_Miscellaneous", AbyssUIClassic_Config.panel)
AbyssUIClassic_Config.childpanel4.name = "Themes"
AbyssUIClassic_Config.childpanel4.parent = AbyssUIClassic_Config.panel.name
InterfaceOptions_AddCategory(AbyssUIClassic_Config.childpanel4)
-- Title
local Frame = CreateFrame("Frame","$parentFrameButtonTitle", AbyssUIClassic_Config.panel)
Frame:SetPoint("CENTER", AbyssUIClassic_Config.panel, "TOP", 0, -20)
Frame:SetHeight(24)
Frame:SetWidth(70)
Frame:SetScale(1.5)
Frame = Frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
Frame:SetPoint("CENTER")
Frame:SetText("AbyssUI|cff0d75d4Classic|r")
-- SubTittle
local Frame = CreateFrame("Frame","$parentFrameButtonSubTitle", AbyssUIClassic_Config.panel)
Frame:SetPoint("CENTER", AbyssUIClassic_Config.panel, "TOP", 0, -80)
Frame:SetHeight(24)
Frame:SetWidth(200)
Frame:SetScale(1.1)
Frame = Frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
Frame:SetPoint("CENTER")
Frame:SetText("Thanks for using AbyssUI|cff0d75d4Classic|r.\nIf you enjoy this addon,"..
" consider sharing with your friends\n or even making a donation."..
" It helps a lot!\nThis is a minimalist UI that makes changes directly to the WoW frames,"..
"\nusing nearly the same amount of CPU/RAM as the Blizzard default UI.\n\n"..
"Check the options by clicking in the (+) button")
--Special Thanks
local Frame = CreateFrame("Frame","$parentFrameButtonSubTitle", AbyssUIClassic_Config.panel)
Frame:SetPoint("BOTTOMLEFT", AbyssUIClassic_Config.panel, "BOTTOMLEFT", 10, 70)
Frame:SetHeight(24)
Frame:SetWidth(200)
Frame:SetScale(1)
Frame = Frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
Frame:SetPoint("LEFT")
Frame:SetText("|cff0d75d4Special Thanks|r")
local Frame1 = CreateFrame("Frame","$parentFrameButtonSubTitle", AbyssUIClassic_Config.panel)
Frame1:SetPoint("BOTTOMLEFT", AbyssUIClassic_Config.panel, "BOTTOMLEFT", 10, 50)
Frame1:SetHeight(24)
Frame1:SetWidth(200)
Frame1:SetScale(1)
Frame1 = Frame1:CreateFontString(nil, "OVERLAY", "GameFontNormal")
Frame1:SetPoint("LEFT")
Frame1:SetText("|cfff2dc7fFizzlemizz|r for helping me with programming questions.")
local Frame2 = CreateFrame("Frame","$parentFrameButtonSubTitle", AbyssUIClassic_Config.panel)
Frame2:SetPoint("BOTTOMLEFT", AbyssUIClassic_Config.panel, "BOTTOMLEFT", 10, 30)
Frame2:SetHeight(24)
Frame2:SetWidth(200)
Frame2:SetScale(1)
Frame2 = Frame2:CreateFontString(nil, "OVERLAY", "GameFontNormal")
Frame2:SetPoint("LEFT")
Frame2:SetText("|cfff2dc7fFry|r for helping me with grammatical errors.")
local Frame3 = CreateFrame("Frame","$parentFrameButtonSubTitle", AbyssUIClassic_Config.panel)
Frame3:SetPoint("BOTTOMLEFT", AbyssUIClassic_Config.panel, "BOTTOMLEFT", 10, 10)
Frame3:SetHeight(24)
Frame3:SetWidth(200)
Frame3:SetScale(1)
Frame3 = Frame3:CreateFontString(nil, "OVERLAY", "GameFontNormal")
Frame3:SetPoint("LEFT")
Frame3:SetText("|cfff2dc7fKawF|r by UnitFrame Improved, so I could create a really nice"..
" UnitFrame for AbyssUI.")
-- Panel 01 (ActionBar)
local Frame = CreateFrame("Frame","$parentFrameButtonPanel01", AbyssUIClassic_Config.childpanel1)
Frame:SetPoint("CENTER", AbyssUIClassic_Config.childpanel1, "TOP", 0, -20)
Frame:SetWidth(120)
Frame:SetHeight(24)
Frame:SetScale(1.5)
Frame = Frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
Frame:SetPoint("CENTER")
Frame:SetText("AbyssUI|cff0d75d4Classic|r Actionbar")
-- Panel01 Title
local Frame = CreateFrame("Frame","$parentFrameButtonTitle", AbyssUIClassic_Config.childpanel1)
Frame:SetPoint("CENTER", AbyssUIClassic_Config.childpanel1, "TOP", 0, -35)
Frame:SetHeight(24)
Frame:SetWidth(70)
Frame:SetScale(1.5)
Frame = Frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
Frame:SetPoint("CENTER")
Frame:SetText("|cff0d75d4Attention|r")
-- Panel01 SubTittle
local Frame = CreateFrame("Frame","$parentFrameButtonSubTitle", AbyssUIClassic_Config.childpanel1)
Frame:SetPoint("CENTER", AbyssUIClassic_Config.childpanel1, "TOP", 0, -85)
Frame:SetHeight(24)
Frame:SetWidth(200)
Frame:SetScale(1.1)
Frame = Frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
Frame:SetPoint("CENTER")
Frame:SetText("If you prefer a customizable actionbar,"..
" I highly recommend installing either\nBartender4 or Dominos."..
" You can continue to use my settings if you prefer,\nbut the options are much more limited.")
-- Panel 02 (HideElements)
local Frame = CreateFrame("Frame","$parentFrameButtonPanel02", AbyssUIClassic_Config.childpanel2)
Frame:SetPoint("CENTER", AbyssUIClassic_Config.childpanel2, "TOP", 0, -20)
Frame:SetWidth(120)
Frame:SetHeight(24)
Frame:SetScale(1.5)
Frame = Frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
Frame:SetPoint("CENTER")
Frame:SetText("Hide Elements")
-- Panel 03 (Miscellaneous)
local Frame = CreateFrame("Frame","$parentFrameButtonPanel03", AbyssUIClassic_Config.childpanel3)
Frame:SetPoint("CENTER", AbyssUIClassic_Config.childpanel3, "TOP", 0, -20)
Frame:SetWidth(120)
Frame:SetHeight(24)
Frame:SetScale(1.5)
Frame = Frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
Frame:SetPoint("CENTER")
Frame:SetText("Miscellaneous")
-- Panel 04 (Themes)
local Frame = CreateFrame("Frame","$parentFrameButtonPanel04", AbyssUIClassic_Config.childpanel4)
Frame:SetPoint("CENTER", AbyssUIClassic_Config.childpanel4, "TOP", -150, -20)
Frame:SetWidth(120)
Frame:SetHeight(24)
Frame:SetScale(1.5)
Frame = Frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
Frame:SetPoint("CENTER")
Frame:SetText("Player Portrait")
-- Panel 05 (Themes)
local Frame = CreateFrame("Frame","$parentFrameButtonPanel05", AbyssUIClassic_Config.childpanel4)
Frame:SetPoint("CENTER", AbyssUIClassic_Config.childpanel4, "TOP", 120, -20)
Frame:SetWidth(120)
Frame:SetHeight(24)
Frame:SetScale(1.5)
Frame = Frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
Frame:SetPoint("CENTER")
Frame:SetText("Frame Colorization")
-- Panel 05.01 (Themes)
local Frame = CreateFrame("Frame","$parentFrameButtonPanel051", AbyssUIClassic_Config.childpanel4)
Frame:SetPoint("CENTER", AbyssUIClassic_Config.childpanel4, "TOP", 90, -70)
Frame:SetWidth(120)
Frame:SetHeight(24)
Frame:SetScale(1)
Frame = Frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
Frame:SetPoint("CENTER")
Frame:SetText("- Preset Colors")
-- Panel 05.02 (Themes)
local Frame = CreateFrame("Frame","$parentFrameButtonPanel052", AbyssUIClassic_Config.childpanel4)
Frame:SetPoint("CENTER", AbyssUIClassic_Config.childpanel4, "CENTER", 98, -50)
Frame:SetWidth(120)
Frame:SetHeight(24)
Frame:SetScale(1)
Frame = Frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
Frame:SetPoint("CENTER")
Frame:SetText("- Choose a Color")
-- Panel 06 (Themes)
local Frame = CreateFrame("Frame","$parentFrameButtonPanel06", AbyssUIClassic_Config.childpanel4)
Frame:SetPoint("CENTER", AbyssUIClassic_Config.childpanel4, "CENTER", -180, -35)
Frame:SetWidth(120)
Frame:SetHeight(24)
Frame:SetScale(1.5)
Frame = Frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
Frame:SetPoint("CENTER")
Frame:SetText("Extras")
--------------------------------- Buttons ---------------------------------
-- AbyssUIClassic DailyInfo --
local FrameButton = CreateFrame("Button","$parentExtraDailyInfoButton", AbyssUIClassic_Config.panel, "UIPanelButtonTemplate")
FrameButton:SetHeight(24)
FrameButton:SetWidth(140)
FrameButton:SetPoint("CENTER", AbyssUIClassic_Config.panel, "TOP", -200, -200)
FrameButton:SetText("Classic DailyInfo")
FrameButton:SetScript("OnClick", function()
  C_WowTokenPublic.UpdateMarketPrice()
  AbyssUIClassicDailyInfo()
end)
-- Clear Action Bar --
local FrameButton = CreateFrame("Button","$parentExtraClearActionButton", AbyssUIClassic_Config.panel, "UIPanelButtonTemplate")
FrameButton:SetHeight(24)
FrameButton:SetWidth(140)
FrameButton:SetPoint("CENTER",  AbyssUIClassic_Config.panel, "TOP", 0, -200)
FrameButton:SetText("Clear Action Bar")
FrameButton:SetScript("OnClick", function()
  AbyssUIClassic_ActionBarCleaner:Show()
end)
-- Reload --
local FrameButton = CreateFrame("Button","$parentExtraReloadInterfaceButton", AbyssUIClassic_Config.panel, "UIPanelButtonTemplate")
FrameButton:SetHeight(24)
FrameButton:SetWidth(140)
FrameButton:SetPoint("CENTER", AbyssUIClassic_Config.panel, "TOP", 200, -200)
FrameButton:SetText("Reload UI")
FrameButton:SetScript("OnClick", function()
  ReloadUI()
end)
----------------------------- AbyssUIClassic Actionbar -------------------------------
-- AbyssUIClassic Action Bar --
local AbyssUIClassicNewActionBar3x12_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassicNewActionBar3x12_CheckButton", AbyssUIClassic_Config.childpanel1, "ChatConfigCheckButtonTemplate")
AbyssUIClassicNewActionBar3x12_CheckButton:SetPoint("TOPLEFT", 10, -140)
AbyssUIClassicNewActionBar3x12_CheckButton.Text:SetText("3x12 Actionbar")
AbyssUIClassicNewActionBar3x12_CheckButton.tooltip = "Adds a new bar above the Blizzard MainActionBar"
AbyssUIClassicNewActionBar3x12_CheckButton:SetChecked(AbyssUIClassicAddonSettings.AbyssUIClassicNewActionBar3x12)
-- OnClick Function
AbyssUIClassicNewActionBar3x12_CheckButton:SetScript("OnClick", function(self)
  AbyssUIClassicAddonSettings.AbyssUIClassicNewActionBar3x12 = self:GetChecked()
  AbyssUIClassic_ActionBarInfo:Show()
end)
-- After Login/Reload
AbyssUIClassicNewActionBar3x12_CheckButton:RegisterEvent("PLAYER_ENTERING_WORLD")
AbyssUIClassicNewActionBar3x12_CheckButton:SetScript("OnEvent", function(self, event, ...)
  if ( AbyssUIClassicAddonSettings.AbyssUIClassicNewActionBar3x12 == true ) then
    -- MainMenuBar
    MainMenuBar.ClearAllPoints = function() end
    MainMenuBar:SetPoint("BOTTOM", UIParent, "BOTTOM", 250, 10)
    MainMenuBar.SetPoint = function() end
    --MultiBarBottomRight
    MultiBarBottomRight.ClearAllPoints = function() end
    MultiBarBottomRight:SetPoint("TOPRIGHT", MainMenuBar, "BOTTOMLEFT", 9, 125)
    MultiBarBottomRight.SetPoint = function() end
    --MultiBarBottomLeft
    MultiBarBottomLeft.ClearAllPoints = function() end
    MultiBarBottomLeft:SetPoint("TOPRIGHT", MainMenuBar, "BOTTOMLEFT", 9, 45)
    MultiBarBottomLeft.SetPoint = function() end
    --PetBar
    PetActionBarFrame.ClearAllPoints = function() end
    PetActionBarFrame:SetPoint("TOPLEFT", UIParent, "BOTTOMLEFT", 0, 45)
    PetActionBarFrame:SetScale(0.85)
    PetActionBarFrame.SetPoint = function() end
    --StanceBar
    StanceBarFrame:ClearAllPoints()
    StanceBarFrame:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", 100, 0)
    StanceBarFrame.SetPoint = function() end
    --ExtraBar
    --ExtraActionBarFrame.ClearAllPoints = function() end
    --ExtraActionBarFrame:SetPoint("BOTTOMRIGHT", MainMenuBar, "BOTTOMRIGHT", 70, 30)
    --ExtraActionBarFrame.SetPoint = function() end
    --VehicleBar
    MainMenuBarVehicleLeaveButton.ClearAllPoints = function() end
    MainMenuBarVehicleLeaveButton:SetPoint("TOPLEFT", MainMenuBar, "TOPLEFT", -70, 70)
    MainMenuBarVehicleLeaveButton.SetPoint = function() end
    -- Hide Stuff for classic
    if AbyssUIClassicAddonSettings.AbyssUIClassicNewActionBar3x12 == true then
        C_Timer.After(1, function()
          for i, v in pairs ({
            MainMenuBarLeftEndCap,
            MainMenuBarRightEndCap,
            MainMenuBarTexture0,
            MainMenuBarTexture1,
            MainMenuBarTexture2,
            MainMenuBarTexture3,
            ActionBarUpButton,
            ActionBarDownButton,
            MainMenuBarPageNumber,
            CharacterMicroButton,
            SpellbookMicroButton,
            QuestLogMicroButton,
            SocialsMicroButton,
            WorldMapMicroButton,
            MainMenuMicroButton,
            HelpMicroButton,
            MainMenuBarBackpackButton,
            CharacterBag0Slot,
            CharacterBag1Slot,
            CharacterBag2Slot,
            CharacterBag3Slot,
            MainMenuBarPerformanceBar,
          }) do
            MainMenuExpBar:SetAlpha(0)
            ReputationWatchBar:SetAlpha(0)
            TalentMicroButton:SetAlpha(0)
            v:Hide()
          end
        end)
      else
        MainMenuExpBar:SetAlpha(1)
        ReputationWatchBar:SetAlpha(1)
        TalentMicroButton:SetAlpha(1)
      end
  end
end)
-- Minimal ActionBar --
local MinimalActionBar_CheckButton = CreateFrame("CheckButton", "$parentMinimalActionBar_CheckButton", AbyssUIClassic_Config.childpanel1, "ChatConfigCheckButtonTemplate")
MinimalActionBar_CheckButton:SetPoint("TOPLEFT", 10, -170)
MinimalActionBar_CheckButton.Text:SetText("Minimal ActionBar")
MinimalActionBar_CheckButton.tooltip = "Minimalist actionbar, hide all the textures"
MinimalActionBar_CheckButton:SetChecked(AbyssUIClassicAddonSettings.MinimalActionBar)
-- OnClick Function
MinimalActionBar_CheckButton:SetScript("OnClick", function(self)
  AbyssUIClassicAddonSettings.MinimalActionBar = self:GetChecked()
  AbyssUIClassic_ReloadFrame:Show()
end)
-- End
------------------------------- Hide Elements ---------------------------------
-- MicroMenu/Bags --
local MicroMenu_CheckButton = CreateFrame("CheckButton", "$parentMicroMenu_CheckButton", AbyssUIClassic_Config.childpanel2, "ChatConfigCheckButtonTemplate")
MicroMenu_CheckButton:SetPoint("TOPLEFT", 10, -80)
MicroMenu_CheckButton.Text:SetText("Hide MicroMenu")
MicroMenu_CheckButton.tooltip = "Hide the ActionBar MicroMenu"
MicroMenu_CheckButton:SetChecked(AbyssUIClassicAddonSettings.HideMicroMenu)
--  Hide
local function AbyssUIClassic_HideMicroMenu_Function()
  for i, v in pairs({ 
      CharacterMicroButton,
      SpellbookMicroButton,
      QuestLogMicroButton,
      SocialsMicroButton,
      WorldMapMicroButton,
      MainMenuMicroButton,
      HelpMicroButton, }) do
      TalentMicroButton:SetAlpha(0)
      v:Hide()
  end
end
-- Show
local function AbyssUIClassic_ShowMicroMenu_Function()
    for i, v in pairs({ 
      CharacterMicroButton,
      SpellbookMicroButton,
      QuestLogMicroButton,
      SocialsMicroButton,
      WorldMapMicroButton,
      MainMenuMicroButton,
      HelpMicroButton, }) do
      TalentMicroButton:SetAlpha(1)
      v:Show()
  end
end
-- OnClick Function
MicroMenu_CheckButton:SetScript("OnClick", function(self)
AbyssUIClassicAddonSettings.HideMicroMenu = self:GetChecked()
  if AbyssUIClassicAddonSettings.HideMicroMenu == true then
    AbyssUIClassic_HideMicroMenu_Function()
  else
    AbyssUIClassic_ShowMicroMenu_Function()
  end
end)
-- After Login/Reload
MicroMenu_CheckButton:RegisterEvent("PLAYER_ENTERING_WORLD")
MicroMenu_CheckButton:SetScript("OnEvent", function(self, event, ...)
  if ( event == "PLAYER_ENTERING_WORLD" ) then
    if AbyssUIClassicAddonSettings.HideMicroMenu == true then
      AbyssUIClassic_HideMicroMenu_Function()
    else
      AbyssUIClassic_ShowMicroMenu_Function()
    end
  end
end)
-- Gryphons Option --
local Gryphons_CheckButton = CreateFrame("CheckButton", "$parentGryphons_CheckButton", AbyssUIClassic_Config.childpanel2, "ChatConfigCheckButtonTemplate")
Gryphons_CheckButton:SetPoint("TOPLEFT", 10, -110)
Gryphons_CheckButton.Text:SetText("Hide Gryphons")
Gryphons_CheckButton.tooltip = "Hide the ActionBar Gryphons"
Gryphons_CheckButton:SetChecked(AbyssUIClassicAddonSettings.HideGryphons)
-- OnClick Function
Gryphons_CheckButton:SetScript("OnClick", function(self)
AbyssUIClassicAddonSettings.HideGryphons = self:GetChecked()
  if AbyssUIClassicAddonSettings.HideGryphons == true then
    MainMenuBarRightEndCap:Hide()
    MainMenuBarLeftEndCap:Hide()
  else
    MainMenuBarRightEndCap:Show()
    MainMenuBarLeftEndCap:Show()
  end
end)
-- After Login/Reload
Gryphons_CheckButton:RegisterEvent("PLAYER_ENTERING_WORLD")
Gryphons_CheckButton:SetScript("OnEvent", function(self, event, ...)
  if ( event == "PLAYER_ENTERING_WORLD" ) then
    if AbyssUIClassicAddonSettings.HideGryphons == true then
      MainMenuBarRightEndCap:Hide()
      MainMenuBarLeftEndCap:Hide()
    else
      MainMenuBarRightEndCap:Show()
      MainMenuBarLeftEndCap:Show()
    end
  end
end)
-- Minimap
local Minimap_CheckButton = CreateFrame("CheckButton", "$parentMinimap_CheckButton", AbyssUIClassic_Config.childpanel2, "ChatConfigCheckButtonTemplate")
Minimap_CheckButton:SetPoint("TOPLEFT", 10, -140)
Minimap_CheckButton.Text:SetText("Hide Minimap")
Minimap_CheckButton.tooltip = "Hide the Game Minimap"
Minimap_CheckButton:SetChecked(AbyssUIClassicAddonSettings.HideMinimap)
-- OnClick Function
Minimap_CheckButton:SetScript("OnClick", function(self)
  AbyssUIClassicAddonSettings.HideMinimap = self:GetChecked()
  if AbyssUIClassicAddonSettings.HideMinimap == true then
    MinimapCluster:Hide()
  else
    MinimapCluster:Show()
  end
end)
-- After Login/Reload
Minimap_CheckButton:RegisterEvent("PLAYER_ENTERING_WORLD")
Minimap_CheckButton:SetScript("OnEvent", function(self, event, ...)
  if ( event == "PLAYER_ENTERING_WORLD" ) then
    if AbyssUIClassicAddonSettings.HideMinimap == true then
      MinimapCluster:Hide()
    else
      MinimapCluster:Show()
    end
  end
end)
-- Objective Tracker --
local ObjTracker_CheckButton = CreateFrame("CheckButton", "$parentObjTracker_CheckButton", AbyssUIClassic_Config.childpanel2, "ChatConfigCheckButtonTemplate")
ObjTracker_CheckButton:SetPoint("TOPLEFT", 10, -170)
ObjTracker_CheckButton.Text:SetText("Hide Objective Tracker")
ObjTracker_CheckButton.tooltip = "Hide the Objective Tracker (Quest Frame)"
ObjTracker_CheckButton:SetChecked(AbyssUIClassicAddonSettings.HideObjectiveTracker)
-- OnClick Function
ObjTracker_CheckButton:SetScript("OnClick", function(self)
  AbyssUIClassicAddonSettings.HideObjectiveTracker = self:GetChecked()
  if AbyssUIClassicAddonSettings.HideObjectiveTracker == true then
    QuestWatchFrame:Hide()
  else
    QuestWatchFrame:Show()
  end
end)
-- After Login/Reload
ObjTracker_CheckButton:RegisterEvent("PLAYER_ENTERING_WORLD")
ObjTracker_CheckButton:SetScript("OnEvent", function(self, event, ...)
  if ( event == "PLAYER_ENTERING_WORLD" ) then
    if AbyssUIClassicAddonSettings.HideObjectiveTracker == true then
      QuestWatchFrame:Hide()
    else
      QuestWatchFrame:Show()
    end
  end
end)
-- FPS/MS Frame --
local FPSMSFrame_CheckButton = CreateFrame("CheckButton", "$parentFPSMSFrame_CheckButton", AbyssUIClassic_Config.childpanel2, "ChatConfigCheckButtonTemplate")
FPSMSFrame_CheckButton:SetPoint("TOPLEFT", 10, -200)
FPSMSFrame_CheckButton.Text:SetText("Hide FPS/MS Frame")
FPSMSFrame_CheckButton.tooltip = "Hide the fps/ms frame (Top left frame)"
FPSMSFrame_CheckButton:SetChecked(AbyssUIClassicAddonSettings.HideFPSMSFrame)
-- OnClick Function
FPSMSFrame_CheckButton:SetScript("OnClick", function(self)
AbyssUIClassicAddonSettings.HideFPSMSFrame = self:GetChecked()
  if ( AbyssUIClassicAddonSettings.HideFPSMSFrame == true or AbyssUIClassicAddonSettings.FadeUI == true ) then
    AbyssUIClassic_StatsFrames1Hide()
  else
    AbyssUIClassic_StatsFrames1Show()
  end
end)
-- After Login/Reload
FPSMSFrame_CheckButton:RegisterEvent("PLAYER_ENTERING_WORLD")
FPSMSFrame_CheckButton:SetScript("OnEvent", function(self, event, ...)
  if ( event == "PLAYER_ENTERING_WORLD" ) then
    if ( AbyssUIClassicAddonSettings.HideFPSMSFrame == true or AbyssUIClassicAddonSettings.FadeUI == true ) then
      AbyssUIClassic_StatsFrames1Hide()
    else
      AbyssUIClassic_StatsFrames1Show()
    end
  end
end)
-- YouDied LevelUp Frame --
local YouDiedLevelUpFrame_CheckButton = CreateFrame("CheckButton", "$parentYouDiedLevelUpFrame_CheckButton", AbyssUIClassic_Config.childpanel2, "ChatConfigCheckButtonTemplate")
YouDiedLevelUpFrame_CheckButton:SetPoint("TOPLEFT", 10, -230)
YouDiedLevelUpFrame_CheckButton.Text:SetText("Hide YouDied/LevelUp Frame")
YouDiedLevelUpFrame_CheckButton.tooltip = "Hide the 'You Died' and 'Level Up' frame when you"..
" die/level in the game"
YouDiedLevelUpFrame_CheckButton:SetChecked(AbyssUIClassicAddonSettings.HideYouDiedLevelUpFrame)
-- OnClick Function
YouDiedLevelUpFrame_CheckButton:SetScript("OnClick", function(self)
AbyssUIClassicAddonSettings.HideYouDiedLevelUpFrame = self:GetChecked()
end)
-- Hide Macro Labels --
local HideMacroLabels_CheckButton = CreateFrame("CheckButton", "$parentHideMacroLabels_CheckButton", AbyssUIClassic_Config.childpanel2, "ChatConfigCheckButtonTemplate")
HideMacroLabels_CheckButton:SetPoint("TOPLEFT", 10, -260)
HideMacroLabels_CheckButton.Text:SetText("Hide Macro Labels")
HideMacroLabels_CheckButton.tooltip = "Hide Macro Labels from Action Bar"
HideMacroLabels_CheckButton:SetChecked(AbyssUIClassicAddonSettings.HideMacroLabels)
-- OnClick Function
HideMacroLabels_CheckButton:SetScript("OnClick", function(self)
AbyssUIClassicAddonSettings.HideMacroLabels = self:GetChecked()
  if ( AbyssUIClassicAddonSettings.HideMacroLabels == true ) then
    for i = 1, 12 do
      _G["ActionButton"..i.."Name"]:SetAlpha(0)
      _G["MultiBarBottomRightButton"..i.."Name"]:SetAlpha(0)
      _G["MultiBarBottomLeftButton"..i.."Name"]:SetAlpha(0)
      _G["MultiBarRightButton"..i.."Name"]:SetAlpha(0)
      --_G["MultibarLeftButton"..i.."Name"]:SetAlpha(0)
    end
  else
    for i = 1, 12 do
      _G["ActionButton"..i.."Name"]:SetAlpha(1)
      _G["MultiBarBottomRightButton"..i.."Name"]:SetAlpha(1)
      _G["MultiBarBottomLeftButton"..i.."Name"]:SetAlpha(1)
      _G["MultiBarRightButton"..i.."Name"]:SetAlpha(1)
    --_G["MultibarLeftButton"..i.."Name"]:SetAlpha(1)
    end
  end
end)
-- After Login/Reload
HideMacroLabels_CheckButton:RegisterEvent("PLAYER_ENTERING_WORLD")
HideMacroLabels_CheckButton:SetScript("OnEvent", function(self, event, ...)
  if ( event == "PLAYER_ENTERING_WORLD" ) then
    if AbyssUIClassicAddonSettings.HideMacroLabels == true then
      for i = 1, 12 do
        _G["ActionButton"..i.."Name"]:SetAlpha(0)
        _G["MultiBarBottomRightButton"..i.."Name"]:SetAlpha(0)
        _G["MultiBarBottomLeftButton"..i.."Name"]:SetAlpha(0)
        _G["MultiBarRightButton"..i.."Name"]:SetAlpha(0)
        --_G["MultibarLeftButton"..i.."Name"]:SetAlpha(0)
      end
    end
  end
end)
-- Hide Hotkeys --
local HideHotkeysLabels_CheckButton = CreateFrame("CheckButton", "$parentHideHotkeysLabels_CheckButton", AbyssUIClassic_Config.childpanel2, "ChatConfigCheckButtonTemplate")
HideHotkeysLabels_CheckButton:SetPoint("TOPLEFT", 10, -290)
HideHotkeysLabels_CheckButton.Text:SetText("Hide Hotkeys Labels")
HideHotkeysLabels_CheckButton.tooltip = "Hide Hotkeys Labels from Action Bar"
HideHotkeysLabels_CheckButton:SetChecked(AbyssUIClassicAddonSettings.HideHotkeysLabels)
-- OnClick Function
HideHotkeysLabels_CheckButton:SetScript("OnClick", function(self)
AbyssUIClassicAddonSettings.HideHotkeysLabels = self:GetChecked()
   if ( AbyssUIClassicAddonSettings.HideHotkeysLabels == true ) then
     for i = 1, 12 do
       _G["ActionButton"..i.."HotKey"]:SetAlpha(0)
       _G["MultiBarBottomRightButton"..i.."HotKey"]:SetAlpha(0)
       _G["MultiBarBottomLeftButton"..i.."HotKey"]:SetAlpha(0)
       _G["MultiBarRightButton"..i.."HotKey"]:SetAlpha(0)
       --_G["MultibarLeftButton"..i.."HotKey"]:SetAlpha(0)
     end
   else
     for i = 1, 12 do
       _G["ActionButton"..i.."HotKey"]:SetAlpha(1)
       _G["MultiBarBottomRightButton"..i.."HotKey"]:SetAlpha(1)
       _G["MultiBarBottomLeftButton"..i.."HotKey"]:SetAlpha(1)
       _G["MultiBarRightButton"..i.."HotKey"]:SetAlpha(1)
     --_G["MultibarLeftButton"..i.."HotKey"]:SetAlpha(1)
     end
   end
end)
-- After Login/Reload
HideHotkeysLabels_CheckButton:RegisterEvent("PLAYER_ENTERING_WORLD")
HideHotkeysLabels_CheckButton:SetScript("OnEvent", function(self, event, ...)
  if ( event == "PLAYER_ENTERING_WORLD" ) then
    if AbyssUIClassicAddonSettings.HideHotkeysLabels == true then
      for i = 1, 12 do
        _G["ActionButton"..i.."HotKey"]:SetAlpha(0)
        _G["MultiBarBottomRightButton"..i.."HotKey"]:SetAlpha(0)
        _G["MultiBarBottomLeftButton"..i.."HotKey"]:SetAlpha(0)
        _G["MultiBarRightButton"..i.."HotKey"]:SetAlpha(0)
        --_G["MultibarLeftButton"..i.."HotKey"]:SetAlpha(0)
      end
    end
  end
end)
-- Hide StanceBar
local HideStanceBar_CheckButton = CreateFrame("CheckButton", "$parentHideStanceBar_CheckButton", AbyssUIClassic_Config.childpanel2, "ChatConfigCheckButtonTemplate")
HideStanceBar_CheckButton:SetPoint("TOPLEFT", 10, -320)
HideStanceBar_CheckButton.Text:SetText("Hide Stance Bar")
HideStanceBar_CheckButton.tooltip = "Hide the Stance Bar (Druid forms, Rogue stealth, etc)"
HideStanceBar_CheckButton:SetChecked(AbyssUIClassicAddonSettings.HideStanceBar)
-- OnClick Function
HideStanceBar_CheckButton:SetScript("OnClick", function(self)
  AbyssUIClassicAddonSettings.HideStanceBar = self:GetChecked()
   if ( AbyssUIClassicAddonSettings.HideStanceBar == true ) then
     StanceBarFrame:Hide()
   else
     return nil
   end
end)
-- After Login/Reload
HideStanceBar_CheckButton:RegisterEvent("PLAYER_ENTERING_WORLD")
HideStanceBar_CheckButton:SetScript("OnEvent", function(self, event, ...)
  if ( event == "PLAYER_ENTERING_WORLD" ) then
    if AbyssUIClassicAddonSettings.HideStanceBar == true then
      C_Timer.After(0.5, function()
        StanceBarFrame:SetScript("OnUpdate", function(self) self:Hide() end)
      end)
    end
  end
end)
-- Chat Hide Frame (needs to be here so the hide chat buttons works on this too)
-- Thanks to Syncrow for part of this 
local AbyssUIClassic_ChatHideFrame = CreateFrame("Button", "$parentChatHideFrame", UIParent)
AbyssUIClassic_ChatHideFrame:SetSize(30, 30)
AbyssUIClassic_ChatHideFrame.t = AbyssUIClassic_ChatHideFrame:CreateTexture(nil, "BORDER")
AbyssUIClassic_ChatHideFrame.t:SetTexture("Interface\\CHATFRAME\\UI-ChatIcon-Minimize-Up.blp")
AbyssUIClassic_ChatHideFrame.t:SetAllPoints(AbyssUIClassic_ChatHideFrame)
AbyssUIClassic_ChatHideFrame:SetPoint("BOTTOM","ChatFrame1ButtonFrame","BOTTOM",0,-35)
if ( AbyssUIClassicAddonSettings.FadeUI ~= true ) then
  AbyssUIClassic_ChatHideFrame:Show()
else
  AbyssUIClassic_ChatHideFrame:Hide()
end

local ChatHide = false
AbyssUIClassic_ChatHideFrame:SetScript("OnMouseDown", function(self, Button)
  if ChatHide == false then
    if Button == "LeftButton" then
      AbyssUIClassic_ChatHideFrame.t:SetTexture("Interface\\CHATFRAME\\UI-ChatIcon-Minimize-Down.blp")
    end
  elseif ChatHide == true then
    if Button == "LeftButton" then
      AbyssUIClassic_ChatHideFrame.t:SetTexture("Interface\\CHATFRAME\\UI-ChatIcon-Maximize-Down.blp")
    end
  end
end)

AbyssUIClassic_ChatHideFrame:SetScript("OnMouseUp", function(self, Button)
  if ChatHide == false then
    if Button == "LeftButton" then
      AbyssUIClassic_ChatHideFrame.t:SetTexture("Interface\\CHATFRAME\\UI-ChatIcon-Minimize-Up.blp")
    end
  elseif ChatHide == true then
    if Button == "LeftButton" then
      AbyssUIClassic_ChatHideFrame.t:SetTexture("Interface\\CHATFRAME\\UI-ChatIcon-Maximize-Up.blp")
    end
  end
end)

AbyssUIClassic_ChatHideFrame:SetScript("OnClick", function(self, Button)
  if ChatHide == false then
    AbyssUIClassic_ChatHideFrame.t:SetTexture("Interface\\CHATFRAME\\UI-ChatIcon-Maximize-Up.blp")
    --QuickJoinToastButton:Hide()
    GeneralDockManager:Hide()
    ChatFrameMenuButton:Hide()
    ChatFrameChannelButton:Hide()
    --ChatFrameToggleVoiceDeafenButton.Icon:Hide()
    --ChatFrameToggleVoiceMuteButton.Icon:Hide()
    ChatFrame1EditBox:Hide()

    for i = 1, NUM_CHAT_WINDOWS do
      _G["ChatFrame"..i..""]:SetAlpha(0)
      _G["ChatFrame"..i.."ButtonFrame"]:Hide()
      _G["ChatFrame"..i.."EditBox"]:SetAlpha(0)
    end
    ChatHide = true
  elseif ChatHide == true then
    AbyssUIClassic_ChatHideFrame.t:SetTexture("Interface\\CHATFRAME\\UI-ChatIcon-Minimize-Up.blp")
    --QuickJoinToastButton:Show()
    GeneralDockManager:Show()
    ChatFrameMenuButton:Show()
    ChatFrameChannelButton:Show()
    --ChatFrameToggleVoiceDeafenButton.Icon:Show()
    --ChatFrameToggleVoiceMuteButton.Icon:Show()
    ChatFrame1EditBox:Show()

    for i = 1 , NUM_CHAT_WINDOWS do
      _G["ChatFrame"..i..""]:SetAlpha(1)
      _G["ChatFrame"..i.."ButtonFrame"]:Show()
      _G["ChatFrame"..i.."EditBox"]:SetAlpha(1)
    end
    ChatHide = false
  end
end)
-- Hide Chat Buttons
local HideChatButtons_CheckButton = CreateFrame("CheckButton", "$parentHideStanceBar_CheckButton", AbyssUIClassic_Config.childpanel2, "ChatConfigCheckButtonTemplate")
HideChatButtons_CheckButton:SetPoint("TOPLEFT", 10, -350)
HideChatButtons_CheckButton.Text:SetText("Hide Chat Buttons")
HideChatButtons_CheckButton.tooltip = "Hide the Chat buttons (voice, social, etc)"
HideChatButtons_CheckButton:SetChecked(AbyssUIClassicAddonSettings.HideChatButtons)
-- OnClick Function
HideChatButtons_CheckButton:SetScript("OnClick", function(self)
  AbyssUIClassicAddonSettings.HideChatButtons = self:GetChecked()
  if ( AbyssUIClassicAddonSettings.HideChatButtons == true ) then
    --QuickJoinToastButton:Hide()
    GeneralDockManager:SetAlpha(0)
    ChatFrameMenuButton:Hide()
    ChatFrameChannelButton:Hide()
    ChatFrame1ButtonFrame:SetAlpha(0)
    AbyssUIClassic_ChatHideFrame:Hide()
    --ChatFrameToggleVoiceDeafenButton:SetAlpha(0)
    --ChatFrameToggleVoiceMuteButton:SetAlpha(0)
  else 
    --QuickJoinToastButton:Show()
    GeneralDockManager:SetAlpha(1)
    ChatFrameMenuButton:Show()
    ChatFrameChannelButton:Show()
    ChatFrame1ButtonFrame:SetAlpha(1)
    AbyssUIClassic_ChatHideFrame:Show()
    --ChatFrameToggleVoiceDeafenButton:SetAlpha(1)
    --ChatFrameToggleVoiceMuteButton:SetAlpha(1)
  end
end)
-- After Login/Reload
HideChatButtons_CheckButton:RegisterEvent("PLAYER_ENTERING_WORLD")
HideChatButtons_CheckButton:SetScript("OnEvent", function(self, event, ...)
  if ( event == "PLAYER_ENTERING_WORLD" ) then
    if AbyssUIClassicAddonSettings.HideChatButtons == true then
      C_Timer.After(1, function()
        -- QuickJoinToastButton:Hide()
        GeneralDockManager:SetAlpha(0)
        ChatFrameMenuButton:Hide()
        ChatFrameChannelButton:Hide()
        ChatFrame1ButtonFrame:SetAlpha(0)
        AbyssUIClassic_ChatHideFrame:Hide()
        --ChatFrameToggleVoiceDeafenButton:SetAlpha(0)
        --ChatFrameToggleVoiceMuteButton:SetAlpha(0)
      end)
    end
  end
end)
-- AFKCammeraFrame --
local AFKCammeraFrame_CheckButton = CreateFrame("CheckButton", "$parentAFKCammeraFrame_CheckButton", AbyssUIClassic_Config.childpanel2, "ChatConfigCheckButtonTemplate")
AFKCammeraFrame_CheckButton:SetPoint("TOPLEFT", 10, -380)
AFKCammeraFrame_CheckButton.Text:SetText("Hide AFKMode Frame")
AFKCammeraFrame_CheckButton.tooltip = "Hide the AFKMode when you are AFK"
AFKCammeraFrame_CheckButton:SetChecked(AbyssUIClassicAddonSettings.AFKCammeraFrame)
-- OnClick Function
AFKCammeraFrame_CheckButton:SetScript("OnClick", function(self)
AbyssUIClassicAddonSettings.AFKCammeraFrame = self:GetChecked()
end)
-- Faction/PvP icon --
local FactionPvpIcon_CheckButton = CreateFrame("CheckButton", "$parentFactionPvpIcon_CheckButton", AbyssUIClassic_Config.childpanel2, "ChatConfigCheckButtonTemplate")
FactionPvpIcon_CheckButton:SetPoint("TOPLEFT", 10, -410)
FactionPvpIcon_CheckButton.Text:SetText("Hide Faction/PvP Icon")
FactionPvpIcon_CheckButton.tooltip = "Hide the player frame faction/PvP icon"
FactionPvpIcon_CheckButton:SetChecked(AbyssUIClassicAddonSettings.FactionPvpIcon)
-- OnClick Function
FactionPvpIcon_CheckButton:SetScript("OnClick", function(self)
  AbyssUIClassicAddonSettings.FactionPvpIcon = self:GetChecked()
    if AbyssUIClassicAddonSettings.FactionPvpIcon == true then
      PlayerPVPIcon:SetAlpha(0)
      TargetFrameTextureFramePVPIcon:SetAlpha(0)
      --FocusFrameTextureFramePVPIcon:SetAlpha(0)
    else
      PlayerPVPIcon:SetAlpha(1)
      TargetFrameTextureFramePVPIcon:SetAlpha(1)
      --FocusFrameTextureFramePVPIcon:SetAlpha(1)
    end
end)
-- After Login/Reload
FactionPvpIcon_CheckButton:RegisterEvent("PLAYER_ENTERING_WORLD")
FactionPvpIcon_CheckButton:SetScript("OnEvent", function(self, event, ...)
  if ( event == "PLAYER_ENTERING_WORLD" ) then
    if AbyssUIClassicAddonSettings.FactionPvpIcon == true then
      PlayerPVPIcon:SetAlpha(0)
      TargetFrameTextureFramePVPIcon:SetAlpha(0)
      --FocusFrameTextureFramePVPIcon:SetAlpha(0)
    else
      PlayerPVPIcon:SetAlpha(1)
      TargetFrameTextureFramePVPIcon:SetAlpha(1)
      --FocusFrameTextureFramePVPIcon:SetAlpha(1)
    end
  end
end)
-- Hide Helm --
local HideHelm_CheckButton = CreateFrame("CheckButton", "$parentHideHelm_CheckButton", AbyssUIClassic_Config.childpanel2, "ChatConfigCheckButtonTemplate")
HideHelm_CheckButton:SetPoint("TOPLEFT", 10, -440)
HideHelm_CheckButton.Text:SetText("Hide Helm")
HideHelm_CheckButton.tooltip = "Hide the player helm"
HideHelm_CheckButton:SetChecked(AbyssUIClassicAddonSettings.HideHelm)
-- OnClick Function
HideHelm_CheckButton:SetScript("OnClick", function(self)
  AbyssUIClassicAddonSettings.HideHelm = self:GetChecked()
  AbyssUIClassic_ReloadFrame:Show()
end)
-- After Login/Reload
HideHelm_CheckButton:RegisterEvent("PLAYER_ENTERING_WORLD")
HideHelm_CheckButton:SetScript("OnEvent", function(self, event, ...)
  if ( event == "PLAYER_ENTERING_WORLD" ) then
    if AbyssUIClassicAddonSettings.HideHelm == true then
      ShowHelm(false)
    else
      ShowHelm(true)
    end
  end
end)
-- Hide Cloak --
local HideCloak_CheckButton = CreateFrame("CheckButton", "$parentHideCloak_CheckButton", AbyssUIClassic_Config.childpanel2, "ChatConfigCheckButtonTemplate")
HideCloak_CheckButton:SetPoint("TOPLEFT", 10, -470)
HideCloak_CheckButton.Text:SetText("Hide Cloak")
HideCloak_CheckButton.tooltip = "Hide the player cloak"
HideCloak_CheckButton:SetChecked(AbyssUIClassicAddonSettings.HideCloak)
-- OnClick Function
HideCloak_CheckButton:SetScript("OnClick", function(self)
  AbyssUIClassicAddonSettings.HideCloak = self:GetChecked()
  AbyssUIClassic_ReloadFrame:Show()
end)
-- After Login/Reload
HideCloak_CheckButton:RegisterEvent("PLAYER_ENTERING_WORLD")
HideCloak_CheckButton:SetScript("OnEvent", function(self, event, ...)
  if ( event == "PLAYER_ENTERING_WORLD" ) then
    if AbyssUIClassicAddonSettings.HideCloak == true then
      ShowCloak(false)
    else
      ShowCloak(true)
    end
  end
end)
-- 2nd Collum
-- Hide Cast Timer
local HideCastTimer_CheckButton = CreateFrame("CheckButton", "$parentHideCastTimer_CheckButton", AbyssUIClassic_Config.childpanel2, "ChatConfigCheckButtonTemplate")
HideCastTimer_CheckButton:SetPoint("TOPRIGHT", -200, -80)
HideCastTimer_CheckButton.Text:SetText("Hide CastBar Timer")
HideCastTimer_CheckButton.tooltip = "Hide the timer below CastBar"
HideCastTimer_CheckButton:SetChecked(AbyssUIClassicAddonSettings.HideCastTimer)
-- OnClick Function
HideCastTimer_CheckButton:SetScript("OnClick", function(self)
  AbyssUIClassicAddonSettings.HideCastTimer = self:GetChecked()
end)
-- End
----------------------------------- Extras  -----------------------------------
-- Keep UnitFrame Dark --
local KeepUnitDark_CheckButton = CreateFrame("CheckButton", "$parentKeepUnitDark_CheckButton", AbyssUIClassic_Config.childpanel4, "ChatConfigCheckButtonTemplate")
KeepUnitDark_CheckButton:SetPoint("CENTER", -290, -80)
KeepUnitDark_CheckButton.Text:SetText("Keep UnitFrame Dark")
KeepUnitDark_CheckButton.tooltip = "Even if you change theme, this will keep UnitFrame Dark"..
" (Player Frame, Boss, etc)."
KeepUnitDark_CheckButton:SetChecked(AbyssUIClassicAddonSettings.KeepUnitDark)
-- OnClick Function
KeepUnitDark_CheckButton:SetScript("OnClick", function(self)
 if AbyssUIClassicAddonSettings.KeepUnitBlizzard == true then
   KeepUnitDark_CheckButton:SetChecked(nil)
 else
   AbyssUIClassicAddonSettings.KeepUnitDark = self:GetChecked()
   AbyssUIClassic_ReloadFrame:Show()
 end
end)
 -- After Login/Reload
KeepUnitDark_CheckButton:RegisterEvent("PLAYER_ENTERING_WORLD")
KeepUnitDark_CheckButton:SetScript("OnEvent", function(self, event, ...)
  if ( event == "PLAYER_ENTERING_WORLD" ) then
    if AbyssUIClassicAddonSettings.KeepUnitDark == true then
      AbyssUIClassicAddonSettings.KeepUnitDark = self:GetChecked()
    else
      KeepUnitDark_CheckButton:SetChecked(nil)
    end
  end
end)
-- Keep UnitFrame Blizzard Like --
local KeepUnitBlizzard_CheckButton = CreateFrame("CheckButton", "$parentKeepUnitBlizzard_CheckButton", AbyssUIClassic_Config.childpanel4, "ChatConfigCheckButtonTemplate")
KeepUnitBlizzard_CheckButton:SetPoint("CENTER", -290, -110)
KeepUnitBlizzard_CheckButton.Text:SetText("Keep UnitFrame Blizzard Like")
KeepUnitBlizzard_CheckButton.tooltip = "Even if you change theme, this will keep UnitFrame"..
" Blizzard like (Player Frame, Boss, etc)."
KeepUnitBlizzard_CheckButton:SetChecked(AbyssUIClassicAddonSettings.KeepUnitBlizzard)
-- OnClick Function
KeepUnitBlizzard_CheckButton:SetScript("OnClick", function(self)
  if AbyssUIClassicAddonSettings.KeepUnitDark == true then
    KeepUnitBlizzard_CheckButton:SetChecked(nil)
  else
    AbyssUIClassicAddonSettings.KeepUnitBlizzard = self:GetChecked()
    AbyssUIClassic_ReloadFrame:Show()
  end
end)
-- After Login/Reload
KeepUnitBlizzard_CheckButton:RegisterEvent("PLAYER_ENTERING_WORLD")
KeepUnitBlizzard_CheckButton:SetScript("OnEvent", function(self, event, ...)
  if ( event == "PLAYER_ENTERING_WORLD" ) then
    if AbyssUIClassicAddonSettings.KeepUnitBlizzard == true then
      AbyssUIClassicAddonSettings.KeepUnitBlizzard = self:GetChecked()
    else
      KeepUnitBlizzard_CheckButton:SetChecked(nil)
    end
  end
end)
-- Fade UI --
local FadeUI_CheckButton = CreateFrame("CheckButton", "$parentFadeUI_CheckButton", AbyssUIClassic_Config.childpanel4, "ChatConfigCheckButtonTemplate")
FadeUI_CheckButton:SetPoint("CENTER", -290, -140)
FadeUI_CheckButton.Text:SetText("Fade UI")
FadeUI_CheckButton.tooltip = "Fade the UI when you are out of combat ('ATL-CTRL-P' to show frames)"
FadeUI_CheckButton:SetChecked(AbyssUIClassicAddonSettings.FadeUI)
-- OnClick Function
FadeUI_CheckButton:SetScript("OnClick", function(self)
  SetBindingClick("ALT-CTRL-P", FadeUI_CheckButton:GetName())
  AbyssUIClassicAddonSettings.FadeUI = self:GetChecked()
  AbyssUIClassic_ReloadFrameFadeUI:Show()
end)
-- Elite Portrait --
local ElitePortrait_CheckButton = CreateFrame("CheckButton", "$parentElitePortrait_CheckButton", AbyssUIClassic_Config.childpanel4, "ChatConfigCheckButtonTemplate")
ElitePortrait_CheckButton:SetPoint("CENTER", -290, -170)
ElitePortrait_CheckButton.Text:SetText("Elite Portrait")
ElitePortrait_CheckButton.tooltip = "Add a elite texture to the portraits"..
" (high recommended the use of this option with portrait class icons)"
ElitePortrait_CheckButton:SetChecked(AbyssUIClassicAddonSettings.ElitePortrait)
-- OnClick Function
ElitePortrait_CheckButton:SetScript("OnClick", function(self)
  AbyssUIClassicAddonSettings.ElitePortrait = self:GetChecked()
  AbyssUIClassic_ReloadFrame:Show()
end)
-- UnitFrame Improved --
local UnitFrameImproved_CheckButton = CreateFrame("CheckButton", "$parentUnitFrameImproved_CheckButton", AbyssUIClassic_Config.childpanel4, "ChatConfigCheckButtonTemplate")
UnitFrameImproved_CheckButton:SetPoint("CENTER", -290, -200)
UnitFrameImproved_CheckButton.Text:SetText("|cfff2dc7fUnitFrame Improved|r")
UnitFrameImproved_CheckButton.tooltip = "This is a improved version of unitframes,"..
" it changes those frames to a more beautiful and complete version (recommended use)"
UnitFrameImproved_CheckButton:SetChecked(AbyssUIClassicAddonSettings.UnitFrameImproved)
addonTable.UnitFrameImproved = UnitFrameImproved_CheckButton
-- OnClick Function
UnitFrameImproved_CheckButton:SetScript("OnClick", function(self)
  AbyssUIClassicAddonSettings.UnitFrameImproved = self:GetChecked()
  AbyssUIClassic_ReloadFrame:Show()
end)
------------------------------- Miscellaneous -------------------------------
-- Camera Pitch --
-- Camera Pitch Function Option 50%
local CameraSmooth50_CheckButton = CreateFrame("CheckButton", "$parentCameraSmooth50_CheckButton", AbyssUIClassic_Config.childpanel3, "ChatConfigCheckButtonTemplate")
CameraSmooth50_CheckButton:SetPoint("TOPLEFT", 10, -80)
CameraSmooth50_CheckButton.Text:SetText("Smooth Camera\n   (50% Slower)")
CameraSmooth50_CheckButton.tooltip = "Makes the Camera turns in a more smooth way"
CameraSmooth50_CheckButton:SetChecked(AbyssUIClassicAddonSettings.ExtraFunctionCameraSmooth50)
addonTable.CameraSmooth50 = CameraSmooth50_CheckButton
-- OnClick Function
CameraSmooth50_CheckButton:SetScript("OnClick", function(self)
  if AbyssUIClassicAddonSettings.ExtraFunctionCameraSmooth70 ~= true and AbyssUIClassicAddonSettings.ExtraFunctionCameraSmooth90 ~= true then
    AbyssUIClassicAddonSettings.ExtraFunctionCameraSmooth50 = self:GetChecked()
    if AbyssUIClassicAddonSettings.ExtraFunctionCameraSmooth50 == true then
      ConsoleExec( "cameraYawMoveSpeed 50" )
      ConsoleExec( "cameraPitchMoveSpeed 50" )
    else
      ConsoleExec( "cameraYawMoveSpeed 100" )
      ConsoleExec( "cameraPitchMoveSpeed 100" )
      if AbyssUIClassicAddonSettings.ExtraFunctionCameraSmooth50 ~= true and AbyssUIClassicAddonSettings.ExtraFunctionCameraSmooth90 ~= true then
        AbyssUIClassic_ReloadFrame:Show()
      end
    end
  else
    CameraSmooth50_CheckButton:SetChecked(nil)
  end
end)
-- After Login/Reload
CameraSmooth50_CheckButton:RegisterEvent("PLAYER_ENTERING_WORLD")
CameraSmooth50_CheckButton:SetScript("OnEvent", function(self, event, ...)
  if ( event == "PLAYER_ENTERING_WORLD" ) then
    if AbyssUIClassicAddonSettings.ExtraFunctionCameraSmooth50 == true then
      ConsoleExec( "cameraYawMoveSpeed 50" )
      ConsoleExec( "cameraPitchMoveSpeed 50" )
    end
  end
end)
-- Camera Pitch Function Option 70%
local CameraSmooth70_CheckButton = CreateFrame("CheckButton", "$parentCameraSmooth70_CheckButton", AbyssUIClassic_Config.childpanel3, "ChatConfigCheckButtonTemplate")
CameraSmooth70_CheckButton:SetPoint("TOPLEFT", 10, -110)
CameraSmooth70_CheckButton.Text:SetText("Smooth Camera\n   (70% Slower)")
CameraSmooth70_CheckButton.tooltip = "Makes the Camera turns in a more smooth way"
CameraSmooth70_CheckButton:SetChecked(AbyssUIClassicAddonSettings.ExtraFunctionCameraSmooth70)
-- OnClick Function
CameraSmooth70_CheckButton:SetScript("OnClick", function(self)
  if AbyssUIClassicAddonSettings.ExtraFunctionCameraSmooth50 ~= true and AbyssUIClassicAddonSettings.ExtraFunctionCameraSmooth90 ~= true then
    AbyssUIClassicAddonSettings.ExtraFunctionCameraSmooth70 = self:GetChecked()
    if AbyssUIClassicAddonSettings.ExtraFunctionCameraSmooth70 == true then
      ConsoleExec( "cameraYawMoveSpeed 30" )
      ConsoleExec( "cameraPitchMoveSpeed 30" )
    else
      ConsoleExec( "cameraYawMoveSpeed 100" )
      ConsoleExec( "cameraPitchMoveSpeed 100" )
      if AbyssUIClassicAddonSettings.ExtraFunctionCameraSmooth50 ~= true and AbyssUIClassicAddonSettings.ExtraFunctionCameraSmooth90 ~= true then
        AbyssUIClassic_ReloadFrame:Show()
      end
    end
  else
    CameraSmooth70_CheckButton:SetChecked(nil)
  end
end)
-- After Login/Reload
CameraSmooth70_CheckButton:RegisterEvent("PLAYER_ENTERING_WORLD")
CameraSmooth70_CheckButton:SetScript("OnEvent", function(self, event, ...)
  if ( event == "PLAYER_ENTERING_WORLD" ) then
    if AbyssUIClassicAddonSettings.ExtraFunctionCameraSmooth70 == true then
      ConsoleExec( "cameraYawMoveSpeed 30" )
      ConsoleExec( "cameraPitchMoveSpeed 30" )
    end
  end
end)
-- Camera Pitch Function Option 90%
local CameraSmooth90_CheckButton = CreateFrame("CheckButton", "$parentCameraSmooth90_CheckButton", AbyssUIClassic_Config.childpanel3, "ChatConfigCheckButtonTemplate")
CameraSmooth90_CheckButton:SetPoint("TOPLEFT", 10, -140)
CameraSmooth90_CheckButton.Text:SetText("Smooth Camera\n   (90% Slower)")
CameraSmooth90_CheckButton.tooltip = "Makes the Camera turns in a more smooth way"
CameraSmooth90_CheckButton:SetChecked(AbyssUIClassicAddonSettings.ExtraFunctionCameraSmooth90)
-- OnClick Function
CameraSmooth90_CheckButton:SetScript("OnClick", function(self)
  if AbyssUIClassicAddonSettings.ExtraFunctionCameraSmooth50 ~= true and AbyssUIClassicAddonSettings.ExtraFunctionCameraSmooth70 ~= true then
    AbyssUIClassicAddonSettings.ExtraFunctionCameraSmooth90 = self:GetChecked()
    if AbyssUIClassicAddonSettings.ExtraFunctionCameraSmooth90 == true then
      ConsoleExec( "cameraYawMoveSpeed 10" )
      ConsoleExec( "cameraPitchMoveSpeed 10" )
    else
      ConsoleExec( "cameraYawMoveSpeed 100" )
      ConsoleExec( "cameraPitchMoveSpeed 100" )
      if AbyssUIClassicAddonSettings.ExtraFunctionCameraSmooth50 ~= true and AbyssUIClassicAddonSettings.ExtraFunctionCameraSmooth70 ~= true then
        AbyssUIClassic_ReloadFrame:Show()
      end
    end
  else
    CameraSmooth90_CheckButton:SetChecked(nil)
  end
end)
-- After Login/Reload
CameraSmooth90_CheckButton:RegisterEvent("PLAYER_ENTERING_WORLD")
CameraSmooth90_CheckButton:SetScript("OnEvent", function(self, event, ...)
  if ( event == "PLAYER_ENTERING_WORLD" ) then
    if AbyssUIClassicAddonSettings.ExtraFunctionCameraSmooth90 == true then
      ConsoleExec( "cameraYawMoveSpeed 10" )
      ConsoleExec( "cameraPitchMoveSpeed 10" )
    end
  end
end)
-- Inspect Target
local InspectTarget_CheckButton = CreateFrame("CheckButton", "$parentInspectTarget_CheckButton", AbyssUIClassic_Config.childpanel3, "ChatConfigCheckButtonTemplate")
InspectTarget_CheckButton:SetPoint("TOPLEFT", 10, -170)
InspectTarget_CheckButton.Text:SetText("Inspect Target (Shift + ')")
InspectTarget_CheckButton.tooltip = "When you have a target or your mouse is over someone character,"..
" to inspect this player press the keys Shift + '"
InspectTarget_CheckButton:SetChecked(AbyssUIClassicAddonSettings.ExtraFunctionInspectTarget)
addonTable.InspectTarget = InspectTarget_CheckButton
-- OnClick Function
InspectTarget_CheckButton:SetScript("OnClick", function(self)
    AbyssUIClassicAddonSettings.ExtraFunctionInspectTarget = self:GetChecked()
end)
-- Spell on KeyUp
local ActionButtonKeyUP_CheckButton = CreateFrame("CheckButton", "$parentActionButtonKeyUP_CheckButton", AbyssUIClassic_Config.childpanel3, "ChatConfigCheckButtonTemplate")
ActionButtonKeyUP_CheckButton:SetPoint("TOPLEFT", 10, -200)
ActionButtonKeyUP_CheckButton.Text:SetText("ActionButton on KeyUp")
ActionButtonKeyUP_CheckButton.tooltip = "With this option spells can be cast just when the"..
" keybind are released"
ActionButtonKeyUP_CheckButton:SetChecked(AbyssUIClassicAddonSettings.ActionButtonKeyDown)
-- OnClick Function
ActionButtonKeyUP_CheckButton:SetScript("OnClick", function(self)
    AbyssUIClassicAddonSettings.ActionButtonKeyDown = self:GetChecked()
    AbyssUIClassic_ReloadFrame:Show()
end)
-- After Login/Reload
ActionButtonKeyUP_CheckButton:RegisterEvent("PLAYER_ENTERING_WORLD")
ActionButtonKeyUP_CheckButton:SetScript("OnEvent", function(self, event, ...)
  if ( event == "PLAYER_ENTERING_WORLD" ) then
    if AbyssUIClassicAddonSettings.ActionButtonKeyDown == true then
      SetCVar('ActionButtonUseKeyDown', 0)
    else
      SetCVar('ActionButtonUseKeyDown', 1)
    end
  else
    return nil
  end
end)
-- Screenshot when you level up --
local AbyssUIClassic_ScreenshotLevelUp_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassic_ScreenshotLevelUp_CheckButton", AbyssUIClassic_Config.childpanel3, "ChatConfigCheckButtonTemplate")
AbyssUIClassic_ScreenshotLevelUp_CheckButton:SetPoint("TOPLEFT", 10, -230)
AbyssUIClassic_ScreenshotLevelUp_CheckButton.Text:SetText("Auto Screenshot")
AbyssUIClassic_ScreenshotLevelUp_CheckButton.tooltip = "Automatically takes a screenshot when you level up"
AbyssUIClassic_ScreenshotLevelUp_CheckButton:SetChecked(AbyssUIClassicAddonSettings.ExtraFunctionScreenshotLevelUp)
-- OnClick Function
AbyssUIClassic_ScreenshotLevelUp_CheckButton:SetScript("OnClick", function(self)
  AbyssUIClassicAddonSettings.ExtraFunctionScreenshotLevelUp = self:GetChecked()
end)
-- Remove Background class color --
local AbyssUIClassic_HideBackgroundClassColor_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassic_HideBackgroundClassColor_CheckButton", AbyssUIClassic_Config.childpanel3, "ChatConfigCheckButtonTemplate")
AbyssUIClassic_HideBackgroundClassColor_CheckButton:SetPoint("TOPLEFT", 10, -260)
AbyssUIClassic_HideBackgroundClassColor_CheckButton.Text:SetText("Default Background")
AbyssUIClassic_HideBackgroundClassColor_CheckButton.tooltip = "Remove the class color background behind"..
" the player names to default values (Transparent Name needs to be unchecked)"
AbyssUIClassic_HideBackgroundClassColor_CheckButton:SetChecked(AbyssUIClassicAddonSettings.ExtraFunctionHideBackgroundClassColor)
-- OnClick Function
AbyssUIClassic_HideBackgroundClassColor_CheckButton:SetScript("OnClick", function(self)
  AbyssUIClassicAddonSettings.ExtraFunctionHideBackgroundClassColor = self:GetChecked()
  AbyssUIClassic_ReloadFrame:Show()
end)
-- Disable Guild Name on Tooltip --
local AbyssUIClassic_DisableGuildTooltip_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassic_HideBackgroundClassColor_CheckButton", AbyssUIClassic_Config.childpanel3, "ChatConfigCheckButtonTemplate")
AbyssUIClassic_DisableGuildTooltip_CheckButton:SetPoint("TOPLEFT", 10, -290)
AbyssUIClassic_DisableGuildTooltip_CheckButton.Text:SetText("Disable Guild Tooltip")
AbyssUIClassic_DisableGuildTooltip_CheckButton.tooltip = "Remove the guild name from tooltips"
AbyssUIClassic_DisableGuildTooltip_CheckButton:SetChecked(AbyssUIClassicAddonSettings.ExtraFunctionDisableGuildTootip)
-- OnClick Function
AbyssUIClassic_DisableGuildTooltip_CheckButton:SetScript("OnClick", function(self)
  AbyssUIClassicAddonSettings.ExtraFunctionDisableGuildTootip = self:GetChecked()
  AbyssUIClassic_ReloadFrame:Show()
end)
-- 2nd Column
-- Action Cam --
local AbyssUIClassicActionCam_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassicActionCam_CheckButton", AbyssUIClassic_Config.childpanel3, "ChatConfigCheckButtonTemplate")
AbyssUIClassicActionCam_CheckButton:SetPoint("TOPLEFT", 200, -80)
AbyssUIClassicActionCam_CheckButton.Text:SetText("Combat Cursor Mode")
AbyssUIClassicActionCam_CheckButton.tooltip = "Makes the camera turns with your mouse when in"..
" combat (right-click to show cursor)"
AbyssUIClassicActionCam_CheckButton:SetChecked(AbyssUIClassicAddonSettings.ExtraFunctionActionCam)
-- OnClick Function
AbyssUIClassicActionCam_CheckButton:SetScript("OnClick", function(self)
  AbyssUIClassicAddonSettings.ExtraFunctionActionCam = self:GetChecked()
end)
-- Update
AbyssUIClassicActionCam_CheckButton:RegisterEvent("PLAYER_REGEN_ENABLED")
AbyssUIClassicActionCam_CheckButton:RegisterEvent("PLAYER_REGEN_DISABLED")
AbyssUIClassicActionCam_CheckButton:SetScript("OnEvent", function(self, event, ...)
  local IsMouseLooking = IsMouselooking()
  if ( event == "PLAYER_REGEN_DISABLED" and IsMouseLooking == false ) then
    if AbyssUIClassicAddonSettings.ExtraFunctionActionCam == true then
      MouselookStart()
    else
      MouselookStop()
    end
  end
--[[
  if ( event == "PLAYER_REGEN_ENABLED" ) then
    MouselookStop()
  end
--]]
end)
-- Auto Repair/Sell Gray --
local AbyssUIClassicAutoSellGray_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassicAutoSellGray_CheckButton", AbyssUIClassic_Config.childpanel3, "ChatConfigCheckButtonTemplate")
AbyssUIClassicAutoSellGray_CheckButton:SetPoint("TOPLEFT", 200, -110)
AbyssUIClassicAutoSellGray_CheckButton.Text:SetText("Auto Repair\nSell Gray Items")
AbyssUIClassicAutoSellGray_CheckButton.tooltip = "When you open a Merchant shop, auto sell gray"..
" and repair items"
AbyssUIClassicAutoSellGray_CheckButton:SetChecked(AbyssUIClassicAddonSettings.ExtraFunctionSellGray)
addonTable.AutoSellGray = AbyssUIClassicAutoSellGray_CheckButton
-- OnClick Function
AbyssUIClassicAutoSellGray_CheckButton:SetScript("OnClick", function(self)
  AbyssUIClassicAddonSettings.ExtraFunctionSellGray = self:GetChecked()
end)
-- Auto Gamma Day/Night
local AbyssUIClassicAutoGamma_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassicAutoGamma_CheckButton", AbyssUIClassic_Config.childpanel3, "ChatConfigCheckButtonTemplate")
AbyssUIClassicAutoGamma_CheckButton:SetPoint("TOPLEFT", 200, -140)
AbyssUIClassicAutoGamma_CheckButton.Text:SetText("Auto Gamma\n(Day and Night Mode)")
AbyssUIClassicAutoGamma_CheckButton.tooltip = "Automatically change the gamma when is day to"..
" 1.2 (brighter) and to 1.0 (default) at night based on the local time"
AbyssUIClassicAutoGamma_CheckButton:SetChecked(AbyssUIClassicAddonSettings.ExtraFunctionAutoGamma)
-- OnClick Function
AbyssUIClassicAutoGamma_CheckButton:SetScript("OnClick", function(self)
  AbyssUIClassicAddonSettings.ExtraFunctionAutoGamma = self:GetChecked()
  --local dataTime = GetGameTime()
  local dataTime = tonumber(date("%H"))
  if ( dataTime >= 6 and dataTime < 18 ) then
    ConsoleExec( "Gamma 1.2" )
  elseif ( dataTime >= 18 ) then
    ConsoleExec( "Gamma 1.0" )
  end
end)
-- After Login/Reload
AbyssUIClassicAutoGamma_CheckButton:RegisterEvent("PLAYER_ENTERING_WORLD")
AbyssUIClassicAutoGamma_CheckButton:SetScript("OnEvent", function(self, event, ...)
  if ( event == "PLAYER_ENTERING_WORLD" ) then
    if AbyssUIClassicAddonSettings.ExtraFunctionAutoGamma == true then
      C_Timer.After(0.5, function ()
        local dataTime = tonumber(date("%H"))
        if ( dataTime >= 6 and dataTime < 18 ) then
          ConsoleExec( "Gamma 1.2" )
        elseif ( dataTime >= 18 ) then
          ConsoleExec( "Gamma 1.0" )
        end
      end)  
    end
  end
end)
-- American Clock Style --
local AbyssUIClassic_AmericanClock_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassic_AmericanClock_CheckButton", AbyssUIClassic_Config.childpanel3, "ChatConfigCheckButtonTemplate")
AbyssUIClassic_AmericanClock_CheckButton:SetPoint("TOPLEFT", 200, -170)
AbyssUIClassic_AmericanClock_CheckButton.Text:SetText("American Date Style")
AbyssUIClassic_AmericanClock_CheckButton.tooltip = "Change the date format of the whole UI to"..
" the American style"
AbyssUIClassic_AmericanClock_CheckButton:SetChecked(AbyssUIClassicAddonSettings.ExtraFunctionAmericanClock)
-- OnClick Function
AbyssUIClassic_AmericanClock_CheckButton:SetScript("OnClick", function(self)
  AbyssUIClassicAddonSettings.ExtraFunctionAmericanClock = self:GetChecked()
end)
-- Disable healing spam over player --
local AbyssUIClassic_DisableHealingSpam_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassic_DisableHealingSpam_CheckButton", AbyssUIClassic_Config.childpanel3, "ChatConfigCheckButtonTemplate")
AbyssUIClassic_DisableHealingSpam_CheckButton:SetPoint("TOPLEFT", 200, -200)
AbyssUIClassic_DisableHealingSpam_CheckButton.Text:SetText("Disable Portrait Text Spam")
AbyssUIClassic_DisableHealingSpam_CheckButton.tooltip = "Disable healing/damage spam over player"..
" and pet portraits"
AbyssUIClassic_DisableHealingSpam_CheckButton:SetChecked(AbyssUIClassicAddonSettings.ExtraFunctionDisableHealingSpam)
addonTable.DisableHealingSpam = AbyssUIClassic_DisableHealingSpam_CheckButton
-- OnClick Function
AbyssUIClassic_DisableHealingSpam_CheckButton:SetScript("OnClick", function(self)
  AbyssUIClassicAddonSettings.ExtraFunctionDisableHealingSpam = self:GetChecked()
  PlayerHitIndicator:SetText(nil)
  PlayerHitIndicator.SetText = function() end

  PetHitIndicator:SetText(nil)
  PetHitIndicator.SetText = function() end
end)
-- After Login/Reload
AbyssUIClassic_DisableHealingSpam_CheckButton:RegisterEvent("PLAYER_ENTERING_WORLD")
AbyssUIClassic_DisableHealingSpam_CheckButton:SetScript("OnEvent", function(self, event, ...)
  if ( event == "PLAYER_ENTERING_WORLD" ) then
    if ( AbyssUIClassicAddonSettings.ExtraFunctionDisableHealingSpam == true ) then
      PlayerHitIndicator:SetText(nil)
      PlayerHitIndicator.SetText = function() end

      PetHitIndicator:SetText(nil)
      PetHitIndicator.SetText = function() end
    end
  end
end)
-- Shaman Pink --
local AbyssUIClassic_ShamanPink_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassic_ShamanPink_CheckButton", AbyssUIClassic_Config.childpanel3, "ChatConfigCheckButtonTemplate")
AbyssUIClassic_ShamanPink_CheckButton:SetPoint("TOPLEFT", 200, -230)
AbyssUIClassic_ShamanPink_CheckButton.Text:SetText("Shaman Pink")
AbyssUIClassic_ShamanPink_CheckButton.tooltip = "Keep the color pink for Shaman health bars"..
" (portrait and tooltip)"
AbyssUIClassic_ShamanPink_CheckButton:SetChecked(AbyssUIClassicAddonSettings.ExtraFunctionShamanPink)
-- OnClick Function
AbyssUIClassic_ShamanPink_CheckButton:SetScript("OnClick", function(self)
  AbyssUIClassicAddonSettings.ExtraFunctionShamanPink = self:GetChecked()
  AbyssUIClassic_ReloadFrame:Show()
end)
-- Friendly Green --
local AbyssUIClassic_FriendlyHealthGreen_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassic_FriendlyHealthGreen_CheckButton", AbyssUIClassic_Config.childpanel3, "ChatConfigCheckButtonTemplate")
AbyssUIClassic_FriendlyHealthGreen_CheckButton:SetPoint("TOPLEFT", 200, -260)
AbyssUIClassic_FriendlyHealthGreen_CheckButton.Text:SetText("Default Friendly Health")
AbyssUIClassic_FriendlyHealthGreen_CheckButton.tooltip = "Friendly unit health bars in the default color"
AbyssUIClassic_FriendlyHealthGreen_CheckButton:SetChecked(AbyssUIClassicAddonSettings.ExtraFunctionFriendlyHealthGreen)
-- OnClick Function
AbyssUIClassic_FriendlyHealthGreen_CheckButton:SetScript("OnClick", function(self)
  AbyssUIClassicAddonSettings.ExtraFunctionFriendlyHealthGreen = self:GetChecked()
  AbyssUIClassic_ReloadFrame:Show()
end)
-- Transparent Background Name --
local AbyssUIClassic_TransparentName_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassic_TransparentName_CheckButton", AbyssUIClassic_Config.childpanel3, "ChatConfigCheckButtonTemplate")
AbyssUIClassic_TransparentName_CheckButton:SetPoint("TOPLEFT", 200, -290)
AbyssUIClassic_TransparentName_CheckButton.Text:SetText("Transparent Name")
AbyssUIClassic_TransparentName_CheckButton.tooltip = "Remove any color in the target name background"
AbyssUIClassic_TransparentName_CheckButton:SetChecked(AbyssUIClassicAddonSettings.ExtraFunctionTransparentName)
-- OnClick Function
AbyssUIClassic_TransparentName_CheckButton:SetScript("OnClick", function(self)
  AbyssUIClassicAddonSettings.ExtraFunctionTransparentName = self:GetChecked()
  AbyssUIClassic_ReloadFrame:Show()
end)
-- 3rd Column
-- Instance Leave --
local AbyssUIClassic_InstanceLeave_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassic_InstanceLeave_CheckButton", AbyssUIClassic_Config.childpanel3, "ChatConfigCheckButtonTemplate")
AbyssUIClassic_InstanceLeave_CheckButton:SetPoint("TOPLEFT", 400, -80)
AbyssUIClassic_InstanceLeave_CheckButton.Text:SetText("|cff848484Instance Leave Frame *Retail|r")
AbyssUIClassic_InstanceLeave_CheckButton.tooltip = "A dynamic frame that pop-up when you"..
" complete a LFG (dungeon, raid, etc)"
--AbyssUIClassic_InstanceLeave_CheckButton:SetChecked(AbyssUIClassicAddonSettings.ExtraFunctionInstanceLeave)
-- OnClick Function
AbyssUIClassic_InstanceLeave_CheckButton:SetScript("OnClick", function(self)
  --AbyssUIClassicAddonSettings.ExtraFunctionInstanceLeave = self:GetChecked()
  AbyssUIClassic_InstanceLeave_CheckButton:SetChecked(nil)
end)
-- CTRL + ' to confirm  --
local AbyssUIClassic_ConfirmPopUps_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassic_ConfirmPopUps_CheckButton", AbyssUIClassic_Config.childpanel3, "ChatConfigCheckButtonTemplate")
AbyssUIClassic_ConfirmPopUps_CheckButton:SetPoint("TOPLEFT", 400, -110)
AbyssUIClassic_ConfirmPopUps_CheckButton.Text:SetText("Confirm Pop-Ups (CTRL + ')")
AbyssUIClassic_ConfirmPopUps_CheckButton.tooltip = "When this is active you can confirm almost"..
" any pop-ups (release, quests, stacks, etc) pressing the keys Ctrl + '"
AbyssUIClassic_ConfirmPopUps_CheckButton:SetChecked(AbyssUIClassicAddonSettings.ExtraFunctionConfirmPopUps)
addonTable.ConfirmPopUps = AbyssUIClassic_ConfirmPopUps_CheckButton
-- OnClick Function
AbyssUIClassic_ConfirmPopUps_CheckButton:SetScript("OnClick", function(self)
  AbyssUIClassicAddonSettings.ExtraFunctionConfirmPopUps = self:GetChecked()
end)
-- Hide in Combat --
local AbyssUIClassic_HideInCombat_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassic_HideInCombat_CheckButton", AbyssUIClassic_Config.childpanel3, "ChatConfigCheckButtonTemplate")
AbyssUIClassic_HideInCombat_CheckButton:SetPoint("TOPLEFT", 400, -140)
AbyssUIClassic_HideInCombat_CheckButton.Text:SetText("Dynamic ObjectiveTrack Hide")
AbyssUIClassic_HideInCombat_CheckButton.tooltip = "Hide some parts of the interface when you"..
" are in combat or in a PVP instance"
AbyssUIClassic_HideInCombat_CheckButton:SetChecked(AbyssUIClassicAddonSettings.ExtraFunctionHideInCombat)
-- OnClick Function
AbyssUIClassic_HideInCombat_CheckButton:SetScript("OnClick", function(self)
  AbyssUIClassicAddonSettings.ExtraFunctionHideInCombat = self:GetChecked()
end)
-- Better Fonts --
local AbyssUIClassic_BetterFonts_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassic_BetterFonts_CheckButton", AbyssUIClassic_Config.childpanel3, "ChatConfigCheckButtonTemplate")
AbyssUIClassic_BetterFonts_CheckButton:SetPoint("TOPLEFT", 400, -170)
AbyssUIClassic_BetterFonts_CheckButton.Text:SetText("RPG chat fonts")
AbyssUIClassic_BetterFonts_CheckButton.tooltip = "Change the chat fonts to a RPG look-alike style"
AbyssUIClassic_BetterFonts_CheckButton:SetChecked(AbyssUIClassicAddonSettings.ExtraFunctionBetterFonts)
-- OnClick Function
AbyssUIClassic_BetterFonts_CheckButton:SetScript("OnClick", function(self)
  AbyssUIClassicAddonSettings.ExtraFunctionBetterFonts = self:GetChecked()
    AbyssUIClassic_ReloadFrame:Show()
end)
-- After Login/Reload
AbyssUIClassic_BetterFonts_CheckButton:RegisterEvent("PLAYER_ENTERING_WORLD")
AbyssUIClassic_BetterFonts_CheckButton:SetScript("OnEvent", function(self, event, ...)
  if ( event == "PLAYER_ENTERING_WORLD" ) then
    if ( AbyssUIClassicAddonSettings.ExtraFunctionBetterFonts == true ) then
       ChatFrame1:SetFont("Fonts\\MORPHEUS.TTF", 13)
       ChatFrame1.editBox.header:SetFont("Fonts\\MORPHEUS.TTF",13)
    else 
      return nil
    end
  end
end)
-- Better WorldMap --
local AbyssUIClassic_BetterWorldMap_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassic_BetterWorldMap_CheckButton", AbyssUIClassic_Config.childpanel3, "ChatConfigCheckButtonTemplate")
AbyssUIClassic_BetterWorldMap_CheckButton:SetPoint("TOPLEFT", 400, -200)
AbyssUIClassic_BetterWorldMap_CheckButton.Text:SetText("Better World Map")
AbyssUIClassic_BetterWorldMap_CheckButton.tooltip = "Makes the worldmap minimalist/clean"
AbyssUIClassic_BetterWorldMap_CheckButton:SetChecked(AbyssUIClassicAddonSettings.ExtraFunctionBetterWorldMap)
-- OnClick Function
AbyssUIClassic_BetterWorldMap_CheckButton:SetScript("OnClick", function(self)
  AbyssUIClassicAddonSettings.ExtraFunctionBetterWorldMap = self:GetChecked()
  AbyssUIClassic_ReloadFrame:Show()
end)
-- After Login/Reload
AbyssUIClassic_BetterWorldMap_CheckButton:RegisterEvent("PLAYER_ENTERING_WORLD")
AbyssUIClassic_BetterWorldMap_CheckButton:SetScript("OnEvent", function(self, event, ...)
  if ( event == "PLAYER_ENTERING_WORLD" ) then
    if ( AbyssUIClassicAddonSettings.ExtraFunctionBetterWorldMap == true ) then
      WorldMapFrame.BlackoutFrame:Hide()
      WorldMapFrame.BlackoutFrame:EnableMouse(false)
    else 
      WorldMapFrame.BlackoutFrame:Show()
      WorldMapFrame.BlackoutFrame:EnableMouse(true)
    end
  end
end)
-- WorldMap Fader --
-- Thanks to Ketho for the fader
local AbyssUIClassic_WorldMapFade_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassic_WorldMapFade_CheckButton", AbyssUIClassic_Config.childpanel3, "ChatConfigCheckButtonTemplate")
AbyssUIClassic_WorldMapFade_CheckButton:SetPoint("TOPLEFT", 400, -230)
AbyssUIClassic_WorldMapFade_CheckButton.Text:SetText("World Map Fader")
AbyssUIClassic_WorldMapFade_CheckButton.tooltip = "Makes the worldmap fade while you move"
AbyssUIClassic_WorldMapFade_CheckButton:SetChecked(AbyssUIClassicAddonSettings.ExtraFunctionWorldMapFade)
-- OnClick Function
AbyssUIClassic_WorldMapFade_CheckButton:SetScript("OnClick", function(self)
  AbyssUIClassicAddonSettings.ExtraFunctionWorldMapFade = self:GetChecked()
  AbyssUIClassic_ReloadFrame:Show()
end)
-- After Login/Reload
AbyssUIClassic_WorldMapFade_CheckButton:RegisterEvent("PLAYER_ENTERING_WORLD")
AbyssUIClassic_WorldMapFade_CheckButton:SetScript("OnEvent", function(self, event, ...)
  if ( event == "PLAYER_ENTERING_WORLD" ) then
    if ( AbyssUIClassicAddonSettings.ExtraFunctionWorldMapFade == true ) then
      PlayerMovementFrameFader.AddDeferredFrame(WorldMapFrame, .60, 1.0, .60)
    end
  end
end)
-- Default Nameplate Range --
local AbyssUIClassic_DefaultNameplate_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassic_DefaultNameplate_CheckButton", AbyssUIClassic_Config.childpanel3, "ChatConfigCheckButtonTemplate")
AbyssUIClassic_DefaultNameplate_CheckButton:SetPoint("TOPLEFT", 400, -260)
AbyssUIClassic_DefaultNameplate_CheckButton.Text:SetText("Default Nameplate Range")
AbyssUIClassic_DefaultNameplate_CheckButton.tooltip = "Disable the double range of"..
" nameplates to Blizzard default value"
AbyssUIClassic_DefaultNameplate_CheckButton:SetChecked(AbyssUIClassicAddonSettings.ExtraFunctionDefaultNameplate)
-- OnClick Function
AbyssUIClassic_DefaultNameplate_CheckButton:SetScript("OnClick", function(self)
  AbyssUIClassicAddonSettings.ExtraFunctionDefaultNameplate = self:GetChecked()
  AbyssUIClassic_ReloadFrame:Show()
end)
-- Disable PixelPerfect --
local AbyssUIClassic_PixelPerfect_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassic_PixelPerfect_CheckButton", AbyssUIClassic_Config.childpanel3, "ChatConfigCheckButtonTemplate")
AbyssUIClassic_PixelPerfect_CheckButton:SetPoint("TOPLEFT", 400, -290)
AbyssUIClassic_PixelPerfect_CheckButton.Text:SetText("|cfff2dc7fDisable PixelPerfect|r")
AbyssUIClassic_PixelPerfect_CheckButton.tooltip = "|cfff00000Attention|r\nPixelPerfect auto scale the UI"..
" to better fit your game screen size, keeping frames in place and fixing any crop or"..
" inconsistency that may occur (I don't recommend checking this option, unless you really"..
" need to scale the UI by yourself)"
AbyssUIClassic_PixelPerfect_CheckButton:SetChecked(AbyssUIClassicAddonSettings.ExtraFunctionPixelPerfect)
-- OnClick Function
AbyssUIClassic_PixelPerfect_CheckButton:SetScript("OnClick", function(self)
  AbyssUIClassicAddonSettings.ExtraFunctionPixelPerfect = self:GetChecked()
  AbyssUIClassic_ReloadFrame:Show()
end)
--End
----------------------------- AbyssUIClassic Stylization ------------------------------
-- Player Portrait Style --
-- AbyssUIClassicClassCircles01_CheckButton
local AbyssUIClassicClassCircles01_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassicClassCircles01_CheckButton", AbyssUIClassic_Config.childpanel4, "ChatConfigCheckButtonTemplate")
AbyssUIClassicClassCircles01_CheckButton:SetPoint("TOPLEFT", 10, -80)
AbyssUIClassicClassCircles01_CheckButton.Text:SetText("Artistic")
AbyssUIClassicClassCircles01_CheckButton.tooltip = "A artistic version of UnitPlayerFrame"
AbyssUIClassicClassCircles01_CheckButton:SetChecked(AbyssUIClassicAddonSettings.UIClassCircles01)
-- OnClick Function
AbyssUIClassicClassCircles01_CheckButton:SetScript("OnClick", function(self)
  if AbyssUIClassicAddonSettings.UIClassCircles02 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles03 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles04 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles05 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles06 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles07 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles08 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles09 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles10 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles11 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles12 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles13 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles14 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles15 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles16 ~= true then
    AbyssUIClassicAddonSettings.UIClassCircles01 = self:GetChecked()
    AbyssUIClassic_ReloadFrame:Show()
  else
    AbyssUIClassicClassCircles01_CheckButton:SetChecked(nil)
  end
end)
-- AbyssUIClassicClassCircles02_CheckButton
local AbyssUIClassicClassCircles02_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassicClassCircles02_CheckButton", AbyssUIClassic_Config.childpanel4, "ChatConfigCheckButtonTemplate")
AbyssUIClassicClassCircles02_CheckButton:SetPoint("TOPLEFT", 10, -110)
AbyssUIClassicClassCircles02_CheckButton.Text:SetText("Bright")
AbyssUIClassicClassCircles02_CheckButton.tooltip = "A bright version of UnitPlayerFrame"
AbyssUIClassicClassCircles02_CheckButton:SetChecked(AbyssUIClassicAddonSettings.UIClassCircles02)
-- OnClick Function
AbyssUIClassicClassCircles02_CheckButton:SetScript("OnClick", function(self)
  if AbyssUIClassicAddonSettings.UIClassCircles01 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles03 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles04 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles05 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles06 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles07 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles08 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles09 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles10 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles11 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles12 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles13 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles14 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles15 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles16 ~= true then
    AbyssUIClassicAddonSettings.UIClassCircles02 = self:GetChecked()
    AbyssUIClassic_ReloadFrame:Show()
  else
    AbyssUIClassicClassCircles02_CheckButton:SetChecked(nil)
  end
end)
-- AbyssUIClassicClassCircles03_CheckButton
local AbyssUIClassicClassCircles03_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassicClassCircles03_CheckButton", AbyssUIClassic_Config.childpanel4, "ChatConfigCheckButtonTemplate")
AbyssUIClassicClassCircles03_CheckButton:SetPoint("TOPLEFT", 10, -140)
AbyssUIClassicClassCircles03_CheckButton.Text:SetText("Classic")
AbyssUIClassicClassCircles03_CheckButton.tooltip = "A classic version of UnitPlayerFrame"
AbyssUIClassicClassCircles03_CheckButton:SetChecked(AbyssUIClassicAddonSettings.UIClassCircles03)
-- OnClick Function
AbyssUIClassicClassCircles03_CheckButton:SetScript("OnClick", function(self)
  if AbyssUIClassicAddonSettings.UIClassCircles01 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles02 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles04 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles05 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles06 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles07 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles08 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles09 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles10 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles11 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles12 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles13 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles14 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles15 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles16 ~= true then
    AbyssUIClassicAddonSettings.UIClassCircles03 = self:GetChecked()
    AbyssUIClassic_ReloadFrame:Show()
  else
    AbyssUIClassicClassCircles03_CheckButton:SetChecked(nil)
  end
end)
-- AbyssUIClassicClassCircles04_CheckButton
local AbyssUIClassicClassCircles04_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassicClassCircles04_CheckButton", AbyssUIClassic_Config.childpanel4, "ChatConfigCheckButtonTemplate")
AbyssUIClassicClassCircles04_CheckButton:SetPoint("TOPLEFT", 10, -170)
AbyssUIClassicClassCircles04_CheckButton.Text:SetText("Artistic_V2")
AbyssUIClassicClassCircles04_CheckButton.tooltip = "Version two of artistic UnitPlayerFrame"
AbyssUIClassicClassCircles04_CheckButton:SetChecked(AbyssUIClassicAddonSettings.UIClassCircles04)
-- OnClick Function
AbyssUIClassicClassCircles04_CheckButton:SetScript("OnClick", function(self)
  if AbyssUIClassicAddonSettings.UIClassCircles01 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles02 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles03 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles05 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles06 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles07 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles08 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles09 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles10 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles11 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles12 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles13 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles14 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles15 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles16 ~= true then
    AbyssUIClassicAddonSettings.UIClassCircles04 = self:GetChecked()
    AbyssUIClassic_ReloadFrame:Show()
  else
    AbyssUIClassicClassCircles04_CheckButton:SetChecked(nil)
  end
end)
-- AbyssUIClassicClassCircles05_CheckButton
local AbyssUIClassicClassCircles05_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassicClassCircles05_CheckButton", AbyssUIClassic_Config.childpanel4, "ChatConfigCheckButtonTemplate")
AbyssUIClassicClassCircles05_CheckButton:SetPoint("TOPLEFT", 180 , -80)
AbyssUIClassicClassCircles05_CheckButton.Text:SetText("Dark")
AbyssUIClassicClassCircles05_CheckButton.tooltip = "A dark version of UnitPlayerFrame"
AbyssUIClassicClassCircles05_CheckButton:SetChecked(AbyssUIClassicAddonSettings.UIClassCircles05)
-- OnClick Function
AbyssUIClassicClassCircles05_CheckButton:SetScript("OnClick", function(self)
  if AbyssUIClassicAddonSettings.UIClassCircles01 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles02 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles03 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles04 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles06 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles07 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles08 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles09 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles10 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles11 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles12 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles13 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles14 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles15 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles16 ~= true then
    AbyssUIClassicAddonSettings.UIClassCircles05 = self:GetChecked()
    AbyssUIClassic_ReloadFrame:Show()
  else
    AbyssUIClassicClassCircles05_CheckButton:SetChecked(nil)
  end
end)
-- AbyssUIClassicClassCircles06_CheckButton
local AbyssUIClassicClassCircles06_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassicClassCircles06_CheckButton", AbyssUIClassic_Config.childpanel4, "ChatConfigCheckButtonTemplate")
AbyssUIClassicClassCircles06_CheckButton:SetPoint("TOPLEFT", 180, -110)
AbyssUIClassicClassCircles06_CheckButton.Text:SetText("Dark_Gray")
AbyssUIClassicClassCircles06_CheckButton.tooltip = "A dark gray version of UnitPlayerFrame"
AbyssUIClassicClassCircles06_CheckButton:SetChecked(AbyssUIClassicAddonSettings.UIClassCircles06)
-- OnClick Function
AbyssUIClassicClassCircles06_CheckButton:SetScript("OnClick", function(self)
  if AbyssUIClassicAddonSettings.UIClassCircles01 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles02 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles03 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles04 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles05 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles07 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles08 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles09 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles10 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles11 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles12 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles13 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles14 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles15 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles16 ~= true then
    AbyssUIClassicAddonSettings.UIClassCircles06 = self:GetChecked()
    AbyssUIClassic_ReloadFrame:Show()
  else
    AbyssUIClassicClassCircles06_CheckButton:SetChecked(nil)
  end
end)
-- AbyssUIClassicClassCircles07_CheckButton
local AbyssUIClassicClassCircles07_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassicClassCircles07_CheckButton", AbyssUIClassic_Config.childpanel4, "ChatConfigCheckButtonTemplate")
AbyssUIClassicClassCircles07_CheckButton:SetPoint("TOPLEFT", 180, -140)
AbyssUIClassicClassCircles07_CheckButton.Text:SetText("Dark_V2")
AbyssUIClassicClassCircles07_CheckButton.tooltip = "Version 2 of the dark UnitPlayerFrame"
AbyssUIClassicClassCircles07_CheckButton:SetChecked(AbyssUIClassicAddonSettings.UIClassCircles07)
-- OnClick Function
AbyssUIClassicClassCircles07_CheckButton:SetScript("OnClick", function(self)
  if AbyssUIClassicAddonSettings.UIClassCircles01 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles02 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles03 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles04 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles05 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles06 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles08 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles09 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles10 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles11 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles12 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles13 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles14 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles15 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles16 ~= true then
    AbyssUIClassicAddonSettings.UIClassCircles07 = self:GetChecked()
    AbyssUIClassic_ReloadFrame:Show()
  else
    AbyssUIClassicClassCircles07_CheckButton:SetChecked(nil)
  end
end)
-- AbyssUIClassicClassCircles08_CheckButton
local AbyssUIClassicClassCircles08_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassicClassCircles08_CheckButton", AbyssUIClassic_Config.childpanel4, "ChatConfigCheckButtonTemplate")
AbyssUIClassicClassCircles08_CheckButton:SetPoint("TOPLEFT", 180, -170)
AbyssUIClassicClassCircles08_CheckButton.Text:SetText("Grayscale")
AbyssUIClassicClassCircles08_CheckButton.tooltip = "A grayscale version of UnitPlayerFrame"
AbyssUIClassicClassCircles08_CheckButton:SetChecked(AbyssUIClassicAddonSettings.UIClassCircles08)
-- OnClick Function
AbyssUIClassicClassCircles08_CheckButton:SetScript("OnClick", function(self)
  if AbyssUIClassicAddonSettings.UIClassCircles01 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles02 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles03 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles04 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles05 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles06 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles07 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles09 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles10 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles11 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles12 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles13 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles14 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles15 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles16 ~= true then
    AbyssUIClassicAddonSettings.UIClassCircles08 = self:GetChecked()
    AbyssUIClassic_ReloadFrame:Show()
  else
    AbyssUIClassicClassCircles08_CheckButton:SetChecked(nil)
  end
end)
-- AbyssUIClassicClassCircles09_CheckButton
local AbyssUIClassicClassCircles09_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassicClassCircles09_CheckButton", AbyssUIClassic_Config.childpanel4, "ChatConfigCheckButtonTemplate")
AbyssUIClassicClassCircles09_CheckButton:SetPoint("TOPLEFT", 10, -200)
AbyssUIClassicClassCircles09_CheckButton.Text:SetText("Light_Gray")
AbyssUIClassicClassCircles09_CheckButton.tooltip = "A light gray version of UnitPlayerFrame"
AbyssUIClassicClassCircles09_CheckButton:SetChecked(AbyssUIClassicAddonSettings.UIClassCircles09)
-- OnClick Function
AbyssUIClassicClassCircles09_CheckButton:SetScript("OnClick", function(self)
  if AbyssUIClassicAddonSettings.UIClassCircles01 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles02 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles03 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles04 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles05 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles06 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles07 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles08 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles10 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles11 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles12 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles13 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles14 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles15 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles16 ~= true then
    AbyssUIClassicAddonSettings.UIClassCircles09 = self:GetChecked()
    AbyssUIClassic_ReloadFrame:Show()
  else
    AbyssUIClassicClassCircles09_CheckButton:SetChecked(nil)
  end
end)
-- AbyssUIClassicClassCircles10_CheckButton
local AbyssUIClassicClassCircles10_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassicClassCircles10_CheckButton", AbyssUIClassic_Config.childpanel4, "ChatConfigCheckButtonTemplate")
AbyssUIClassicClassCircles10_CheckButton:SetPoint("TOPLEFT", 180, -200)
AbyssUIClassicClassCircles10_CheckButton.Text:SetText("Medium_Gray")
AbyssUIClassicClassCircles10_CheckButton.tooltip = "A medium gray version of UnitPlayerFrame"
AbyssUIClassicClassCircles10_CheckButton:SetChecked(AbyssUIClassicAddonSettings.UIClassCircles10)
-- OnClick Function
AbyssUIClassicClassCircles10_CheckButton:SetScript("OnClick", function(self)
  if AbyssUIClassicAddonSettings.UIClassCircles01 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles02 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles03 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles04 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles05 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles06 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles07 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles08 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles09 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles11 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles12 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles13 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles14 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles15 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles16 ~= true then
    AbyssUIClassicAddonSettings.UIClassCircles10 = self:GetChecked()
    AbyssUIClassic_ReloadFrame:Show()
  else
    AbyssUIClassicClassCircles10_CheckButton:SetChecked(nil)
  end
end)
-- AbyssUIClassicClassCircles11_CheckButton
local AbyssUIClassicClassCircles11_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassicClassCircles11_CheckButton", AbyssUIClassic_Config.childpanel4, "ChatConfigCheckButtonTemplate")
AbyssUIClassicClassCircles11_CheckButton:SetPoint("TOPLEFT", 10, -230)
AbyssUIClassicClassCircles11_CheckButton.Text:SetText("Minimal_Blue")
AbyssUIClassicClassCircles11_CheckButton.tooltip = "A blue version of UnitPlayerFrame"
AbyssUIClassicClassCircles11_CheckButton:SetChecked(AbyssUIClassicAddonSettings.UIClassCircles11)
-- OnClick Function
AbyssUIClassicClassCircles11_CheckButton:SetScript("OnClick", function(self)
  if AbyssUIClassicAddonSettings.UIClassCircles01 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles02 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles03 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles04 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles05 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles06 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles07 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles08 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles09 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles10 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles12 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles13 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles14 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles15 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles16 ~= true then
    AbyssUIClassicAddonSettings.UIClassCircles11 = self:GetChecked()
    AbyssUIClassic_ReloadFrame:Show()
  else
    AbyssUIClassicClassCircles11_CheckButton:SetChecked(nil)
  end
end)
-- AbyssUIClassicClassCircles12_CheckButton
local AbyssUIClassicClassCircles12_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassicClassCircles12_CheckButton", AbyssUIClassic_Config.childpanel4, "ChatConfigCheckButtonTemplate")
AbyssUIClassicClassCircles12_CheckButton:SetPoint("TOPLEFT", 180, -230)
AbyssUIClassicClassCircles12_CheckButton.Text:SetText("Minimal_Red")
AbyssUIClassicClassCircles12_CheckButton.tooltip = "A red version of UnitPlayerFrame"
AbyssUIClassicClassCircles12_CheckButton:SetChecked(AbyssUIClassicAddonSettings.UIClassCircles12)
-- OnClick Function
AbyssUIClassicClassCircles12_CheckButton:SetScript("OnClick", function(self)
  if AbyssUIClassicAddonSettings.UIClassCircles01 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles02 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles03 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles04 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles05 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles06 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles07 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles08 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles09 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles10 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles11 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles13 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles14 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles15 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles16 ~= true then
    AbyssUIClassicAddonSettings.UIClassCircles12 = self:GetChecked()
    AbyssUIClassic_ReloadFrame:Show()
  else
    AbyssUIClassicClassCircles12_CheckButton:SetChecked(nil)
  end
end)
-- AbyssUIClassicClassCircles13_CheckButton
local AbyssUIClassicClassCircles13_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassicClassCircles13_CheckButton", AbyssUIClassic_Config.childpanel4, "ChatConfigCheckButtonTemplate")
AbyssUIClassicClassCircles13_CheckButton:SetPoint("TOPLEFT", 10, -260)
AbyssUIClassicClassCircles13_CheckButton.Text:SetText("Muted")
AbyssUIClassicClassCircles13_CheckButton.tooltip = "A muted version of UnitPlayerFrame"
AbyssUIClassicClassCircles13_CheckButton:SetChecked(AbyssUIClassicAddonSettings.UIClassCircles13)
-- OnClick Function
AbyssUIClassicClassCircles13_CheckButton:SetScript("OnClick", function(self)
  if AbyssUIClassicAddonSettings.UIClassCircles01 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles02 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles03 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles04 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles05 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles06 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles07 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles08 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles09 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles10 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles11 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles12 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles14 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles15 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles16 ~= true then
    AbyssUIClassicAddonSettings.UIClassCircles13 = self:GetChecked()
    AbyssUIClassic_ReloadFrame:Show()
  else
    AbyssUIClassicClassCircles13_CheckButton:SetChecked(nil)
  end
end)
-- AbyssUIClassicClassCircles14_CheckButton
local AbyssUIClassicClassCircles14_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassicClassCircles14_CheckButton", AbyssUIClassic_Config.childpanel4, "ChatConfigCheckButtonTemplate")
AbyssUIClassicClassCircles14_CheckButton:SetPoint("TOPLEFT", 180, -260)
AbyssUIClassicClassCircles14_CheckButton.Text:SetText("Psychedelic")
AbyssUIClassicClassCircles14_CheckButton.tooltip = "A psychedelic version of UnitPlayerFrame"
AbyssUIClassicClassCircles14_CheckButton:SetChecked(AbyssUIClassicAddonSettings.UIClassCircles14)
-- OnClick Function
AbyssUIClassicClassCircles14_CheckButton:SetScript("OnClick", function(self)
  if AbyssUIClassicAddonSettings.UIClassCircles01 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles02 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles03 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles04 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles05 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles06 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles07 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles08 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles09 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles10 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles11 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles12 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles13 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles15 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles16 ~= true then
    AbyssUIClassicAddonSettings.UIClassCircles14 = self:GetChecked()
    AbyssUIClassic_ReloadFrame:Show()
  else
    AbyssUIClassicClassCircles14_CheckButton:SetChecked(nil)
  end
end)
-- AbyssUIClassicClassCircles15_CheckButton
local AbyssUIClassicClassCircles15_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassicClassCircles14_CheckButton", AbyssUIClassic_Config.childpanel4, "ChatConfigCheckButtonTemplate")
AbyssUIClassicClassCircles15_CheckButton:SetPoint("TOPLEFT", 10, -290)
AbyssUIClassicClassCircles15_CheckButton.Text:SetText("Retro")
AbyssUIClassicClassCircles15_CheckButton.tooltip = "A retrowave version of UnitPlayerFrame"
AbyssUIClassicClassCircles15_CheckButton:SetChecked(AbyssUIClassicAddonSettings.UIClassCircles15)
-- OnClick Function
AbyssUIClassicClassCircles15_CheckButton:SetScript("OnClick", function(self)
  if AbyssUIClassicAddonSettings.UIClassCircles01 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles02 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles03 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles04 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles05 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles06 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles07 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles08 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles09 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles10 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles11 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles12 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles13 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles14 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles16 ~= true then
    AbyssUIClassicAddonSettings.UIClassCircles15 = self:GetChecked()
    AbyssUIClassic_ReloadFrame:Show()
  else
    AbyssUIClassicClassCircles15_CheckButton:SetChecked(nil)
  end
end)
-- AbyssUIClassicClassCircles16_CheckButton
local AbyssUIClassicClassCircles16_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassicClassCircles14_CheckButton", AbyssUIClassic_Config.childpanel4, "ChatConfigCheckButtonTemplate")
AbyssUIClassicClassCircles16_CheckButton:SetPoint("TOPLEFT", 180, -290)
AbyssUIClassicClassCircles16_CheckButton.Text:SetText("Vibrant")
AbyssUIClassicClassCircles16_CheckButton.tooltip = "A vibrant version of UnitPlayerFrame"
AbyssUIClassicClassCircles16_CheckButton:SetChecked(AbyssUIClassicAddonSettings.UIClassCircles16)
-- OnClick Function
AbyssUIClassicClassCircles16_CheckButton:SetScript("OnClick", function(self)
  if AbyssUIClassicAddonSettings.UIClassCircles01 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles02 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles03 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles04 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles05 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles06 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles07 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles08 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles09 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles10 ~= true and 
     AbyssUIClassicAddonSettings.UIClassCircles11 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles12 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles13 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles14 ~= true and
     AbyssUIClassicAddonSettings.UIClassCircles15 ~= true then
    AbyssUIClassicAddonSettings.UIClassCircles16 = self:GetChecked()
    AbyssUIClassic_ReloadFrame:Show()
  else
    AbyssUIClassicClassCircles16_CheckButton:SetChecked(nil)
  end
end)
-- Frame Colorization --
-- AbyssUIClassicVertexColorFrames01_CheckButton
local AbyssUIClassicVertexColorFrames01_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassicVertexColorFrames01_CheckButton", AbyssUIClassic_Config.childpanel4, "ChatConfigCheckButtonTemplate")
AbyssUIClassicVertexColorFrames01_CheckButton:SetPoint("TOPRIGHT", -250, -80)
AbyssUIClassicVertexColorFrames01_CheckButton.Text:SetText("|cffc0c0c0Blizzard (Default)|r")
AbyssUIClassicVertexColorFrames01_CheckButton.tooltip = "Blizzard Silver Colorization for Frames"
AbyssUIClassicVertexColorFrames01_CheckButton:SetChecked(AbyssUIClassicAddonSettings.UIVertexColorFrames01)
-- OnClick Function
AbyssUIClassicVertexColorFrames01_CheckButton:SetScript("OnClick", function(self)
  if AbyssUIClassicAddonSettings.UIVertexColorFrames02 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames03 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames04 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames05 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames06 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames07 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames08 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames09 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames10 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames11 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames12 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames13 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames14 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames15 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames16 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFramesColorPicker ~= true then
    AbyssUIClassicAddonSettings.UIVertexColorFrames01 = self:GetChecked()
    AbyssUIClassic_ReloadFrame:Show()
  else
    AbyssUIClassicVertexColorFrames01_CheckButton:SetChecked(nil)
  end
end)
-- AbyssUIClassicVertexColorFrames02_CheckButton
local AbyssUIClassicVertexColorFrames02_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassicVertexColorFrames02_CheckButton", AbyssUIClassic_Config.childpanel4, "ChatConfigCheckButtonTemplate")
AbyssUIClassicVertexColorFrames02_CheckButton:SetPoint("TOPRIGHT", -80, -80)
AbyssUIClassicVertexColorFrames02_CheckButton.Text:SetText("|cff636363Blackout|r")
AbyssUIClassicVertexColorFrames02_CheckButton.tooltip = "A completely Dark Frame Colorization"
AbyssUIClassicVertexColorFrames02_CheckButton:SetChecked(AbyssUIClassicAddonSettings.UIVertexColorFrames02)
-- OnClick Function
AbyssUIClassicVertexColorFrames02_CheckButton:SetScript("OnClick", function(self)
  if AbyssUIClassicAddonSettings.UIVertexColorFrames01 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames03 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames04 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames05 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames06 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames07 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames08 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames09 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames10 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames11 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames12 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames13 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames14 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames15 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames16 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFramesColorPicker ~= true then
    AbyssUIClassicAddonSettings.UIVertexColorFrames02 = self:GetChecked()
    AbyssUIClassic_ReloadFrame:Show()
  else
    AbyssUIClassicVertexColorFrames02_CheckButton:SetChecked(nil)
  end
end)
-- AbyssUIClassicVertexColorFrames03_CheckButton
local AbyssUIClassicVertexColorFrames03_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassicVertexColorFrames03_CheckButton", AbyssUIClassic_Config.childpanel4, "ChatConfigCheckButtonTemplate")
AbyssUIClassicVertexColorFrames03_CheckButton:SetPoint("TOPRIGHT", -250, -110)
AbyssUIClassicVertexColorFrames03_CheckButton.Text:SetText("|cffb62a25Blood|r")
AbyssUIClassicVertexColorFrames03_CheckButton.tooltip = "A Dark Red Frame Colorization"
AbyssUIClassicVertexColorFrames03_CheckButton:SetChecked(AbyssUIClassicAddonSettings.UIVertexColorFrames03)
-- OnClick Function
AbyssUIClassicVertexColorFrames03_CheckButton:SetScript("OnClick", function(self)
  if AbyssUIClassicAddonSettings.UIVertexColorFrames01 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames02 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames04 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames05 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames06 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames07 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames08 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames09 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames10 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames11 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames12 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames13 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames14 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames15 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames16 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFramesColorPicker ~= true then
    AbyssUIClassicAddonSettings.UIVertexColorFrames03 = self:GetChecked()
    AbyssUIClassic_ReloadFrame:Show()
  else
    AbyssUIClassicVertexColorFrames03_CheckButton:SetChecked(nil)
  end
end)
-- AbyssUIClassicVertexColorFrames04_CheckButton
local AbyssUIClassicVertexColorFrames04_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassicVertexColorFrames04_CheckButton", AbyssUIClassic_Config.childpanel4, "ChatConfigCheckButtonTemplate")
AbyssUIClassicVertexColorFrames04_CheckButton:SetPoint("TOPRIGHT", -80, -110)
AbyssUIClassicVertexColorFrames04_CheckButton.Text:SetText("|cffecc13cGold|r")
AbyssUIClassicVertexColorFrames04_CheckButton.tooltip = "A Golden Frame Colorization"
AbyssUIClassicVertexColorFrames04_CheckButton:SetChecked(AbyssUIClassicAddonSettings.UIVertexColorFrames04)
-- OnClick Function
AbyssUIClassicVertexColorFrames04_CheckButton:SetScript("OnClick", function(self)
  if AbyssUIClassicAddonSettings.UIVertexColorFrames01 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames02 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames03 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames05 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames06 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames07 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames08 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames09 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames10 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames11 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames12 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames13 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames14 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames15 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames16 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFramesColorPicker ~= true then
    AbyssUIClassicAddonSettings.UIVertexColorFrames04 = self:GetChecked()
    AbyssUIClassic_ReloadFrame:Show()
  else
    AbyssUIClassicVertexColorFrames04_CheckButton:SetChecked(nil)
  end
end)
-- AbyssUIClassicVertexColorFrames05_CheckButton
local AbyssUIClassicVertexColorFrames05_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassicVertexColorFrames05_CheckButton", AbyssUIClassic_Config.childpanel4, "ChatConfigCheckButtonTemplate")
AbyssUIClassicVertexColorFrames05_CheckButton:SetPoint("TOPRIGHT", -250, -140)
AbyssUIClassicVertexColorFrames05_CheckButton.Text:SetText("|cffc41F3BDeath Knight|r")
AbyssUIClassicVertexColorFrames05_CheckButton.tooltip = "DK Class Frame Colorization"
AbyssUIClassicVertexColorFrames05_CheckButton:SetChecked(AbyssUIClassicAddonSettings.UIVertexColorFrames05)
-- OnClick Function
AbyssUIClassicVertexColorFrames05_CheckButton:SetScript("OnClick", function(self)
  if AbyssUIClassicAddonSettings.UIVertexColorFrames01 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames02 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames03 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames04 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames06 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames07 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames08 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames09 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames10 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames11 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames12 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames13 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames14 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames15 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames16 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFramesColorPicker ~= true then
    AbyssUIClassicAddonSettings.UIVertexColorFrames05 = self:GetChecked()
    AbyssUIClassic_ReloadFrame:Show()
  else
    AbyssUIClassicVertexColorFrames05_CheckButton:SetChecked(nil)
  end
end)
-- AbyssUIClassicVertexColorFrames06_CheckButton
local AbyssUIClassicVertexColorFrames06_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassicVertexColorFrames06_CheckButton", AbyssUIClassic_Config.childpanel4, "ChatConfigCheckButtonTemplate")
AbyssUIClassicVertexColorFrames06_CheckButton:SetPoint("TOPRIGHT", -80, -140)
AbyssUIClassicVertexColorFrames06_CheckButton.Text:SetText("|cffA330C9Demon\nHunter|r")
AbyssUIClassicVertexColorFrames06_CheckButton.tooltip = "DH Class Frame Colorization"
AbyssUIClassicVertexColorFrames06_CheckButton:SetChecked(AbyssUIClassicAddonSettings.UIVertexColorFrames06)
-- OnClick Function
AbyssUIClassicVertexColorFrames06_CheckButton:SetScript("OnClick", function(self)
  if AbyssUIClassicAddonSettings.UIVertexColorFrames01 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames02 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames03 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames04 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames05 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames07 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames08 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames09 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames10 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames11 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames12 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames13 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames14 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames15 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames16 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFramesColorPicker ~= true then
    AbyssUIClassicAddonSettings.UIVertexColorFrames06 = self:GetChecked()
    AbyssUIClassic_ReloadFrame:Show()
  else
    AbyssUIClassicVertexColorFrames06_CheckButton:SetChecked(nil)
  end
end)
-- AbyssUIClassicVertexColorFrames07_CheckButton
local AbyssUIClassicVertexColorFrames07_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassicVertexColorFrames07_CheckButton", AbyssUIClassic_Config.childpanel4, "ChatConfigCheckButtonTemplate")
AbyssUIClassicVertexColorFrames07_CheckButton:SetPoint("TOPRIGHT", -250, -170)
AbyssUIClassicVertexColorFrames07_CheckButton.Text:SetText("|cffFF7D0ADruid|r")
AbyssUIClassicVertexColorFrames07_CheckButton.tooltip = "Druid Class Frame Colorization"
AbyssUIClassicVertexColorFrames07_CheckButton:SetChecked(AbyssUIClassicAddonSettings.UIVertexColorFrames07)
-- OnClick Function
AbyssUIClassicVertexColorFrames07_CheckButton:SetScript("OnClick", function(self)
  if AbyssUIClassicAddonSettings.UIVertexColorFrames01 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames02 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames03 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames04 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames05 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames06 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames08 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames09 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames10 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames11 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames12 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames13 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames14 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames15 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames16 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFramesColorPicker ~= true then
    AbyssUIClassicAddonSettings.UIVertexColorFrames07 = self:GetChecked()
    AbyssUIClassic_ReloadFrame:Show()
  else
    AbyssUIClassicVertexColorFrames07_CheckButton:SetChecked(nil)
  end
end)
-- AbyssUIClassicVertexColorFrames08_CheckButton
local AbyssUIClassicVertexColorFrames08_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassicVertexColorFrames08_CheckButton", AbyssUIClassic_Config.childpanel4, "ChatConfigCheckButtonTemplate")
AbyssUIClassicVertexColorFrames08_CheckButton:SetPoint("TOPRIGHT", -80, -170)
AbyssUIClassicVertexColorFrames08_CheckButton.Text:SetText("|cffABD473Hunter|r")
AbyssUIClassicVertexColorFrames08_CheckButton.tooltip = "Hunter Class Frame Colorization"
AbyssUIClassicVertexColorFrames08_CheckButton:SetChecked(AbyssUIClassicAddonSettings.UIVertexColorFrames08)
-- OnClick Function
AbyssUIClassicVertexColorFrames08_CheckButton:SetScript("OnClick", function(self)
  if AbyssUIClassicAddonSettings.UIVertexColorFrames01 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames02 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames03 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames04 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames05 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames06 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames07 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames09 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames10 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames11 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames12 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames13 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames14 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames15 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames16 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFramesColorPicker ~= true then
    AbyssUIClassicAddonSettings.UIVertexColorFrames08 = self:GetChecked()
    AbyssUIClassic_ReloadFrame:Show()
  else
    AbyssUIClassicVertexColorFrames08_CheckButton:SetChecked(nil)
  end
end)
-- AbyssUIClassicVertexColorFrames09_CheckButton
local AbyssUIClassicVertexColorFrames09_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassicVertexColorFrames09_CheckButton", AbyssUIClassic_Config.childpanel4, "ChatConfigCheckButtonTemplate")
AbyssUIClassicVertexColorFrames09_CheckButton:SetPoint("TOPRIGHT", -250, -200)
AbyssUIClassicVertexColorFrames09_CheckButton.Text:SetText("|cff69CCF0Mage|r")
AbyssUIClassicVertexColorFrames09_CheckButton.tooltip = "Mage Class Frame Colorization"
AbyssUIClassicVertexColorFrames09_CheckButton:SetChecked(AbyssUIClassicAddonSettings.UIVertexColorFrames09)
-- OnClick Function
AbyssUIClassicVertexColorFrames09_CheckButton:SetScript("OnClick", function(self)
  if AbyssUIClassicAddonSettings.UIVertexColorFrames01 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames02 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames03 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames04 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames05 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames06 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames07 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames08 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames10 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames11 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames12 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames13 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames14 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames15 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames16 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFramesColorPicker ~= true then
    AbyssUIClassicAddonSettings.UIVertexColorFrames09 = self:GetChecked()
    AbyssUIClassic_ReloadFrame:Show()
  else
    AbyssUIClassicVertexColorFrames09_CheckButton:SetChecked(nil)
  end
end)
-- AbyssUIClassicVertexColorFrames10_CheckButton
local AbyssUIClassicVertexColorFrames10_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassicVertexColorFrames10_CheckButton", AbyssUIClassic_Config.childpanel4, "ChatConfigCheckButtonTemplate")
AbyssUIClassicVertexColorFrames10_CheckButton:SetPoint("TOPRIGHT", -80, -200)
AbyssUIClassicVertexColorFrames10_CheckButton.Text:SetText("|cff00FF96Monk|r")
AbyssUIClassicVertexColorFrames10_CheckButton.tooltip = "Monk Class Frame Colorization"
AbyssUIClassicVertexColorFrames10_CheckButton:SetChecked(AbyssUIClassicAddonSettings.UIVertexColorFrames10)
-- OnClick Function
AbyssUIClassicVertexColorFrames10_CheckButton:SetScript("OnClick", function(self)
  if AbyssUIClassicAddonSettings.UIVertexColorFrames01 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames02 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames03 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames04 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames05 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames06 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames07 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames08 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames09 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames11 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames12 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames13 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames14 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames15 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames16 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFramesColorPicker ~= true then
    AbyssUIClassicAddonSettings.UIVertexColorFrames10 = self:GetChecked()
    AbyssUIClassic_ReloadFrame:Show()
  else
    AbyssUIClassicVertexColorFrames10_CheckButton:SetChecked(nil)
  end
end)
-- AbyssUIClassicVertexColorFrames11_CheckButton
local AbyssUIClassicVertexColorFrames11_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassicVertexColorFrames11_CheckButton", AbyssUIClassic_Config.childpanel4, "ChatConfigCheckButtonTemplate")
AbyssUIClassicVertexColorFrames11_CheckButton:SetPoint("TOPRIGHT", -250, -230)
AbyssUIClassicVertexColorFrames11_CheckButton.Text:SetText("|cffF58CBAPaladin|r")
AbyssUIClassicVertexColorFrames11_CheckButton.tooltip = "Paladin Class Frame Colorization"
AbyssUIClassicVertexColorFrames11_CheckButton:SetChecked(AbyssUIClassicAddonSettings.UIVertexColorFrames11)
-- OnClick Function
AbyssUIClassicVertexColorFrames11_CheckButton:SetScript("OnClick", function(self)
  if AbyssUIClassicAddonSettings.UIVertexColorFrames01 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames02 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames03 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames04 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames05 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames06 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames07 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames08 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames09 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames10 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames12 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames13 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames14 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames15 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames16 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFramesColorPicker ~= true then
    AbyssUIClassicAddonSettings.UIVertexColorFrames11 = self:GetChecked()
    AbyssUIClassic_ReloadFrame:Show()
  else
    AbyssUIClassicVertexColorFrames11_CheckButton:SetChecked(nil)
  end
end)
-- AbyssUIClassicVertexColorFrames12_CheckButton
local AbyssUIClassicVertexColorFrames12_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassicVertexColorFrames12_CheckButton", AbyssUIClassic_Config.childpanel4, "ChatConfigCheckButtonTemplate")
AbyssUIClassicVertexColorFrames12_CheckButton:SetPoint("TOPRIGHT", -80, -230)
AbyssUIClassicVertexColorFrames12_CheckButton.Text:SetText("Priest")
AbyssUIClassicVertexColorFrames12_CheckButton.tooltip = "Priest Class Frame Colorization (Shadow Priest)"
AbyssUIClassicVertexColorFrames12_CheckButton:SetChecked(AbyssUIClassicAddonSettings.UIVertexColorFrames12)
-- OnClick Function
AbyssUIClassicVertexColorFrames12_CheckButton:SetScript("OnClick", function(self)
  if AbyssUIClassicAddonSettings.UIVertexColorFrames01 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames02 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames03 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames04 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames05 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames06 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames07 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames08 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames09 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames10 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames11 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames13 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames14 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames15 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames16 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFramesColorPicker ~= true then
    AbyssUIClassicAddonSettings.UIVertexColorFrames12 = self:GetChecked()
    AbyssUIClassic_ReloadFrame:Show()
  else
    AbyssUIClassicVertexColorFrames12_CheckButton:SetChecked(nil)
  end
end)
-- AbyssUIClassicVertexColorFrames13_CheckButton
local AbyssUIClassicVertexColorFrames13_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassicVertexColorFrames13_CheckButton", AbyssUIClassic_Config.childpanel4, "ChatConfigCheckButtonTemplate")
AbyssUIClassicVertexColorFrames13_CheckButton:SetPoint("TOPRIGHT", -250, -260)
AbyssUIClassicVertexColorFrames13_CheckButton.Text:SetText("|cffFFF569Rogue|r")
AbyssUIClassicVertexColorFrames13_CheckButton.tooltip = "Rogue Class Frame Colorization"
AbyssUIClassicVertexColorFrames13_CheckButton:SetChecked(AbyssUIClassicAddonSettings.UIVertexColorFrames13)
-- OnClick Function
AbyssUIClassicVertexColorFrames13_CheckButton:SetScript("OnClick", function(self)
  if AbyssUIClassicAddonSettings.UIVertexColorFrames01 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames02 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames03 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames04 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames05 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames06 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames07 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames08 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames09 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames10 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames11 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames12 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames14 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames15 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames16 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFramesColorPicker ~= true then
    AbyssUIClassicAddonSettings.UIVertexColorFrames13 = self:GetChecked()
    AbyssUIClassic_ReloadFrame:Show()
  else
    AbyssUIClassicVertexColorFrames13_CheckButton:SetChecked(nil)
  end
end)
-- AbyssUIClassicVertexColorFrames14_CheckButton
local AbyssUIClassicVertexColorFrames14_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassicVertexColorFrames14_CheckButton", AbyssUIClassic_Config.childpanel4, "ChatConfigCheckButtonTemplate")
AbyssUIClassicVertexColorFrames14_CheckButton:SetPoint("TOPRIGHT", -80, -260)
AbyssUIClassicVertexColorFrames14_CheckButton.Text:SetText("|cff0070DEShaman|r")
AbyssUIClassicVertexColorFrames14_CheckButton.tooltip = "Shaman Class Frame Colorization"
AbyssUIClassicVertexColorFrames14_CheckButton:SetChecked(AbyssUIClassicAddonSettings.UIVertexColorFrames14)
-- OnClick Function
AbyssUIClassicVertexColorFrames14_CheckButton:SetScript("OnClick", function(self)
  if AbyssUIClassicAddonSettings.UIVertexColorFrames01 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames02 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames03 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames04 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames05 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames06 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames07 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames08 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames09 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames10 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames11 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames12 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames13 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames15 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames16 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFramesColorPicker ~= true then
    AbyssUIClassicAddonSettings.UIVertexColorFrames14 = self:GetChecked()
    AbyssUIClassic_ReloadFrame:Show()
  else
    AbyssUIClassicVertexColorFrames14_CheckButton:SetChecked(nil)
  end
end)
-- AbyssUIClassicVertexColorFrames15_CheckButton
local AbyssUIClassicVertexColorFrames15_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassicVertexColorFrames15_CheckButton", AbyssUIClassic_Config.childpanel4, "ChatConfigCheckButtonTemplate")
AbyssUIClassicVertexColorFrames15_CheckButton:SetPoint("TOPRIGHT", -250, -290)
AbyssUIClassicVertexColorFrames15_CheckButton.Text:SetText("|cff9482C9Warlock|r")
AbyssUIClassicVertexColorFrames15_CheckButton.tooltip = "Warlock Class Frame Colorization"
AbyssUIClassicVertexColorFrames15_CheckButton:SetChecked(AbyssUIClassicAddonSettings.UIVertexColorFrames15)
-- OnClick Function
AbyssUIClassicVertexColorFrames15_CheckButton:SetScript("OnClick", function(self)
  if AbyssUIClassicAddonSettings.UIVertexColorFrames01 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames02 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames03 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames04 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames05 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames06 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames07 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames08 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames09 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames10 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames11 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames12 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames13 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames14 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames16 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFramesColorPicker ~= true then
    AbyssUIClassicAddonSettings.UIVertexColorFrames15 = self:GetChecked()
    AbyssUIClassic_ReloadFrame:Show()
  else
    AbyssUIClassicVertexColorFrames15_CheckButton:SetChecked(nil)
  end
end)
-- AbyssUIClassicVertexColorFrames16_CheckButton
local AbyssUIClassicVertexColorFrames16_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassicVertexColorFrames16_CheckButton", AbyssUIClassic_Config.childpanel4, "ChatConfigCheckButtonTemplate")
AbyssUIClassicVertexColorFrames16_CheckButton:SetPoint("TOPRIGHT", -80, -290)
AbyssUIClassicVertexColorFrames16_CheckButton.Text:SetText("|cffC79C6EWarrior|r")
AbyssUIClassicVertexColorFrames16_CheckButton.tooltip = "Warrior Class Frame Colorization"
AbyssUIClassicVertexColorFrames16_CheckButton:SetChecked(AbyssUIClassicAddonSettings.UIVertexColorFrames16)
-- OnClick Function
AbyssUIClassicVertexColorFrames16_CheckButton:SetScript("OnClick", function(self)
  if AbyssUIClassicAddonSettings.UIVertexColorFrames01 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames02 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames03 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames04 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames05 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames06 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames07 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames08 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames09 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames10 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames11 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames12 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames13 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames14 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames15 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFramesColorPicker ~= true then
    AbyssUIClassicAddonSettings.UIVertexColorFrames16 = self:GetChecked()
    AbyssUIClassic_ReloadFrame:Show()
  else
    AbyssUIClassicVertexColorFrames16_CheckButton:SetChecked(nil)
  end
end)
-- Choose a Color (Color Picker)
local AbyssUIClassicVertexColorFramesColorPicker_CheckButton = CreateFrame("CheckButton", "$parentAbyssUIClassicVertexColorFramesColorPicker_CheckButton", AbyssUIClassic_Config.childpanel4, "ChatConfigCheckButtonTemplate")
AbyssUIClassicVertexColorFramesColorPicker_CheckButton:SetPoint("CENTER", AbyssUIClassic_Config.childpanel4, "CENTER", 50, -80)
AbyssUIClassicVertexColorFramesColorPicker_CheckButton.Text:SetText("|cff0d75d4Select a Color|r")
AbyssUIClassicVertexColorFramesColorPicker_CheckButton.tooltip = "Choose a color for the frames (Color Picker)"
AbyssUIClassicVertexColorFramesColorPicker_CheckButton:SetChecked(AbyssUIClassicAddonSettings.UIVertexColorFramesColorPicker)
-- OnClick Function
AbyssUIClassicVertexColorFramesColorPicker_CheckButton:SetScript("OnClick", function(self)
  if AbyssUIClassicAddonSettings.UIVertexColorFrames01 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames02 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames03 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames04 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames05 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames06 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames07 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames08 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames09 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames10 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames11 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames12 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames13 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames14 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames15 ~= true and
  AbyssUIClassicAddonSettings.UIVertexColorFrames16 ~= true then
    AbyssUIClassicAddonSettings.UIVertexColorFramesColorPicker = self:GetChecked()
    AbyssUIClassic_ColorPickerFrame:Show()
  else
    AbyssUIClassicVertexColorFramesColorPicker_CheckButton:SetChecked(nil)
  end
end)
-- End
end
--------------------------------- Save ---------------------------------
--This starts things off and once we're far enough into the game
--to check our SavedVariables and initialises if required
local f = CreateFrame("Frame", "AbyssUIClassic_Config", UIParent)
f:SetSize(50, 50)
f:RegisterEvent("PLAYER_LOGIN")
f:SetScript("OnEvent", function(self, event, ...)
    if not AbyssUIClassicAddonSettings then
      AbyssUIClassicAddonSettings = {}
    end
    -- Now we have SavedVarialbe loaded, create the interface options frame
    InitSettings()
end)
----------------------------------------------------
-- End
