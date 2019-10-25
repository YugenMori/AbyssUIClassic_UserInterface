-- Author: Yugen
--
-- Classic
--
-- Hope you like my addOn ^^
--
-- Dark Minimalist UI for World of Warcraft
--------------------------------------------------------------------------------
-- Darker UI Core --
--------------------
local BasicFrames = CreateFrame("Frame")
BasicFrames:RegisterEvent("ADDON_LOADED")
BasicFrames:SetScript("OnEvent", function(self, event, addon)
	if (addon == "AbyssUIClassic") then
		for i, v in pairs({	PlayerFrameTexture,
			TargetFrameTextureFrameTexture,
			PetFrameTexture,
			PartyMemberFrame1Texture,
			PartyMemberFrame2Texture,
			PartyMemberFrame3Texture,
			PartyMemberFrame4Texture,
			PartyMemberFrame1PetFrameTexture,
			PartyMemberFrame2PetFrameTexture,
			PartyMemberFrame3PetFrameTexture,
			PartyMemberFrame4PetFrameTexture,
			FocusFrameTextureFrameTexture,
			TargetFrameToTTextureFrameTexture,
			FocusFrameToTTextureFrameTexture,
			BonusActionBarFrameTexture0,
			BonusActionBarFrameTexture1,
			BonusActionBarFrameTexture2,
			BonusActionBarFrameTexture3,
			BonusActionBarFrameTexture4,
			MainMenuBarTexture0,
			MainMenuBarTexture1,
			MainMenuBarTexture2,
			MainMenuBarTexture3,
			MainMenuMaxLevelBar0,
			MainMenuMaxLevelBar1,
			MainMenuMaxLevelBar2,
			MainMenuMaxLevelBar3,
			MinimapBorder,
			CastingBarFrameBorder,
			FocusFrameSpellBarBorder,
			TargetFrameSpellBarBorder,
			MiniMapTrackingButtonBorder,
			MiniMapLFGFrameBorder,
			MiniMapBattlefieldBorder,
			MiniMapMailBorder,
			MiniMapBorderTop, }) do
			MiniMapWorldMapButton:SetAlpha(0.3)
			if AbyssUIClassicAddonSettings ~= nil then
				if AbyssUIClassicAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)	
				else
					v:SetVertexColor(.5, .5, .5)
				end
			else
				return nil
			end
		end
		self:UnregisterEvent("ADDON_LOADED")
		BasicFrames:SetScript("OnEvent", nil)
	end
end)
-- Dark Unit Frames Exception
local DarkException = CreateFrame("Frame")
DarkException:RegisterEvent("ADDON_LOADED")
DarkException:SetScript("OnEvent", function(self, event, addon)
	if (addon == "AbyssUIClassic") then
		for i, v in pairs({
			PlayerFrameTexture,
			TargetFrameTextureFrameTexture,
			PetFrameTexture,
			PartyMemberFrame1Texture,
			PartyMemberFrame2Texture,
			PartyMemberFrame3Texture,
			PartyMemberFrame4Texture,
			PartyMemberFrame1PetFrameTexture,
			PartyMemberFrame2PetFrameTexture,
			PartyMemberFrame3PetFrameTexture,
			PartyMemberFrame4PetFrameTexture,
			FocusFrameTextureFrameTexture,
			TargetFrameToTTextureFrameTexture,
			FocusFrameToTTextureFrameTexture,
			MinimapBorder,
			MiniMapTrackingButtonBorder,
			MiniMapLFGFrameBorder,
			MiniMapBattlefieldBorder,
			MiniMapMailBorder, }) do
			if AbyssUIClassicAddonSettings ~= nil then
				if AbyssUIClassicAddonSettings.KeepUnitDark == true then
					v:SetVertexColor(.4, .4, .4)
				elseif AbyssUIClassicAddonSettings.KeepUnitBlizzard == true then
					v:SetVertexColor(1, 1, 1)
				else
					return nil
				end
			end
		end
	self:UnregisterEvent("ADDON_LOADED")
	DarkException:SetScript("OnEvent", nil)
	end
end)
------------------------- New Darker Parts -------------------------
-- New Interface Action Bar
local NewFrames = CreateFrame("Frame")
NewFrames:RegisterEvent("ADDON_LOADED")
NewFrames:SetScript("OnEvent", function(self, event, addon)
	if (addon == "AbyssUIClassic") then
		for i, v in pairs({ MainMenuBarLeftEndCap,
			MainMenuBarRightEndCap, }) do
			if AbyssUIClassicAddonSettings ~= nil then
				if AbyssUIClassicAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.5, .5, .5)
				end
			else
				return nil
			end
		end
		-- Chat
		for i, v in pairs({ ChatFrame1EditBoxLeft,
			ChatFrame1EditBoxRight,
			ChatFrame1EditBoxMid,
			ChatFrame2EditBoxLeft,
			ChatFrame2EditBoxRight,
			ChatFrame2EditBoxMid,
			ChatFrame3EditBoxLeft,
			ChatFrame3EditBoxRight,
			ChatFrame3EditBoxMid,
			ChatFrame4EditBoxLeft,
			ChatFrame4EditBoxRight,
			ChatFrame4EditBoxMid,
			ChatFrame5EditBoxLeft,
			ChatFrame5EditBoxRight,
			ChatFrame5EditBoxMid,
			ChatFrame6EditBoxLeft,
			ChatFrame6EditBoxRight,
			ChatFrame6EditBoxMid,
			ChatFrame7EditBoxLeft,
			ChatFrame7EditBoxRight,
			ChatFrame7EditBoxMid,	}) do
			if AbyssUIClassicAddonSettings ~= nil then
				if AbyssUIClassicAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
		-- StatusBar (ExpBar)
		for i, v in pairs({ MainMenuXPBarTexture0,
			MainMenuXPBarTexture1,
			MainMenuXPBarTexture2,
			MainMenuXPBarTexture3,
			ReputationWatchBar.StatusBar.WatchBarTexture0,
			ReputationWatchBar.StatusBar.WatchBarTexture1,
			ReputationWatchBar.StatusBar.WatchBarTexture2,
			ReputationWatchBar.StatusBar.WatchBarTexture3, }) do
			if AbyssUIClassicAddonSettings ~= nil then
				if AbyssUIClassicAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
		-- StanceBar
		for i, v in pairs({ StanceBarLeft,
			StanceBarMiddle,
			StanceBarRight, }) do
			if AbyssUIClassicAddonSettings ~= nil then
				if AbyssUIClassicAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
		-- HelpFrame
		for i, v in pairs({ HelpFrameTopBorder,
			HelpFrameRightBorder,
			HelpFrameTopRightCorner,
			HelpFrameBottomRightCorner,
			HelpFrameBottomBorder,
			HelpFrameBottomLeftCorner,
			HelpFrameLeftBorder,
			HelpFrameTopLeftCorner,
		 	HelpFrameVertDivTop,
			HelpFrameVertDivMiddle,
			HelpFrameVertDivBottom,
			HelpFrameHeaderTopBorder,
			HelpFrameHeaderTopRightCorner,
			HelpFrameHeaderRightBorder,
			HelpFrameHeaderBottomRightCorner,
			HelpFrameHeaderBottomBorder,
			HelpFrameHeaderBottomLeftCorner,
			HelpFrameHeaderLeftBorder,
			HelpFrameHeaderTopLeftCorner, }) do
			if AbyssUIClassicAddonSettings ~= nil then
				if AbyssUIClassicAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
		-- Channels
		for i, v in pairs({ ChannelFrameTopBorder,
			ChannelFrameTopRightCorner,
			ChannelFrameRightBorder,
			ChannelFrameBotRightCorner,
			ChannelFrameBtnCornerRight,
			ChannelFrameBottomBorder,
			ChannelFrameBotLeftCorner,
			ChannelFrameBtnCornerLeft,
			ChannelFrameLeftBorder,
			ChannelFramePortraitFrame,	}) do
			if AbyssUIClassicAddonSettings ~= nil then
				if AbyssUIClassicAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
		-- FriendsFrame
		for i, v in pairs({ FriendsFrameTopBorder,
			FriendsFrameTopRightCorner,
			FriendsFrameRightBorder,
			FriendsFrameBotRightCorner,
			FriendsFrameBtnCornerRight,
			FriendsFrameBottomBorder,
			FriendsFrameBotLeftCorner,
			FriendsFrameBtnCornerLeft,
			FriendsFrameLeftBorder,
			FriendsFramePortraitFrame,	}) do
			if AbyssUIClassicAddonSettings ~= nil then
				if AbyssUIClassicAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
		-- MerchantFrame
		for i, v in pairs({ MerchantFrameTopBorder,
			MerchantFrameTopRightCorner,
			MerchantFrameRightBorder,
			MerchantFrameBotRightCorner,
			MerchantFrameBtnCornerRight,
			MerchantFrameBottomBorder,
			MerchantFrameBotLeftCorner,
			MerchantFrameBtnCornerLeft,
			MerchantFrameLeftBorder,
			MerchantFramePortraitFrame,	}) do
			if AbyssUIClassicAddonSettings ~= nil then
				if AbyssUIClassicAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
		-- LootFrame
		for i, v in pairs({ LootFrameTopBorder,
			LootFrameTopRightCorner,
			LootFrameRightBorder,
			LootFrameBotRightCorner,
			LootFrameBtnCornerRight,
			LootFrameBottomBorder,
			LootFrameBotLeftCorner,
			LootFrameBtnCornerLeft,
			LootFrameLeftBorder,
			LootFramePortraitFrame,	}) do
			if AbyssUIClassicAddonSettings ~= nil then
				if AbyssUIClassicAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
		-- MailFrame
		for i, v in pairs({ MailFrameTopBorder,
			MailFrameTopRightCorner,
			MailFrameRightBorder,
			MailFrameBotRightCorner,
			MailFrameBtnCornerRight,
			MailFrameBottomBorder,
			MailFrameBotLeftCorner,
			MailFrameBtnCornerLeft,
			MailFrameLeftBorder,
			MailFramePortraitFrame,	}) do
			if AbyssUIClassicAddonSettings ~= nil then
				if AbyssUIClassicAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
		-- Frames that blizzard didn't atribute proper names 
		--[[
		for i, v in pairs({ PaperDollFrame, 
			QuestLogFrame,
			SpellBookFrame, }) do
			if AbyssUIClassicAddonSettings ~= nil then
				if AbyssUIClassicAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
		--]]
		-- End
		self:UnregisterEvent("ADDON_LOADED")
		NewFrames:SetScript("OnEvent", nil)
	end
end)
-------------- Frames that need a load to work properly --------------
-- AuctionHouse
local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", function(self, event, name)
	if name == "Blizzard_AuctionUI" then
		for i, v in pairs({ AuctionFrameTop, 
			AuctionFrameTopLeft, 
			AuctionFrameTopRight,
			AuctionFrameBot, 
			AuctionFrameBotLeft, 
			AuctionFrameBotRight, }) do
			if AbyssUIClassicAddonSettings ~= nil then
				if AbyssUIClassicAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
	end
end)
-- Macros
local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", function(self, event, name)
	if name == "Blizzard_MacroUI" then
		for i, v in pairs({ MacroFrameTopBorder,
			MacroFrameTopRightCorner,
			MacroFrameRightBorder,
			MacroFrameBotRightCorner,
			MacroFrameBtnCornerRight,
			MacroFrameBottomBorder,
			MacroFrameBotLeftCorner,
			MacroFrameBtnCornerLeft,
			MacroFrameLeftBorder,
			MacroFramePortraitFrame, }) do
			if AbyssUIClassicAddonSettings ~= nil then
				if AbyssUIClassicAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIClassicAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
	end
end)
-- End
