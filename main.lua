CreateThread(function ()
    Wait(1000)
    for r,w in pairs(NPC) do
    
        SpawnNPC(w.anim, w.modelnpc, w.coords )
    end
end)



SpawnNPC = function(anim,modelo, x,y,z,h)
    hash = GetHashKey(modelo)
    RequestModel(hash)
    while not HasModelLoaded(hash) do
        Wait(1)
    end
    
    crearNPC = CreatePed(5, hash, x,y,z,h, false, true)
    FreezeEntityPosition(crearNPC, true)
    SetEntityInvincible(crearNPC, true)
    SetBlockingOfNonTemporaryEvents(crearNPC, true)
    TaskStartScenarioInPlace(crearNPC,anim, 0, false)
end
