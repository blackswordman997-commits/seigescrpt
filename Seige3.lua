local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Remotes = ReplicatedStorage:WaitForChild("Remotes")



-- The main loop that will run the sequence infinitely

while true do

    -- Action 1: Wait 1.5 hour before teleporting to world 10

    print("Waiting 1.5 hour before teleporting to World 10...")

    wait(6000)



    -- Teleportation to World 10 (mapId = 50010)

    print("Teleporting to World 10...")

    local args = {

        {

            mapId = 50010

        }

    }

    Remotes:WaitForChild("LocalPlayerTeleport"):FireServer(unpack(args))



    -- Action 2: Wait 20 seconds before teleporting to monster siege 3

    print("Teleported. Waiting 20 seconds before teleporting to Monster Siege 3...")

    wait(20)



    -- Teleportation to Monster Siege 3 (1000003)

    print("Teleporting to Monster Siege 3...")

    local args = {

        1000003

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
