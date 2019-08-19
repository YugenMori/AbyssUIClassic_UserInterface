--------------------------------------------------------------------------------
-- Author: Yugen
--
-- Classic
--
-- Hope you like my addOn ^^
--
-- Extra functions for Classic
--------------------------------------------------------------------------------
-- Thanks to ericraio for part of this
local ExtrasLoad = CreateFrame("Frame")
ExtrasLoad:RegisterEvent("ADDON_LOADED")
ExtrasLoad:SetScript("OnEvent", function(self, event, addon)
if (addon == "AbyssUIClassic_FunctionsExtras") then
-- Ammo Warning
local INITIAL_WARNING_COUNT = 200
local WARNING_INCREMENT = 50
local CRITICAL_WARNING_COUNT = 30
if (event == "UNIT_INVENTORY_CHANGED") then
	this.ammoSlot = CharacterAmmoSlot:GetID()
	local rangedCount = GetInventoryItemCount("player", CharacterRangedSlot:GetID())
	if (rangedCount > 1) then
		this.ammoSlot = CharacterRangedSlot:GetID()
	end
	if (this.lastAmmoCount == nil) then
		this.lastAmmoCount = GetInventoryItemCount("player", this.ammoSlot)
	end
	this.currentAmmoCount = GetInventoryItemCount("player", this.ammoSlot)
	if (this.lastAmmoCount ~= this.currentAmmoCount) then
		if (this.currentAmmoCount == INITIAL_WARNING_COUNT) then
			UIErrorsFrame:AddMessage("Running out of ammo! You have only "..this.currentAmmoCount, 1.0, 1.0, 0.0, 1.0, UIERRORS_HOLD_TIME.." shots left")
		elseif (math.mod(INITIAL_WARNING_COUNT - this.currentAmmoCount, WARNING_INCREMENT) == 0 and this.currentAmmoCount < INITIAL_WARNING_COUNT) then
			UIErrorsFrame:AddMessage("Low ammo! You have only "..this.currentAmmoCount, 1.0, 1.0, 0.0, 1.0, UIERRORS_HOLD_TIME.." shots left")
		elseif (this.currentAmmoCount > 0 and this.currentAmmoCount < CRITICAL_WARNING_COUNT) then
			UIErrorsFrame:AddMessage("Warning low ammo! You have only "..this.currentAmmoCount, 1.0, 1.0, 0.0, 1.0, UIERRORS_HOLD_TIME)
		end
		this.lastAmmoCount = this.currentAmmoCount
	end
end
-- End
end
end)