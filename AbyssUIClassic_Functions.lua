-- Author: Yugen
--
-- Classic
--
-- Hope you like my addOn ^^
--
-- Functions for AbyssUIClassic
----------------------------------------------------
-- Init - Tables - Saves
local addonName, addonTable = ...
if not AbyssUIClassic_Config then
  local AbyssUIClassic_Config = {}
end
-- Color Init
local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_LOGIN")
f:SetScript("OnEvent", function(self, event)
    character = UnitName("player").."-"..GetRealmName()
    if not COLOR_MY_UI then
        COLOR_MY_UI = {}
    end
    if not COLOR_MY_UI[character] then
        COLOR_MY_UI[character] = {}
    end
    if not COLOR_MY_UI[character].Color then
        COLOR_MY_UI[character].Color = { r = 1, g = 1, b = 1 }
    end
end)
-- Fontfication
local function AbyssUIClassic_Fontification(globalFont, subFont, damageFont)
local locale = GetLocale()
local fontName, fontHeight, fontFlags = MinimapZoneText:GetFont()
local mediaFolder = "Interface\\AddOns\\AbyssUIClassic\\Textures\\font\\"
	if ( locale == "zhCN") then
		globalFont	= mediaFolder.."zhCN-TW\\senty.ttf"
		subFont 	= mediaFolder.."zhCN-TW\\senty.ttf"
		damageFont 	= mediaFolder.."zhCN-TW\\senty.ttf"
	elseif ( locale == "zhTW" ) then
		globalFont	= mediaFolder.."zhCN-TW\\senty.ttf"
		subFont 	= mediaFolder.."zhCN-TW\\senty.ttf"
		damageFont 	= mediaFolder.."zhCN-TW\\senty.ttf"
	elseif ( locale == "ruRU" ) then
		globalFont	= mediaFolder.."ruRU\\dejavu.ttf"
		subFont 	= mediaFolder.."ruRU\\dejavu.ttf"
		damageFont 	= mediaFolder.."ruRU\\dejavu.ttf"
	elseif ( locale == "koKR" ) then
		globalFont	= mediaFolder.."koKR\\dxlbab.ttf"
		subFont 	= mediaFolder.."koKR\\dxlbab.ttf"
		damageFont 	= mediaFolder.."koKR\\dxlbab.ttf"
	elseif ( locale == "frFR" or locale == "deDE" or locale == "enGB" or locale == "enUS" or locale == "itIT" or
		locale == "esES" or locale == "esMX" or locale == "ptBR") then
		globalFont	= mediaFolder.."global.ttf"
		subFont 	= mediaFolder.."npcfont.ttf"
		damageFont 	= mediaFolder.."damagefont.ttf"
	else
		globalFont	= fontName
		subFont 	= fontName
		damageFont 	= fontName
	end
	return globalFont, subFont, damageFont
end
local globalFont, subFont, damageFont = AbyssUIClassic_Fontification(globalFont, subFont, damageFont)
-- RegionList
local function AbyssUIClassic_RegionListSize(self, width, height)
	local regionList = { 
		self:GetRegions() } 
	for i, self in ipairs(regionList) do 
	    local regionType = self:GetObjectType() 
	    if regionType == "Texture" and not self:GetTexture() then  -- the region with no texture, just black colour
	        self:SetWidth(width)
					self:SetHeight(height)
	        break 
	    end  
	end
end
-- FrameSize
local function AbyssUIClassic_FrameSize(self, width, height)
	self:SetWidth(width)
	self:SetHeight(height)
end
----------------------------------------------------
-- Class Icons
hooksecurefunc("UnitFramePortrait_Update", function(self)
	if self.portrait then
		if UnitIsPlayer(self.unit) then
			local t = CLASS_ICON_TCOORDS[select(2, UnitClass(self.unit))]
			if t and AbyssUIClassicAddonSettings.UIClassCircles01 ~= true and 
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
				AbyssUIClassicAddonSettings.UIClassCircles15 ~= true and
				AbyssUIClassicAddonSettings.UIClassCircles16 ~= true then
				self.portrait:SetTexCoord(0, 1, 0, 1)
			else
				self.portrait:SetTexCoord(0, 1, 0, 1)
			end
			if t and AbyssUIClassicAddonSettings.UIClassCircles01 == true then
				self.portrait:SetTexture("Interface\\TargetingFrame\\UI-CLASSES-CIRCLES_ARTISTIC01")
				self.portrait:SetTexCoord(unpack(t))
			elseif t and AbyssUIClassicAddonSettings.UIClassCircles02 == true then
				self.portrait:SetTexture("Interface\\TargetingFrame\\UI-CLASSES-CIRCLES_BRIGHT")
				self.portrait:SetTexCoord(unpack(t))
			elseif t and AbyssUIClassicAddonSettings.UIClassCircles03 == true then
				self.portrait:SetTexture("Interface\\TargetingFrame\\UI-CLASSES-CIRCLES_CLASSIC")
				self.portrait:SetTexCoord(unpack(t))
			elseif t and AbyssUIClassicAddonSettings.UIClassCircles04 == true then
				self.portrait:SetTexture("Interface\\TargetingFrame\\UI-CLASSES-CIRCLES_ARTISTIC02")
				self.portrait:SetTexCoord(unpack(t))
			elseif t and AbyssUIClassicAddonSettings.UIClassCircles05 == true then
				self.portrait:SetTexture("Interface\\TargetingFrame\\UI-CLASSES-CIRCLES_DARK")
				self.portrait:SetTexCoord(unpack(t))
			elseif t and AbyssUIClassicAddonSettings.UIClassCircles06 == true then
				self.portrait:SetTexture("Interface\\TargetingFrame\\UI-CLASSES-CIRCLES_DARK_GRAY")
				self.portrait:SetTexCoord(unpack(t))
			elseif t and AbyssUIClassicAddonSettings.UIClassCircles07 == true then
				self.portrait:SetTexture("Interface\\TargetingFrame\\UI-CLASSES-CIRCLES_DARK_V2")
				self.portrait:SetTexCoord(unpack(t))
			elseif t and AbyssUIClassicAddonSettings.UIClassCircles08 == true then
				self.portrait:SetTexture("Interface\\TargetingFrame\\UI-CLASSES-CIRCLES_GRAYSCALE")
				self.portrait:SetTexCoord(unpack(t))
			elseif t and AbyssUIClassicAddonSettings.UIClassCircles09 == true then
				self.portrait:SetTexture("Interface\\TargetingFrame\\UI-CLASSES-CIRCLES_LIGHT_GRAY")
				self.portrait:SetTexCoord(unpack(t))
			elseif t and AbyssUIClassicAddonSettings.UIClassCircles10 == true then
				self.portrait:SetTexture("Interface\\TargetingFrame\\UI-CLASSES-CIRCLES_MEDIUM_GRAY")
				self.portrait:SetTexCoord(unpack(t))
			elseif t and AbyssUIClassicAddonSettings.UIClassCircles11 == true then
				self.portrait:SetTexture("Interface\\TargetingFrame\\UI-CLASSES-CIRCLES_MINIMAL_BLUE")
				self.portrait:SetTexCoord(unpack(t))
			elseif t and AbyssUIClassicAddonSettings.UIClassCircles12 == true then
				self.portrait:SetTexture("Interface\\TargetingFrame\\UI-CLASSES-CIRCLES_MINIMAL_RED")
				self.portrait:SetTexCoord(unpack(t))
			elseif t and AbyssUIClassicAddonSettings.UIClassCircles13 == true then
				self.portrait:SetTexture("Interface\\TargetingFrame\\UI-CLASSES-CIRCLES_MUTED")
				self.portrait:SetTexCoord(unpack(t))
			elseif t and AbyssUIClassicAddonSettings.UIClassCircles14 == true then
				self.portrait:SetTexture("Interface\\TargetingFrame\\UI-CLASSES-CIRCLES_PSYCHEDELIC")
				self.portrait:SetTexCoord(unpack(t))
			elseif t and AbyssUIClassicAddonSettings.UIClassCircles15 == true then
				self.portrait:SetTexture("Interface\\TargetingFrame\\UI-CLASSES-CIRCLES_RETRO")
				self.portrait:SetTexCoord(unpack(t))
			elseif t and AbyssUIClassicAddonSettings.UIClassCircles16 == true then
				self.portrait:SetTexture("Interface\\TargetingFrame\\UI-CLASSES-CIRCLES_VIBRANT")
				self.portrait:SetTexCoord(unpack(t))
			else
				return nil
			end
		else
			self.portrait:SetTexCoord(0, 1, 0, 1)
		end
	end
end)
-- Class HP Colours
local function colour(statusbar, unit)
	if( AbyssUIClassicAddonSettings.ExtraFunctionFriendlyHealthGreen ~= true ) then
		local _, class, c
		if UnitIsPlayer(unit) and UnitIsConnected(unit) and unit == statusbar.unit and UnitClass(unit) then
			_, class = UnitClass(unit)
			c = CUSTOM_CLASS_COLORS and CUSTOM_CLASS_COLORS[class] or RAID_CLASS_COLORS[class]
			statusbar:SetStatusBarColor(c.r, c.g, c.b)
			if ( class == "SHAMAN" and AbyssUIClassicAddonSettings.ExtraFunctionShamanPink ~= true) then
				statusbar:SetStatusBarColor(0/255, 112/255, 222/255)
			 else 
			 	statusbar:SetStatusBarColor(c.r, c.g, c.b)
			end
			--PlayerFrameHealthBar:SetStatusBarColor(0, 1, 0)
		end
	else 
		return nil
	end
end
hooksecurefunc("UnitFrameHealthBar_Update", colour)
hooksecurefunc("HealthBar_OnValueChanged", function(self)
	colour(self, self.unit)
end)
----------------------------------------------------
-- Class colours on players names
local frame = CreateFrame("Frame", "$parentFrame", nil)
frame:RegisterEvent("GROUP_ROSTER_UPDATE")
frame:RegisterEvent("PLAYER_TARGET_CHANGED")
frame:RegisterEvent("UNIT_FACTION")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
local function eventHandler(self, event, ...)
	--Thanks to Tz for the player background
	if ( AbyssUIClassicAddonSettings.ExtraFunctionTransparentName ~= true ) then
		if ( AbyssUIClassicAddonSettings.ExtraFunctionHideBackgroundClassColor ~= true ) then
			if UnitIsPlayer("target") then
				local _, class2 = UnitClass("target")
				c = RAID_CLASS_COLORS[select(2, UnitClass("target"))]
				TargetFrameNameBackground:SetVertexColor(c.r, c.g, c.b)
				if ( class2 == "SHAMAN" and AbyssUIClassicAddonSettings.ExtraFunctionShamanPink ~= true ) then
					TargetFrameNameBackground:SetVertexColor(0/255, 112/255, 222/255)
				 else 
				 	TargetFrameNameBackground:SetVertexColor(c.r,c.g,c.b)
				end
			else
				return nil
			end
		else
			return nil
		end
	else
		-- Remove background
		TargetFrameNameBackground:SetAlpha(0.5)
		TargetFrameNameBackground:SetVertexColor(0/255, 0/255, 0/255)
	end
end

frame:SetScript("OnEvent", eventHandler)
for _, BarTextures in pairs({TargetFrameNameBackground}) do
	BarTextures:SetTexture("Interface\\TargetingFrame\\UI-StatusBar")
end
----------------------------------------------------
-- Text round values
--[[
hooksecurefunc("TextStatusBar_UpdateTextStringWithValues", function()
	PlayerFrameHealthBar.TextString:SetText(AbbreviateLargeNumbers(UnitHealth("player")))
	PlayerFrameManaBar.TextString:SetText(AbbreviateLargeNumbers(UnitPower("player")))
	--TargetFrameHealthBar.TextString:SetText(AbbreviateLargeNumbers(UnitHealth("target")))
	--TargetFrameManaBar.TextString:SetText(AbbreviateLargeNumbers(UnitPower("target")))
end)
--]]
----------------------------------------------------
-- CastBar size fixes
for i, v in pairs({
	MirrorTimer1,
	MirrorTimer2,
	MirrorTimer3,
}) do
	AbyssUIClassic_RegionListSize(v, 200, 18)
end
for i, v in pairs({	
	CastingBarFrame, 
	MirrorTimer1StatusBar, 
	MirrorTimer2StatusBar, 
	MirrorTimer3StatusBar, }) do
	AbyssUIClassic_FrameSize(v, 200, 18)
end
-- Cast bars
local c  = CastingBarFrame
c.Icon:Show()
c.Icon:SetWidth(20)
c.Icon:SetHeight(20)
c.Icon:ClearAllPoints()
c.Icon:SetPoint("LEFT", c, "LEFT", -20, 1)
c.Text = c:CreateFontString(nil)
c.Text:SetFont(globalFont, 12)
c.Text:SetShadowColor(0, 0, 0)
c.Text:SetShadowOffset(1, -1)
c.Text:ClearAllPoints()
c.Text:SetPoint("TOP", c, "TOP", 0, 15)
-- Timer
c.timer = c:CreateFontString(nil)
c.timer:SetFont(globalFont, 12)
c.timer:SetShadowColor(0, 0, 0)
c.timer:SetShadowOffset(1, -1)
c.timer:SetPoint("TOP", c, "BOTTOM", 0, 0)
c.update = .1
c:HookScript("OnUpdate", function(self, elapsed)
	if ( AbyssUIClassicAddonSettings.HideCastTimer ~= true ) then
	    if not self.timer then return end
	    if self.update and self.update < elapsed then
	        if self.casting then
	            self.timer:SetText(format("%2.1f/%1.1f", max(self.maxValue - self.value, 0), self.maxValue))
	        elseif self.channeling then
	            self.timer:SetText(format("%.1f", max(self.value, 0)))
	        else
	            self.timer:SetText("")
	        end
	        self.update = .1
	    else
	        self.update = self.update - elapsed
	    end
	else
		return nil
	end
end)
----------------------------------------------------
-- Minimap Tweaks
MinimapZoomIn:Hide()
MinimapZoomOut:Hide()
Minimap:EnableMouseWheel(true)
Minimap:SetScript('OnMouseWheel', function(self, delta)
	if delta > 0 then
		Minimap_ZoomIn()
	else
		Minimap_ZoomOut()
	end
end)
--MiniMapTracking:ClearAllPoints()
--MiniMapTracking:SetPoint("TOPRIGHT", -26, 7)
----------------------------------------------------
-- Disable spam healing over player frame
PlayerHitIndicator:SetText(nil)
PlayerHitIndicator.SetText = function() end

PetHitIndicator:SetText(nil)
PetHitIndicator.SetText = function() end
----------------------------------------------------
-- Tooltip Class Color and extras 
GameTooltip:HookScript("OnTooltipSetUnit", function(self, elapsed)
	-- OnTooltipSetUnit
	local _, unit = GameTooltip:GetUnit()
	if ( UnitIsPlayer(unit) ) then
		if ( AbyssUIClassicAddonSettings.ExtraFunctionDisableGuildTootip ~= true ) then
        	local guildName, guildRankName, guildRankIndex = GetGuildInfo(unit)
       		GameTooltip:AddLine(guildName, 1, 1, 1, 1)
       	end
		local _, class = UnitClass(unit)
		local color = class and (CUSTOM_CLASS_COLORS or RAID_CLASS_COLORS)[class]
		if ( color ~= nil ) then
			local text  = GameTooltipTextLeft1:GetText()
			local text2 = GameTooltipTextLeft2:GetText()
			local text3 = GameTooltipTextLeft3:GetText()
			local text4 = GameTooltipTextLeft4:GetText()
			if ( text ~= nil and text2 ~= nil ) then
				if ( class == "SHAMAN" and AbyssUIClassicAddonSettings.ExtraFunctionShamanPink ~= true ) then
					GameTooltipTextLeft1:SetFormattedText("|cff%02x%02x%02x%s|r", 0, 112, 222, text:match("|cff\x\x\x\x\x\x(.+)|r") or text)
					GameTooltipTextLeft2:SetFormattedText("|cff%02x%02x%02x%s|r", 0, 112, 222, text2:match("|cff\x\x\x\x\x\x(.+)|r") or text2)
				else
					GameTooltipTextLeft1:SetFormattedText("|cff%02x%02x%02x%s|r", color.r * 255, color.g * 255, color.b * 255, text:match("|cff\x\x\x\x\x\x(.+)|r") or text)
					GameTooltipTextLeft2:SetFormattedText("|cff%02x%02x%02x%s|r", color.r * 255, color.g * 255, color.b * 255, text2:match("|cff\x\x\x\x\x\x(.+)|r") or text2)
				end
			end
			if ( text ~= nil and text2 ~= nil and text3 ~= nil ) then
				if ( class == "SHAMAN" and AbyssUIClassicAddonSettings.ExtraFunctionShamanPink ~= true ) then
					GameTooltipTextLeft3:SetFormattedText("|cff%02x%02x%02x%s|r", 0, 112, 222, text3:match("|cff\x\x\x\x\x\x(.+)|r") or text3)
				else
					GameTooltipTextLeft3:SetFormattedText("|cff%02x%02x%02x%s|r", color.r * 255, color.g * 255, color.b * 255, text3:match("|cff\x\x\x\x\x\x(.+)|r") or text3)
				end
			end
			if ( text ~= nil and text2 ~= nil and text3 ~= nil and text4 ~= nil ) then
				if ( AbyssUIClassicAddonSettings.ExtraFunctionDisableGuildTootip ~= true ) then
					if ( class == "SHAMAN" and AbyssUIClassicAddonSettings.ExtraFunctionShamanPink ~= true ) then
						--GameTooltipTextLeft3:SetFormattedText("|cff%02x%02x%02x%s|r", 0, 112, 222, text3:match("|cff\x\x\x\x\x\x(.+)|r") or text3)
						GameTooltipTextLeft4:SetFormattedText("|cff%02x%02x%02x%s|r", 0, 112, 222, text4:match("|cff\x\x\x\x\x\x(.+)|r") or text4)
					else
						--GameTooltipTextLeft3:SetFormattedText("|cff%02x%02x%02x%s|r", color.r * 255, color.g * 255, color.b * 255, text3:match("|cff\x\x\x\x\x\x(.+)|r") or text3)
						GameTooltipTextLeft4:SetFormattedText("|cff%02x%02x%02x%s|r", color.r * 255, color.g * 255, color.b * 255, text4:match("|cff\x\x\x\x\x\x(.+)|r") or text4)
					end
				end
			end
		end
	end
end)
----------------------------------------------------
-- Tooltip
local UnitColor
local function UnitColor(unit)
	local r, g, b
	if ( ( not UnitIsPlayer(unit) ) and ( ( not UnitIsConnected(unit) ) or ( UnitIsDeadOrGhost(unit) ) ) ) then
		--Color it gray
		r, g, b = 0.5, 0.5, 0.5
	elseif ( UnitIsPlayer(unit) ) then
		--Try to color it by class.
		local localizedClass, englishClass = UnitClass(unit)
		local classColor = RAID_CLASS_COLORS[englishClass]
		if ( classColor ) then
			r, g, b = classColor.r, classColor.g, classColor.b
		else
			if ( UnitIsFriend("player", unit) ) then
				r, g, b = 0.0, 1.0, 0.0
			else
				r, g, b = 1.0, 0.0, 0.0
			end
		end
	else
		r, g, b = UnitSelectionColor(unit)
	end
	return r, g, b
end
-- Tooltip Background and borders
local TooltipBackground = GameTooltip:CreateTexture(nil, "LOW", nil, 1)
TooltipBackground:SetPoint("TOPLEFT", 3, -3)
TooltipBackground:SetPoint("BOTTOMRIGHT", -3, 3)
TooltipBackground:SetColorTexture(0.02, 0.02, 0.02)
TooltipBackground:SetAlpha(0.5, 0.5, 0.5, 0.8)
----------------------------------------------------
-- Tooltip Class Color Health
GameTooltip:HookScript("OnTooltipSetUnit", function(self, elapsed)
	local _, unit = self:GetUnit()
	if unit == nil then return end
	if UnitIsPlayer(unit) then
		local _, class = UnitClass(unit)
		local color = class and (CUSTOM_CLASS_COLORS or RAID_CLASS_COLORS)[class]
		if color then
			if ( class == "SHAMAN" and AbyssUIClassicAddonSettings.ExtraFunctionShamanPink ~= true ) then
				GameTooltipStatusBar:SetStatusBarColor(0/255, 112/255, 222/255)
			else
				GameTooltipStatusBar:SetStatusBarColor(color.r, color.g, color.b)
			end
		end
	else
		GameTooltipStatusBar:SetStatusBarColor(UnitColor(unit))
	end
end)
----------------------------------------------------
-- StatsFrame
-- Many thanks to Syiana for part of this
local StatsFrame = CreateFrame("Frame", "$parentStatsFrame", UIParent)
local movable = true
local frame_anchor = "TOP"
local pos_x = -250
local pos_y = -6
StatsFrame:SetPoint('TOPLEFT', UIParent, "TOPLEFT", 5, -5)
StatsFrame:SetMovable(true)
StatsFrame:EnableMouse(true)
StatsFrame:SetClampedToScreen(true)
StatsFrame:RegisterForDrag("LeftButton")
StatsFrame:SetScript("OnDragStart", StatsFrame.StartMoving)
StatsFrame:SetScript("OnDragStop", StatsFrame.StopMovingOrSizing)

local CF = CreateFrame("Frame", "$parentFrame", nil)
CF:RegisterEvent("PLAYER_LOGIN")
CF:SetScript("OnEvent", function(self, event)

	local color
	if customColor == false then
		color = { r = 1, g = 1, b = 1 }
	else
		local _, class = UnitClass("player")
		color = (CUSTOM_CLASS_COLORS or RAID_CLASS_COLORS)[class]
	end

	local function numFormat(v)
		if v > 1E10 then
			return (floor(v/1E9)).."b"
		elseif v > 1E9 then
			return (floor((v/1E9)*10)/10).."b"
		elseif v > 1E7 then
			return (floor(v/1E6)).."m"
		elseif v > 1E6 then
			return (floor((v/1E6)*10)/10).."m"
		elseif v > 1E4 then
			return (floor(v/1E3)).."k"
		elseif v > 1E3 then
			return (floor((v/1E3)*10)/10).."k"
		else
			return v
		end
	end

	local function ColorGradient(perc, ...)
		if (perc > 1) then
			local r, g, b = select(select('#', ...) - 2, ...) return r, g, b
		elseif (perc < 0) then
			local r, g, b = ... return r, g, b
		end

		local num = select('#', ...) / 3

		local segment, relperc = math.modf(perc*(num-1))
		local r1, g1, b1, r2, g2, b2 = select((segment*3)+1, ...)

		return r1 + (r2-r1)*relperc, g1 + (g2-g1)*relperc, b1 + (b2-b1)*relperc
	end

	local function RGBGradient(num)
		local r, g, b = ColorGradient(num, unpack(gradientColor))
		return r, g, b
	end

	local function RGBToHex(r, g, b)
		r = r <= 1 and r >= 0 and r or 0
		g = g <= 1 and g >= 0 and g or 0
		b = b <= 1 and b >= 0 and b or 0
		return string.format('|cff%02x%02x%02x', r*255, g*255, b*255)
	end

	local function getFPS()
		return "|c00ffffff" .. floor(GetFramerate()) .. "|r fps"
	end

	local function getLatencyWorldRaw()
		return select(4, GetNetStats())
	end

	local function getLatencyWorld()
		return "|c00ffffff" .. getLatencyWorldRaw() .. "|r ms"
	end

	local function getLatencyRaw()
		return select(3, GetNetStats())
	end

	local function getLatency()
		return "|c00ffffff" .. getLatencyRaw() .. "|r ms"
	end

	local function getTime()
		if use12 == true then
			local t = date("%I:%M")
			local ampm = date("%p")
			return "|c00ffffff"..t.."|r "..strlower(ampm)
		else
			local t = date("%H:%M")
			return "|c00ffffff"..t.."|r"
		end
	end

	StatsFrame:SetWidth(50)
	StatsFrame:SetHeight(18)

	StatsFrame.text = StatsFrame:CreateFontString(nil, 'BACKGROUND')
	StatsFrame.text:SetPoint("BOTTOMLEFT", StatsFrame)
	StatsFrame.text:SetFont(subFont, 12)
	if useShadow then
		StatsFrame.text:SetShadowOffset(1, -1)
		StatsFrame.text:SetShadowColor(0, 0, 0)
	end
	local _, class = UnitClass("player")
	if ( class == "SHAMAN" and AbyssUIClassicAddonSettings.ExtraFunctionShamanPink ~= true ) then
		StatsFrame.text:SetTextColor(0/255, 112/255, 222/255)
	else
		StatsFrame.text:SetTextColor(color.r, color.g, color.b)
	end
	local lastUpdate = 0

	local function update(self, elapsed)
		lastUpdate = lastUpdate + elapsed
		if lastUpdate > 1 then
			lastUpdate = 0
			if showClock == true then
				StatsFrame.text:SetText(getFPS().." "..getLatency().." ")
			else
				StatsFrame.text:SetText(getFPS().." "..getLatency().." ")
			end
			self:SetWidth(StatsFrame.text:GetStringWidth())
			self:SetHeight(StatsFrame.text:GetStringHeight())
		end
	end
	if ( AbyssUIClassicAddonSettings.DisableSquareMinimap == true ) then
		StatsFrame:SetScript("OnUpdate", update)
	else
		return nil
	end
end)
local StatsFrameCheck_ = CreateFrame("CheckButton", "$parentStatsFrameCheck_", UIParent, "ChatConfigCheckButtonTemplate")
StatsFrameCheck_:RegisterEvent("PLAYER_ENTERING_WORLD")
StatsFrameCheck_:SetScript("OnEvent", function(self, event, ...)
	if ( AbyssUIClassicAddonSettings.HideFPSMSFrame == true or AbyssUIClassicAddonSettings.FadeUI == true ) then
		StatsFrame:Hide()
	else
		StatsFrame:Show()
	end
end)
----------------------------------------------------
-- Auto Repair/Sell Grey
local AbyssUIClassic_AutoSell = CreateFrame("Frame", "$parentparentAbyssUIClassic_AutoSell", nil)
AbyssUIClassic_AutoSell:RegisterEvent("MERCHANT_SHOW")
AbyssUIClassic_AutoSell:SetScript("OnEvent", function()
	if ( AbyssUIClassicAddonSettings.ExtraFunctionSellGray == true ) then
		local bag, slot
		for bag = 0, 4 do
	    	for slot = 0, GetContainerNumSlots(bag) do
	        	local link = GetContainerItemLink(bag, slot)
	       		if link and (select(3, GetItemInfo(link)) == 0) then
	            	UseContainerItem(bag, slot)
	        	end
	    	end
		end
	    if( CanMerchantRepair() ) then
	        local cost = GetRepairAllCost()
	        if cost > 0 then
	            local money = GetMoney()
	            if money > cost then
	            	RepairAllItems()
	            	print(format("|cffead000Repair cost: %.1fg|r", cost * 0.0001))
	            else
	            	print("Not enough gold for repair.")
	            end
	    	end
		end
	else 
		return nil
	end
end)
----------------------------------------------------
-- Target Mob(Enemy) Health Bar Color
local frame = CreateFrame("Frame", "$parentFrame", nil)
frame:RegisterEvent("PLAYER_TARGET_CHANGED")
local function eventHandler(self, event, ...)
	if ( AbyssUIClassicAddonSettings.UnitFrameImproved ~= true ) then
		if ( event == "PLAYER_TARGET_CHANGED" ) then
			if ( UnitReaction("player", "target") ~= nil ) then
				local target = UnitReaction("player", "target")
				local utarget = UnitIsPlayer("target")
				if utarget == false and target < 3 then
					TargetFrameHealthBar:SetStatusBarColor(255/255, 0/255, 0/255)
				elseif ( utarget == false and target == 3 ) then
					TargetFrameHealthBar:SetStatusBarColor(242/255, 96/255, 0/255)
				elseif ( utarget == false and target == 4 ) then
					TargetFrameHealthBar:SetStatusBarColor(255/255, 255/255, 0/255)
				elseif ( utarget == false and target > 4 ) then
					TargetFrameHealthBar:SetStatusBarColor(51/255, 255/255, 51/255)
				else
					return nil
				end
			else 
				return nil
			end
		else
			return nil
		end
	else
		return nil
	end
end
frame:SetScript("OnEvent", eventHandler)
for _, BarTextures in pairs({ TargetFrameNameBackground, FocusFrameNameBackground, }) do
	BarTextures:SetTexture("Interface\\TargetingFrame\\UI-StatusBar")
end
----------------------------------------------------
-- Keep the color when health changes
hooksecurefunc("HealthBar_OnValueChanged", function()
	if ( AbyssUIClassicAddonSettings.UnitFrameImproved ~= true ) then
		if ( UnitReaction("player", "target") ~= nil ) then
			local target = UnitReaction("player", "target")
			local utarget = UnitIsPlayer("target")
			if utarget == false and target < 3 then
				TargetFrameHealthBar:SetStatusBarColor(255/255, 0/255, 0/255)
			elseif ( utarget == false and target == 3 ) then
				TargetFrameHealthBar:SetStatusBarColor(242/255, 96/255, 0/255)
			elseif ( utarget == false and target == 4 ) then
				TargetFrameHealthBar:SetStatusBarColor(255/255, 255/255, 0/255)
			elseif ( utarget == false and target > 4 ) then
				TargetFrameHealthBar:SetStatusBarColor(51/255, 255/255, 51/255)
			else
				return nil
			end
		else 
			return nil
		end
	else
		return nil
	end
end)
----------------------------------------------------
-- UI Scale Elements (On Load)
local ScaleElements = CreateFrame("Frame", "$parentScaleElements", nil)
ScaleElements:RegisterEvent("ADDON_LOADED")
ScaleElements:RegisterEvent("PLAYER_LOGOUT")
ScaleElements:SetScript("OnEvent", function(self, event, arg1)
	if ( event == "ADDON_LOADED" and arg1 == "AbyssUIClassic" ) then
		CastingBarFrame:SetScale(1.05)
	else 
		return nil
	end
end)
----------------------------------------------------
-- Color Picker 
-- Many thanks to Fizz for part of this :thumbsup:
local character
local function ColorPicker_Cancelled()
    local color = ColorPickerFrame.previousValues
    COLOR_MY_UI[character].Color = color
end

local function ColorPicker_Changed(self)
    local r, g, b = ColorPickerFrame:GetColorRGB()
    local color = { r = r, g = g, b = b }
    COLOR_MY_UI[character].Color = color
end
-- Global Color Function
function AbyssUIClassic_ShowColorPicker()
	if ColorPickerFrame:IsShown() then return end
	ColorPickerFrame.previousValues = COLOR_MY_UI[character].Color
	ColorPickerFrame.cancelFunc = ColorPicker_Cancelled
	ColorPickerFrame.opacityFunc = ColorPicker_Changed
	ColorPickerFrame.func = ColorPicker_Changed
	ColorPickerFrame:SetColorRGB( COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b )
	ColorPickerFrame:ClearAllPoints()
	ColorPickerFrame:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", GetCursorPosition())
	ColorPickerFrame:Show()
end
-- Color Save
local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_LOGIN")
f:SetScript("OnEvent", function(self, event)
    character = UnitName("player").."-"..GetRealmName()
    if not COLOR_MY_UI then
        COLOR_MY_UI = {}
    end
    if not COLOR_MY_UI[character] then
        COLOR_MY_UI[character] = {}
    end
    if not COLOR_MY_UI[character].Color then
        COLOR_MY_UI[character].Color = { r = 1, g = 1, b = 1 }
    end
end)
----------------------------------------------------
-- ConfirmPopUps
local AbyssUIClassic_ConfirmPopUps = CreateFrame("Button", '$parentAbyssUIClassic_ConfirmPopUps', nil)
AbyssUIClassic_ConfirmPopUps:RegisterForClicks("AnyDown")
AbyssUIClassic_ConfirmPopUps:SetScript("OnEvent", function()
	SetBindingClick("CTRL-'", AbyssUIClassic_ConfirmPopUps:GetName())
end)
AbyssUIClassic_ConfirmPopUps:RegisterEvent("PLAYER_LOGIN")
AbyssUIClassic_ConfirmPopUps:SetScript("OnClick", function()
	if ( AbyssUIClassicAddonSettings.ExtraFunctionConfirmPopUps == true ) then
		StaticPopup1Button1:Click()
		StaticPopup2Button1:Click()
		StaticPopup3Button1:Click()
		StaticPopup4Button1:Click()
		QuestFrameAcceptButton:Click()
		QuestFrameCompleteQuestButton:Click()
		QuestFrameCompleteButton:Click()
		--LFGDungeonReadyDialogEnterDungeonButton:Click()
		GossipFrameGreetingGoodbyeButton:Click()
		--PVPReadyDialogEnterBattleButton:Click()
	else
		return nil
	end
end)
----------------------------------------------------
-- Hide ObjectiveTracker in Combat
local objectiveFrame1 = CreateFrame("Frame", "$parentObjectiveFrame1", nil)
objectiveFrame1:RegisterEvent("PLAYER_REGEN_DISABLED")
objectiveFrame1:RegisterEvent("PLAYER_REGEN_ENABLED")
objectiveFrame1:SetScript("OnEvent", function(self, event, ...)
	local isPVPMap = C_PvP.IsPVPMap()
	local inInstance, instanceType = IsInInstance()
	if ( event == "PLAYER_REGEN_DISABLED" and AbyssUIClassicAddonSettings.ExtraFunctionHideInCombat == true and isPVPMap == false and (instanceType == "none" or instanceType == "party")) then
		UIFrameFadeIn(QuestWatchFrame, 1, 1, 0)
	elseif ( event == "PLAYER_REGEN_ENABLED" and AbyssUIClassicAddonSettings.ExtraFunctionHideInCombat == true and isPVPMap == false and (instanceType == "none" or instanceType == "party")) then
		UIFrameFadeIn(QuestWatchFrame, 1, 0, 1)
	else 
		return nil
	end
end)
-- Entering World / PvP
local objectiveFrame2 = CreateFrame("Frame", "$parentObjectiveFrame2", nil)
objectiveFrame2:RegisterEvent("PLAYER_ENTERING_WORLD")
objectiveFrame2:SetScript("OnEvent", function(self, event, ...)
	local isPVPMap = C_PvP.IsPVPMap()
	--local isArena = C_PvP.IsArena() 
	--local isBattleground = C_PvP.IsBattleground() 
	--local isRatedMap = C_PvP.IsRatedMap() 
	--or isArena == true or isBattleground == true or isRatedMap == true
	if ( event == "PLAYER_ENTERING_WORLD" and AbyssUIClassicAddonSettings.ExtraFunctionHideInCombat == true and isPVPMap == true) then
		UIFrameFadeIn(QuestWatchFrame, 1, 1, 0)		
	else 
		UIFrameFadeIn(QuestWatchFrame, 1, 0, 1)
	end
end)
-- Inspect Target
local AbyssUIClassic_InspectTarget = CreateFrame("Button", '$parentAbyssUIClassic_InspectTarget', nil)
AbyssUIClassic_InspectTarget:RegisterForClicks("AnyDown")
AbyssUIClassic_InspectTarget:SetScript("OnEvent", function()
	SetBindingClick("SHIFT-'", AbyssUIClassic_InspectTarget:GetName())
end)
AbyssUIClassic_InspectTarget:RegisterEvent("PLAYER_LOGIN")
AbyssUIClassic_InspectTarget:SetScript("OnClick", function()
    if AbyssUIClassicAddonSettings.ExtraFunctionInspectTarget == true then
    	if ( UnitPlayerControlled("target") and not UnitIsUnit("player", "target") ) then
			InspectUnit("target")
		elseif ( UnitPlayerControlled("mouseover") and not UnitIsUnit("player", "mouseover") ) then
			InspectUnit("mouseover")
		end
    else
      return nil
    end
end)
-- Auto Screenshot
local AbyssUIClassic_ScreenshotLevelUp = CreateFrame("Button", '$parentAbyssUIClassic_ScreenshotLevelUp', nil)
AbyssUIClassic_ScreenshotLevelUp:RegisterEvent("PLAYER_LEVEL_UP")
AbyssUIClassic_ScreenshotLevelUp:SetScript("OnEvent", function(self, event, ...)
    if AbyssUIClassicAddonSettings.ExtraFunctionScreenshotLevelUp == true then
    	 C_Timer.After(1, function ()
    	 	Screenshot()
    	 end)
    end
end)
-- Minimal Action Bar
local AbyssUIClassic_MinimalActionBar = CreateFrame("Button", '$parentAbyssUIClassic_MinimalActionBar', nil)
AbyssUIClassic_MinimalActionBar:RegisterEvent("PLAYER_ENTERING_WORLD")
AbyssUIClassic_MinimalActionBar:SetScript("OnEvent", function(self, event, ...)
	if ( AbyssUIClassicAddonSettings.HideMicroMenu ~= true or AbyssUIClassicAddonSettings.HideGryphons ~= true  ) then
	    if AbyssUIClassicAddonSettings.MinimalActionBar == true then
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
	else 
		return nil
	end
end)
-- Elite Portrait
local AbyssUIClassic_ElitePortrait = CreateFrame("Button", '$parentAbyssUIClassic_ElitePortrait', nil)
AbyssUIClassic_ElitePortrait:RegisterEvent("PLAYER_ENTERING_WORLD")
AbyssUIClassic_ElitePortrait:SetScript("OnEvent", function(self, event, ...)
    if ( AbyssUIClassicAddonSettings.ElitePortrait == true and AbyssUIClassicAddonSettings.UnitFrameImproved ~= true ) then
    	PlayerFrameTexture:SetTexture("Interface\\TargetingFrame\\UI-TargetingFrame-Elite")
    	TargetFrameTextureFrameTexture:SetTexture("Interface\\TargetingFrame\\UI-TargetingFrame-RareMob")
    	--FocusFrameTextureFrameTexture:SetTexture("Interface\\TargetingFrame\\UI-TargetingFrame-RareMob")
	elseif ( AbyssUIClassicAddonSettings.ElitePortrait == true and AbyssUIClassicAddonSettings.UnitFrameImproved == true ) then
		PlayerFrameTexture:SetTexture("Interface\\AddOns\\AbyssUIClassic\\Textures\\UI-TargetingFrame-Elite")
	    TargetFrameTextureFrameTexture:SetTexture("Interface\\AddOns\\AbyssUIClassic\\Textures\\UI-TargetingFrame-Rare")
	    --FocusFrameTextureFrameTexture:SetTexture("Interface\\AddOns\\AbyssUIClassic\\Textures\\UI-TargetingFrame-Rare")
	else
		return nil
	end
end)
--------------------------------------------
local _G = _G
local levelString 			= _G["LEVEL"]
local versionString 		= _G["GAME_VERSION_LABEL"]
local latestString     		= _G["KBASE_RECENTLY_UPDATED"] 
local timeStringLabel 		= _G["TIME_LABEL"]
-- DailyInfo Function
local AbyssUIClassicDailyInfo = CreateFrame("Frame")
AbyssUIClassicDailyInfo:RegisterEvent("PLAYER_LOGIN")
AbyssUIClassicDailyInfo:SetScript("OnEvent", function(self, event, arg1)
	C_Timer.After(3, function()
		print("Thank you for choosing |cff0d75d4AbyssUIClassic|r")
		print("The improved World of Warcraft user interface.")
	end)
	C_Timer.After(4, function()
		local AddonVersion = GetAddOnMetadata("AbyssUIClassic", "Version")
		print("|cfff2dc7f~ AbyssUI Daily Info ~|r")
		if ( AbyssUIClassicAddonSettings.ExtraFunctionAmericanClock == true ) then
			print("|cfff2dc7f"..timeStringLabel.."|r " .. date("%H:%M |cffffcc00%m/%d/%y|r "))
		else
			print("|cfff2dc7f"..timeStringLabel.."|r " .. date("%H:%M |cffffcc00%d/%m/%y|r "))
		end
		print("|cfff2dc7fWoW "..versionString..": |r|cffffcc00" .. select(1, GetBuildInfo()) .. "|r")
		print("|cfff2dc7fAbyssUI "..versionString..": |r|cffffcc00" .. AddonVersion .. "|r")
   		print("|cfff2dc7f"..latestString.." TexturePack: |r|cffffcc001.0.1.1 (26/09/20)|r")
		if ( AbyssUIClassicProfile ~= nil) then 
			local name, elapsed = UnitName("player"), time() - AbyssUIClassicProfile
			print("|cfff2dc7fTime since last login: |r" .. name .. " you were gone for |cffffcc00" .. SecondsToTime(elapsed) .. "|r")
			print("Type |cffffcc00/abyssui|r for a list of commands")
		end
	end)
end)
----------------------------------------------------
-- End
