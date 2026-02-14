local QBCore = exports["qb-core"]:GetCoreObject()

RegisterNetEvent("girmur", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if inv == "ox_inventory" then
        exports.ox_inventory:AddItem(src, itemname, 1)
    else
        Player.Functions.AddItem(itemname, 1)
    end
end)

RegisterNetEvent("fjemur", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if inv == "ox_inventory" then
        exports.ox_inventory:RemoveItem(src, itemname, 1)
    else
        Player.Functions.RemoveItem(itemname, 1)
    end
end)

if framework == "qb" then
    QBCore.Functions.CreateUseableItem(itemname, function(source)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        TriggerClientEvent("banngass", source)
    end)

end
