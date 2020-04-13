local steamID = {
	"steam:(Hex)",
}

RegisterServerEvent("kickForBeingAnAFKDouchebag")
AddEventHandler("kickForBeingAnAFKDouchebag", function()
	identifiers = GetPlayerIdentifier(source)
	
	for _, ID in ipairs(steamID) do 
		if ID == identifiers then
		else
			DropPlayer(source, "掛機時間過長，已被剔除")
		end
	end
end)