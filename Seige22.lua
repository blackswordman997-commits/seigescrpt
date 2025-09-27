local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remotes = ReplicatedStorage:WaitForChild("Remotes")

-- The main loop that will run the sequence infinitely
while true do
    -- Action 1: Wait 61 minutes before teleporting to World 7
    print("Waiting 61 minutes before teleporting to World 7...")
    task.wait(3660) -- 61 minutes = 3660 seconds

    -- Teleportation to World 7 (mapId = 50007)
    print("Teleporting to World 7...")
    Remotes:WaitForChild("LocalPlayerTeleport"):FireServer(50007)

    -- Action 2: Wait 50 seconds before teleporting to Monster Siege 2
    print("Teleported. Waiting 50 seconds before teleporting to Monster Siege 2...")
    task.wait(50)

    -- Teleportation to Monster Siege 2 (mapId = 1000002)
    print("Teleporting to Monster Siege 2...")
    Remotes:WaitForChild("EnterCityRaidMap"):FireServer(1000002)

    -- The loop will now repeat from the beginning
    print("Teleportation sequence completed. Restarting...")
end
