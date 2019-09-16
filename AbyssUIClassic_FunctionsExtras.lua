--------------------------------------------------------------------------------
-- Author: Yugen
--
-- Classic
--
-- Hope you like my addOn ^^
--
-- Extra functions for Classic
--------------------------------------------------------------------------------
-- Max Distance Nameplates
local f = CreateFrame("CheckButton", "$parentFrame", UIParent, "ChatConfigCheckButtonTemplate")
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:SetScript("OnEvent", function(self, event, ...)
	if ( AbyssUIClassicAddonSettings.ExtraFunctionDefaultNameplate ~= true ) then
		SetCVar("nameplateMaxDistance", "8e1")
	else 
		SetCVar("nameplateMaxDistance", "4e1")
	end
end)
-- Fade UI
local FadeUIFirstHide = CreateFrame("CheckButton", "$parentFadeUIFirstHide", UIParent, "ChatConfigCheckButtonTemplate")
FadeUIFirstHide:RegisterEvent("PLAYER_ENTERING_WORLD")
local _G = _G
FadeUIFirstHide:SetScript("OnEvent", function(self, event, ...)
	if ( AbyssUIClassicAddonSettings.FadeUI == true ) then
		C_Timer.After(1, function() 
			for i, v in pairs ({
				BuffFrame,
				QuestWatchFrame,
				GeneralDockManager,
				ChatFrameMenuButton,
				ChatFrameChannelButton,
				MainMenuBar,
				VerticalMultiBarsContainer,
				MultiBarLeft,
			}) do
				UIFrameFadeIn(v, 1, 1, 0)
			end
			for i=1, 12 do
				UIFrameFadeIn(_G["ExtraBarButton"..i], 1, 1, 0)			
			end
		end)
	else
		return nil
	end
end)
local FadeUI = CreateFrame("CheckButton", "$parentFadeUI", UIParent, "ChatConfigCheckButtonTemplate")
FadeUI:RegisterEvent("PLAYER_REGEN_DISABLED")
FadeUI:RegisterEvent("PLAYER_REGEN_ENABLED")
FadeUI:SetScript("OnEvent", function(self, event, ...)
	if ( AbyssUIClassicAddonSettings.FadeUI == true ) then
		if ( event == "PLAYER_REGEN_DISABLED" ) then
			for i, v in pairs ({
				BuffFrame,
				QuestWatchFrame,
				GeneralDockManager,
				ChatFrameMenuButton,
				ChatFrameChannelButton,
				MainMenuBar,
				VerticalMultiBarsContainer,
				MultiBarLeft,
			}) do
				UIFrameFadeIn(v, 1, 0, 1)
			end
		elseif ( event == "PLAYER_REGEN_ENABLED" ) then
			for i, v in pairs ({
				BuffFrame,
				QuestWatchFrame,
				GeneralDockManager,
				ChatFrameMenuButton,
				ChatFrameChannelButton,
				MainMenuBar,
				VerticalMultiBarsContainer,
				MultiBarLeft,
			}) do
				UIFrameFadeIn(v, 1, 1, 0)
			end
		else
			return nil
		end
	else
		return nil
	end
end)
local FadeUI_MouseOver = CreateFrame("CheckButton", "$parentFadeUI_MouseOver", UIParent, "ChatConfigCheckButtonTemplate")
FadeUI_MouseOver:RegisterEvent("PLAYER_ENTERING_WORLD")
FadeUI_MouseOver:RegisterForClicks("AnyDown")
FadeUI_MouseOver:SetScript("OnEvent", function()
	SetBindingClick("ALT-CTRL-P", FadeUI_MouseOver:GetName())
end)
FadeUI_MouseOver:SetScript("OnClick", function()
	if ( AbyssUIClassicAddonSettings.FadeUI == true ) then
		for i, v in pairs ({
			BuffFrame,
			QuestWatchFrame,
			GeneralDockManager,
			ChatFrameMenuButton,
			ChatFrameChannelButton,
			MainMenuBar,
			VerticalMultiBarsContainer,
			MultiBarLeft,
		}) do
			UIFrameFadeIn(v, 1, 0, 1)
		end
	else
		return nil
	end
end)

