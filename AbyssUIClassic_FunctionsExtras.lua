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
local FadeUI = CreateFrame("CheckButton", "$parentFadeUI", UIParent, "ChatConfigCheckButtonTemplate")
FadeUI:RegisterEvent("PLAYER_REGEN_DISABLED")
FadeUI:RegisterEvent("PLAYER_REGEN_ENABLED")
FadeUI:RegisterEvent("PLAYER_ENTERING_WORLD")
--FadeUI:RegisterEvent("CURSOR_UPDATE")
FadeUI:SetScript("OnEvent", function(self, event, ...)
local resting = IsResting()
	if ( AbyssUIClassicAddonSettings.FadeUI == true ) then
		if ( event == "PLAYER_REGEN_DISABLED" or resting == true) then
			for i, v in pairs ({
				PlayerFrame,
				TargetFrame,
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
		elseif ( (event == "PLAYER_REGEN_ENABLED" or "PLAYER_ENTERING_WORLD")  and resting ~= true ) then
			for i, v in pairs ({
				PlayerFrame,
				TargetFrame,
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
			PlayerFrame,
			TargetFrame,
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

