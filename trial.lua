-- This script uses dynamic timing to synchronize with the exact
-- schedule of each siege event, preventing drift over time.
-- All values are hardcoded for direct usage.

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remotes = ReplicatedStorage:WaitForChild("Remotes")

-- The main loop that will run the sequence infinitely
while true do
    print("--- STARTING NEW SCHEDULED SEQUENCE ---")

    -- =========================================================
    --                SCHEDULE FOR SIEGE 1
    -- =========================================================
    
    -- Calculate time to wait for the next Siege 1 event (30 minutes)
    local currentTime = os.time()
    local timeSinceEpoch = os.difftime(currentTime, 0)
    local secondsUntilNextSiege1 = (30 * 60) - (timeSinceEpoch % (30 * 60))

    print("\nSCHEDULER: Waiting " .. secondsUntilNextSiege1 .. "s for next Siege 1.")
    wait(secondsUntilNextSiege1)
    
    -- Action: Teleport to World 3 (50003) and then to Siege 1 (1000001)
    print("Teleporting to World 3 (50003)...")
    local args_w3 = {{mapId = 50003}}
    Remotes:WaitForChild("LocalPlayerTeleport"):FireServer(unpack(args_w3))
    
    wait(5)
    
    print("Entering Siege 1 (1000001)...")
    local args_s1 = {1000001}
    Remotes:WaitForChild("EnterCityRaidMap"):FireServer(unpack(args_s1))

    -- =========================================================
    --                SCHEDULE FOR SIEGE 2
    -- =========================================================
    
    -- Calculate time to wait for the next Siege 2 event (60 minutes)
    currentTime = os.time()
    timeSinceEpoch = os.difftime(currentTime, 0)
    local secondsUntilNextSiege2 = (60 * 60) - (timeSinceEpoch % (60 * 60))

    print("\nSCHEDULER: Waiting " .. secondsUntilNextSiege2 .. "s for next Siege 2.")
    wait(secondsUntilNextSiege2)
    
    -- Action: Teleport to World 7 (50007) and then to Siege 2 (1000002)
    print("Teleporting to World 7 (50007)...")
    local args_w7 = {{mapId = 50007}}
    Remotes:WaitForChild("LocalPlayerTeleport"):FireServer(unpack(args_w7))
    
    wait(5)
    
    print("Entering Siege 2 (1000002)...")
    local args_s2 = {1000002}
    Remotes:WaitForChild("EnterCityRaidMap"):FireServer(unpack(args_s2))

    -- =========================================================
    --                SCHEDULE FOR SIEGE 3
    -- =========================================================
    
    -- Calculate time to wait for the next Siege 3 event (90 minutes)
    currentTime = os.time()
    timeSinceEpoch = os.difftime(currentTime, 0)
    local secondsUntilNextSiege3 = (90 * 60) - (timeSinceEpoch % (90 * 60))

    print("\nSCHEDULER: Waiting " .. secondsUntilNextSiege3 .. "s for next Siege 3.")
    wait(secondsUntilNextSiege3)
    
    -- Action: Teleport to World 10 (50010) and then to Siege 3 (1000003)
    print("Teleporting to World 10 (50010)...")
    local args_w10 = {{mapId = 50010}}
    Remotes:WaitForChild("LocalPlayerTeleport"):FireServer(unpack(args_w10))
    
    wait(5)
    
    print("Entering Siege 3 (1000003)...")
    local args_s3 = {1000003}
    Remotes:WaitForChild("EnterCityRaidMap"):FireServer(unpack(args_s3))

    -- The loop will now repeat, calculating the next wait for Siege 1
    print("\nSCHEDULER: All siege events completed. Recalculating schedule for next cycle...")
end
