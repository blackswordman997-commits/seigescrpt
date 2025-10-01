local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remotes = ReplicatedStorage:WaitForChild("Remotes")

-- The main loop that will run the sequence infinitely
while true do

    -- Action 1: Wait 1.5 hour before teleporting to world 10
    print("Waiting 1.5 hour before teleporting to World 10...")
    wait(5400)

    -- Teleportation to World 10 (mapId = 50010)
    print("Teleporting to World 10...")
    local args1 = {
        {
            mapId = 50010
        }
    }
    Remotes:WaitForChild("LocalPlayerTeleport"):FireServer(unpack(args1))

    -- CRITICAL SAFETY WAIT: Wait 5 seconds for the client to stabilize after teleport
    wait(5) 
    
    -- Action 2: Wait 20 seconds before teleporting to monster siege 3
    print("Teleported. Waiting 20 seconds before teleporting to Monster Siege 3...")
    wait(20)

    -- Teleportation to Monster Siege 3 (1000003)
    print("Teleporting to Monster Siege 3...")
    local args2 = {
        1000003
    }
    Remotes:WaitForChild("EnterCityRaidMap"):FireServer(unpack(args2))

    -- CRITICAL SAFETY WAIT: Wait 5 seconds for the client to stabilize after siege entry
    wait(5)

    -- Action 3: Wait 600 seconds before teleporting to World 11
    print("Teleported. Waiting 600 seconds before teleporting to World 11...")
    wait(600)

    -- Teleportation to World 11 (mapId = 50011)
    print("Teleporting to World 11...")
    local args3 = {
        {
            mapId = 50011
        }
    }
    Remotes:WaitForChild("LocalPlayerTeleport"):FireServer(unpack(args3))

    -- The loop will now repeat from the beginning
    print("Teleportation sequence completed. Restarting...")
end
