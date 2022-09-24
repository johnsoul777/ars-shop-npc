
ESX = exports.es_extended:getSharedObject()


local ox_inventory = exports.ox_inventory

RegisterNetEvent('ars-shop-npc:compraRoba', function(prezzo, item)
    local soldi = ox_inventory:Search(source, 'count', "money")

    if soldi > prezzo then
        ox_inventory:RemoveItem(source, 'money', prezzo)
        ox_inventory:AddItem(source, item, 1)
        TriggerClientEvent('ox_lib:notify', source, {title = 'Comprato '..item, style = {backgroundColor = '#141517', color = '#909296'}, icon = 'circle-check', iconColor = '#48BB78', type = 'success'})
    else
        TriggerClientEvent('ox_lib:notify', source, {title = 'Soldi insuffiscenti '..prezzo, style = {backgroundColor = '#141517', color = '#909296'}, icon = 'ban', iconColor = '#C53030', type = 'error'})
    end
end)




