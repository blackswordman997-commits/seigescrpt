-- This script automates a sequence of teleportation actions with specific wait times.

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remotes = ReplicatedStorage:WaitForChild("Remotes")

-- The main loop that will run the sequence infinitely
while true do
    -- Action 1: Wait 1 hour before teleporting to world 7
    print("Waiting 1 hour before teleporting to World 7...")
    wait(3600)

    -- Teleportation to World 7 (mapId = 50007)
    print("Teleporting to World 7...")
    local args = {
        {
            mapId = 50007
        }
    }
    Remotes:WaitForChild("LocalPlayerTeleport"):FireServer(unpack(args))

    -- Action 2: Wait 20 seconds before teleporting to monster siege 2
    print("Teleported. Waiting 20 seconds before teleporting to Monster Siege 2...")
    wait(20)

    -- Teleportation to Monster Siege 2 (1000002)
    print("Teleporting to Monster Siege 2...")
    local args = {
        1000002
    }
    Remotes:WaitForChild("EnterCityRaidMap"):FireServer(unpack(args))

    -- Action 3: Wait 50 seconds before teleporting to World 10
    print("Teleported. Waiting 50 seconds before teleporting to World 10...")
    wait(50)

    -- Teleportation to World 10 (mapId = 50010)
    print("Teleporting to World 10...")
    local args = {
        {
            mapId = 50010
        }
    }
    Remotes:WaitForChild("LocalPlayerTeleport"):FireServer(unpack(args))

    -- The loop will now repeat from the beginning
    print("Teleportation sequence completed. Restarting...")
end
