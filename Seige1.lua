local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remotes = ReplicatedStorage:WaitForChild("Remotes")

-- The main loop that will run the sequence infinitely
while true do
    -- Action 1: Wait 40 minutes before teleporting to World 3
    print("Waiting 40 minutes before teleporting to World 3...")
    task.wait(2400) -- 40 minutes = 2400 seconds

    -- Teleportation to World 3 (mapId = 50003)
    print("Teleporting to World 3...")
    Remotes:WaitForChild("LocalPlayerTeleport"):FireServer(50003)

    -- Action 2: Wait 20 seconds before teleporting to Monster Siege 1
    print("Teleported. Waiting 20 seconds before teleporting to Monster Siege 1...")
    task.wait(20)

    -- Teleportation to Monster Siege 1 (mapId = 1000001)
    print("Teleporting to Monster Siege 1...")
    Remotes:WaitForChild("EnterCityRaidMap"):FireServer(1000001)

    -- The loop will now repeat from the beginning
    print("Teleportation sequence completed. Restarting...")
end
