--------------------------------------------------------------------------------
-- Author: Yugen
--
-- Classic
--
-- Hope you like my addOn ^^
--
-- Simple frame mover for AbyssUIClassic
--------------------------------------------------------------------------------
-- Frame Stuff
local UnLocked
local Moveframes = { ObjectiveTrackerFrame, MinimapCluster, PlayerFrame, TargetFrame, } -- So we don't create a new table each time
for i , v in pairs (Moveframes) do
    local f = v
    f:SetMovable(true) -- only set thes conditions once when you start up
    f:EnableMouse(true)
    f:SetClampedToScreen(true)
    f:RegisterForDrag("LeftButton")
    f:SetScript("OnDragStart", function(self)
        if not UnLocked then return end -- set the condition that will let dragging run
        self:StartMoving()
    end)
    f:SetScript("OnDragStop", function(self)
        self:StopMovingOrSizing()
    end)
    f.Movetex = f:CreateTexture("ARTWORK") -- only create the texture(s) once 
    f.Movetex:SetAllPoints() 
--  f.Movetex:SetTexture(1.0, 0.5, 0) -- SetTexture no longer does colors
    f.Movetex:SetTexture("Interface/BUTTONS/WHITE8X8")
    local ObName = f:GetName()
    f.Movetex.text = f.text or f:CreateFontString(nil, "ARTWORK", "QuestMapRewardsFont")
    f.Movetex.text:SetAllPoints(true)
    f.Movetex.text:SetJustifyH("TOP")
    f.Movetex.text:SetJustifyV("TOP")
    f.Movetex.text:SetText(ObName)
    f.Movetex.text:SetFont("Fonts\\FRIZQT__.TTF", 08, "THICKOUTLINE")
    f.Movetex:SetColorTexture(1.0, 0.5, 0)
    f.Movetex:SetAlpha(0.5)
    f.Movetex:Hide() -- and hide it
    f.Movetex.text:Hide()
end
 
local function AbyssUIClassicMoveFrames_Function(show)
    for i , v in pairs (Moveframes) do
        local f = v
        f.Movetex:SetShown(show)
        f.Movetex.text:SetShown(show)
        UnLocked = show
        if ( f == PlayerFrame or f == TargetFrame ) then
            f:RegisterForDrag("LeftButton")
            f:SetScript("OnDragStart", f.StartMoving) 
            f:SetScript("OnDragStop", f.StopMovingOrSizing) 
        end
    end
end
-- Reset
local function AbyssUIClassicMoveFrames_Reset()
    for i , v in pairs (Moveframes) do
        local f = v
        f:ClearAllPoints()
        f.ClearAllPoints = function() end
    end
    PlayerFrame:SetPoint("TOPLEFT", UIParent, "TOPLEFT", -19, -4)
    TargetFrame:SetPoint("TOPLEFT", UIParent, "TOPLEFT", 250, -4)
    MinimapCluster:SetPoint("TOPRIGHT", UIParent, "TOPRIGHT", 10, 10)
    C_Timer.After(0.5, function()
        ObjectiveTrackerFrame:SetPoint("TOPRIGHT", MinimapCluster, "BOTTOM", 45, -5)
    end)
end
-- Slash Commands
-- Handler
local function AbyssUIClassicMoveFrames_Slashhandler()
    print("|cffa5f6f3AbyssUIClassic Command List|r")
    print("|cffa5f6f3Type /abyssui |r|cffffcc00'command name'|r")
    print("/abyssui |cffffcc00config|r ~configuration panel")
    print("/abyssui |cffffcc00unlock|r ~unlock UI frames")
    print("/abyssui |cffffcc00lock|r ~lock UI frames that was changed")
    print("/abyssui |cffffcc00reset|r ~reset UI frames to default positions")
    print("/abyssui |cffffcc00daily|r ~AbyssUIClassic daily info")
end
-- Function
local function AbyssUIClassicMoveFrames_Slash(msg)
    if ( msg ~= "" ) then
        if ( msg == "config" ) then
            InterfaceOptionsFrame_Show()
            InterfaceOptionsFrame_OpenToCategory(AbyssUIClassic_Config)
            InterfaceOptionsFrame_OpenToCategory(AbyssUIClassic_Config)
        elseif (msg == "unlock") then
            AbyssUIClassicMoveFrames_Function(true)
        elseif (msg == "lock") then
            AbyssUIClassicMoveFrames_Function(false)
        elseif (msg == "reset") then
            AbyssUIClassicMoveFrames_Reset()
        elseif (msg == "daily") then
            AbyssUIClassicDailyInfo()
        else
            return nil
        end
    else 
        return AbyssUIClassicMoveFrames_Slashhandler()
    end
end
-- Slash
SLASH_ABUI1 = '/abyssui'
function SlashCmdList.ABUI(msg, editbox)
    AbyssUIClassicMoveFrames_Slash(msg)
end
--End