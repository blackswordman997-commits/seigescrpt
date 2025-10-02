local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remotes = ReplicatedStorage:WaitForChild("Remotes")

-- Action 1: Wait 1.5 hour before teleporting to world 10
print("Waiting 30 min before teleporting to World 10...")
wait(3600)

-- Teleportation to World 10 (mapId = 50010)
print("Teleporting to World 3...")
local args1 = {
    {
        mapId = 50003
    }
}
Remotes:WaitForChild("LocalPlayerTeleport"):FireServer(unpack(args1))

-- Action 2: Wait 20 seconds before teleporting to monster siege 3
print("Teleported. Waiting 20 seconds before teleporting to Monster Siege 1...")
wait(20)

-- Teleportation to Monster Siege 3 (1000003)
print("Teleporting to Monster Siege 1...")
local args2 = {1000001}
Remotes:WaitForChild("EnterCityRaidMap"):FireServer(unpack(args2))

-- Action 3: Wait 600 seconds before teleporting to World 11
print("Teleported. Waiting 300 seconds before teleporting to World 11...")
wait(300)

-- Teleportation to World 11 (mapId = 50011)
print("Teleporting to World 11...")
local args3 = {
    {
        mapId = 50011
    }
}
Remotes:WaitForChild("LocalPlayerTeleport"):FireServer(unpack(args3))

print("Teleportation sequence completed. Script finished.")
