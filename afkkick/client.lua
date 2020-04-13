time = 30

kickWarning = true


Citizen.CreateThread(function()
	while true do
		Wait(1000)

		playerPed = GetPlayerPed(-1)
		if playerPed then
			currentPos = GetEntityCoords(playerPed, true)

			if currentPos == prevPos then
				if time > 0 then
					if kickWarning and time < 20 then
						TriggerEvent("chatMessage", "WARNING", {255, 0, 0}, "^1你即將在" .. time .. "秒後被剔除！")
					end

					time = time - 1
				else
					TriggerServerEvent("kickForBeingAnAFKDouchebag")
				end
			else
				time = 30
			end

			prevPos = currentPos
		end
	end
end)