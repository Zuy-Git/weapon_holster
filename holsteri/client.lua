-- 🎀  𝐸𝓁𝒶𝒾𝓃𝓉𝒶𝓇𝒽𝒶  🎀#9582
local ESX      	 = nil
local aseotettu  = true
local perse	     = false
local PlayerData = {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
	
	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:setJob')
	AddEventHandler('esx:setJob', function(job)
  		PlayerData.job = job
	end)

 Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		loadAnimDict("rcmjosh4")
		loadAnimDict("reaction@intimidation@cop@unarmed")
		loadAnimDict("reaction@intimidation@1h")
		local ped = PlayerPedId()

		if PlayerData.job ~= nil and PlayerData.job.name == 'police' then
			if not IsPedInAnyVehicle(ped, false) then
				if GetVehiclePedIsTryingToEnter (ped) == 0 and (GetPedParachuteState(ped) == -1 or GetPedParachuteState(ped) == 0) and not IsPedInParachuteFreeFall(ped) then
					if CheckWeapon(ped) then
						--if IsPedArmed(ped, 4) then
						if aseotettu then
							perse   = true
								SetPedCurrentWeaponVisible(ped, 0, 1, 1, 1)
								TaskPlayAnim(ped, "reaction@intimidation@cop@unarmed", "intro", 8.0, 2.0, -1, 50, 2.0, 0, 0, 0 ) -- Change 50 to 30 if you want to stand still when removing weapon
								--TaskPlayAnim(ped, "reaction@intimidation@cop@unarmed", "intro", 8.0, 2.0, -1, 30, 2.0, 0, 0, 0 ) Use this line if you want to stand still when removing weapon
	TriggerEvent("mythic_progbar:client:progress", {
        name = "unique_action_name",
        duration = 700,
        label = "Kaivetaan asetta...",
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "",
            anim = "idle_a",
        },
        prop = {
            model = "prop_microphone_02",
        }
    }, function(status)
        if not status then
            -- Do Something If Event Wasn't Cancelled
        end
    end)
									Citizen.Wait(Config.CooldownPolice)
								SetPedCurrentWeaponVisible(ped, 1, 1, 1, 1)
								TaskPlayAnim(ped, "rcmjosh4", "josh_leadout_cop2", 8.0, 2.0, -1, 48, 10, 0, 0, 0 )
									Citizen.Wait(400)
								ClearPedTasks(ped)
							aseotettu = false
						else
							perse = false
						end
					else
					--elseif not IsPedArmed(ped, 4) then
						if not aseotettu then
	TriggerEvent("mythic_progbar:client:progress", {
        name = "unique_action_name",
        duration = 700,
        label = "Laitetaan asetta takaisin...",
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "",
            anim = "idle_a",
        },
        prop = {
            model = "prop_microphone_02",
        }
    }, function(status)
        if not status then
            -- Do Something If Event Wasn't Cancelled
        end
    end)
					
								TaskPlayAnim(ped, "rcmjosh4", "josh_leadout_cop2", 8.0, 2.0, -1, 48, 10, 0, 0, 0 )
									Citizen.Wait(500)
																									    
								TaskPlayAnim(ped, "reaction@intimidation@cop@unarmed", "outro", 8.0, 2.0, -1, 50, 2.0, 0, 0, 0 ) -- Change 50 to 30 if you want to stand still when holstering weapon
								--TaskPlayAnim(ped, "reaction@intimidation@cop@unarmed", "outro", 8.0, 2.0, -1, 30, 2.0, 0, 0, 0 ) Use this line if you want to stand still when holstering weapon
									Citizen.Wait(60)
								ClearPedTasks(ped)
							aseotettu = true
						end
					end
				else
					SetCurrentPedWeapon(ped, GetHashKey("WEAPON_UNARMED"), true)
				end
			else
				aseotettu = true
			end
		else
			if not IsPedInAnyVehicle(ped, false) then
				if GetVehiclePedIsTryingToEnter (ped) == 0 and (GetPedParachuteState(ped) == -1 or GetPedParachuteState(ped) == 0) and not IsPedInParachuteFreeFall(ped) then
					if CheckWeapon(ped) then
						--if IsPedArmed(ped, 4) then
						if aseotettu then
							perse   = true
								SetPedCurrentWeaponVisible(ped, 0, 1, 1, 1)
								TaskPlayAnim(ped, "reaction@intimidation@1h", "intro", 5.0, 1.0, -1, 50, 0, 0, 0, 0 )
								--TaskPlayAnim(ped, "reaction@intimidation@1h", "intro", 5.0, 1.0, -1, 30, 0, 0, 0, 0 ) Use this line if you want to stand still when removing weapon
									Citizen.Wait(1250)
								SetPedCurrentWeaponVisible(ped, 1, 1, 1, 1)
	TriggerEvent("mythic_progbar:client:progress", {
        name = "unique_action_name",
        duration = 1700,
        label = "Kaivetaan asetta...",
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "",
            anim = "idle_a",
        },
        prop = {
            model = "prop_microphone_02",
        }
    }, function(status)
        if not status then
            -- Do Something If Event Wasn't Cancelled
        end
    end)
									Citizen.Wait(Config.cooldown)
								ClearPedTasks(ped)
							aseotettu = false
						else
							perse = false
						end
					else
					--elseif not IsPedArmed(ped, 4) then
						if not aseotettu then
	TriggerEvent("mythic_progbar:client:progress", {
        name = "unique_action_name",
        duration = 1800,
        label = "Laitetaan asetta takasin...",
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "",
            anim = "idle_a",
        },
        prop = {
            model = "prop_microphone_02",
        }
    }, function(status)
        if not status then
            -- Do Something If Event Wasn't Cancelled
        end
    end)
								TaskPlayAnim(ped, "reaction@intimidation@1h", "outro", 8.0, 3.0, -1, 50, 0, 0, 0.125, 0 ) -- Change 50 to 30 if you want to stand still when holstering weapon
								--TaskPlayAnim(ped, "reaction@intimidation@1h", "outro", 8.0, 3.0, -1, 30, 0, 0, 0.125, 0 ) Use this line if you want to stand still when holstering weapon
									Citizen.Wait(1700)
								ClearPedTasks(ped)
							aseotettu = true
						end
					end
				else
					SetCurrentPedWeapon(ped, GetHashKey("WEAPON_UNARMED"), true)
				end
			else
				aseotettu = true
			end
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		if perse then
			DisableControlAction(1, 25, true )
			DisableControlAction(1, 140, true)
			DisableControlAction(1, 141, true)
			DisableControlAction(1, 142, true)
			DisableControlAction(1, 23, true)
			DisableControlAction(1, 37, true) -- Disables INPUT_SELECT_WEAPON (TAB)
			DisablePlayerFiring(ped, true) -- Disable weapon firing
		end
	end
end)


function CheckWeapon(ped)
	--[[if IsPedArmed(ped, 4) then
		return true
	end]]
	if IsEntityDead(ped) then
		perse = false
			return false
		else
			for i = 1, #Config.Weapons do
				if GetHashKey(Config.Weapons[i]) == GetSelectedPedWeapon(ped) then
					return true
				end
			end
		return false
	end
end


function loadAnimDict(dict)
	while ( not HasAnimDictLoaded(dict)) do
		RequestAnimDict(dict)
		Citizen.Wait(0)
	end
end