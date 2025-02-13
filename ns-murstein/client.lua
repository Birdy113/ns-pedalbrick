local QBCore = exports["qb-core"]:GetCoreObject()

local function loadAnimDict(dict)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Wait(0)
    end
end

RegisterNetEvent("plukkoppmur")
AddEventHandler("plukkoppmur", function()
    RequestAnimDict("pickup_object")
    loadAnimDict("pickup_object")
    TaskPlayAnim(PlayerPedId(),"pickup_object","pickup_low",1.0,-1.0,-1,2,1,true,true,true)
    Wait(2000)
    ClearPedTasks(PlayerPedId())
    TriggerServerEvent("girmur")
end)


    if target == "ox_target" then 
        exports['ox_target']:addModel(mursteiner, {
    
            {
                name = "murstein1",
                debugPoly = false,
                useZ = true,
                event = "plukkoppmur",
                icon = "fa fa-signing",
                label = pickup,
                distance = 2.5
            },
        })
        if useitem == false then 
            exports.ox_target:addGlobalVehicle({
                {
                    label = plasserpedal,
                    name = 'murstein',
                    icon = 'fa fa-signing',
                    item = itemname,
                    bones = "door_dside_f",
                    distance = 2.5,
                    onSelect = function(data)
                        local entity = data.entity
                        if not DoesEntityExist(entity) then return end
                        TriggerEvent("banngass")
                    end,
                }
            })
        end
    else

        exports['qb-target']:AddTargetModel(mursteiner, {
            options = {
                {
                    event = 'plukkoppmur',
                    icon = 'fa fa-signing',
                    label = pickup,
                },
            },
            distance = 2.5
        })
        if useitem == false then 
            exports['qb-target']:AddGlobalVehicle({
                options = { 
                  { 
                    type = "client", 
                    icon = 'fa fa-signing', 
                    label = plasserpedal,
                    targeticon = 'fa fa-signing', 
                    item = itemname,
                    canInteract = function(entity, distance, data)
                        local entity = data.entity
                        if not DoesEntityExist(entity) then return end
                        TriggerEvent("banngass")
                    end,
                  }
                },
                distance = 2.5, 
            })
        end
    end



RegisterNetEvent("banngass")
AddEventHandler("banngass",function()
    ---- This is made to work with and without target
    local coords = GetEntityCoords(PlayerPedId())
    local vehicle = QBCore.Functions.GetClosestVehicle(coords, 2)
    local vehcoords = GetEntityCoords(vehicle)
    local betcoord = GetDistanceBetweenCoords(coords, vehcoords)
    local door = GetVehicleDoorLockStatus(vehicle)
    if door == 2 then QBCore.Functions.Notify(locked) return end 
    if betcoord < 2.5 then 
        SetVehicleDoorOpen(vehicle,0,false,true)
        RequestAnimDict("pickup_object")
        loadAnimDict("pickup_object")
        TaskPlayAnim(PlayerPedId(),"pickup_object","pickup_low",1.0,-1.0,-1,2,1,true,true,true)
        Wait(2000)
        TriggerServerEvent("fjemur")
        ClearPedTasks(PlayerPedId())
        SetVehicleDoorShut(vehicle,0,false)
        SetVehicleEngineOn(vehicle, true, true, false)
        Wait(1000)
        QBCore.Functions.Notify(placedonpedal)
        TaskVehicleTempAction(GetPlayerPed(-1),vehicle,32,time)
        if breakcar then 
            CreateThread( function()
                while true do
                    Wait(10)
                    local broken = HasEntityCollidedWithAnything(vehicle) 
                    if broken then 
                        SetVehicleEngineOn(vehicle, false, false, false)
                        SetVehicleEngineHealth(vehicle, 0)  
                        SetVehicleUndriveable(vehicle, true)     
                        break
                    elseif loopabreaka then
                        break
                    end
                end

            end)
        end
        if breakcar then Wait(15000) loopabreaka = true end
    else
        QBCore.Functions.Notify(close)
    end

end)