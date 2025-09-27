local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remotes = ReplicatedStorage:WaitForChild("Remotes")

-- The main loop that will run the sequence infinitely
while true do
    -- Action 1: Wait 1.5 hour before teleporting to world 10
    print("Waiting 1.5 hour before teleporting to World 10...")
    task.wait(5400) -- Corrected from 6000, as 1.5 hours is 5400 seconds

    -- Teleportation to World 10 (mapId = 50010)
    print("Teleporting to World 10...")
    Remotes:WaitForChild("LocalPlayerTeleport"):FireServer(50010)

    -- Action 2: Wait 20 seconds before teleporting to monster siege 3
    print("Teleported. Waiting 20 seconds before teleporting to Monster Siege 3...")
    task.wait(20)

    -- Teleportation to Monster Siege 3 (1000003)
    print("Teleporting to Monster Siege 3...")
    Remotes:WaitForChild("EnterCityRaidMap"):FireServer(1000003)

    -- Action 3: Wait 50 seconds before teleporting to World 10
    print("Teleported. Waiting 50 seconds before teleporting to World 10...")
    task.wait(50)

    -- Teleportation to World 10 (mapId = 50010)
    print("Teleporting to World 10...")
    Remotes:WaitForChild("LocalPlayerTeleport"):FireServer(50010)

    -- The loop will now repeat from the beginning
    print("Teleportation sequence completed. Restarting...")
end
