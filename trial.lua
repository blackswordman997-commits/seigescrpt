local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remotes = ReplicatedStorage:WaitForChild("Remotes")

-- Time and Map Constants for Clarity
local WAIT_30_MIN = 1800   -- 30 minutes
local WAIT_20_MIN = 1200   -- 20 minutes
local WAIT_5_SEC = 5
local WAIT_50_SEC = 50

local WORLD_3 = 50003
local WORLD_7 = 50007
local WORLD_10 = 50010
local SIEGE_1 = 1000001
local SIEGE_2 = 1000002
local SIEGE_3 = 1000003


-- The main loop that will run the sequence infinitely
while true do
    print("--- STARTING NEW FULL SEQUENCE ---")
    
    -- Action 0: INITIAL TELEPORT (Before the first wait)
    print("Action 0: Initial Teleporting to World 10 ("..WORLD_10..")")
    local args0 = {
        {
            mapId = WORLD_10
        }
    }
    Remotes:WaitForChild("LocalPlayerTeleport"):FireServer(unpack(args0))

    -- =========================================================
    --                        CYCLE 1
    -- =========================================================
    
    -- 1- WAIT 30 MINUTES
    print("\nCYCLE 1: Waiting " .. WAIT_30_MIN .. "s (30 mins) before starting actions.")
    wait(WAIT_30_MIN)

    -- Tp to world 3
    print("Action 1.1: Teleporting to World 3 ("..WORLD_3..")")
    local args1_1 = {
        {
            mapId = WORLD_3
        }
    }
    Remotes:WaitForChild("LocalPlayerTeleport"):FireServer(unpack(args1_1))
    
    -- Wait 5s
    print("Waiting " .. WAIT_5_SEC .. "s...")
    wait(WAIT_5_SEC)
    
    -- Enter Seige 1
    print("Action 1.2: Entering Siege 1 ("..SIEGE_1..")")
    local args1_2 = {
        SIEGE_1
    }
    Remotes:WaitForChild("EnterCityRaidMap"):FireServer(unpack(args1_2))
    
    -- Wait 50 seconds
    print("Waiting " .. WAIT_50_SEC .. "s...")
    wait(WAIT_50_SEC)

    -- Tp to world 10
    print("Action 1.3: Teleporting to World 10 ("..WORLD_10..")")
    local args1_3 = {
        {
            mapId = WORLD_10
        }
    }
    Remotes:WaitForChild("LocalPlayerTeleport"):FireServer(unpack(args1_3))

    -- =========================================================
    --                        CYCLE 2
    -- =========================================================
    
    -- 2- WAIT 30 MINUTES
    print("\nCYCLE 2: Waiting " .. WAIT_30_MIN .. "s (30 mins) before starting actions.")
    wait(WAIT_30_MIN)

    -- Tp to world 3
    print("Action 2.1: Teleporting to World 3 ("..WORLD_3..")")
    local args2_1 = {
        {
            mapId = WORLD_3
        }
    }
    Remotes:WaitForChild("LocalPlayerTeleport"):FireServer(unpack(args2_1))
    
    -- Wait 5s
    print("Waiting " .. WAIT_5_SEC .. "s...")
    wait(WAIT_5_SEC)
    
    -- Enter Seige 1
    print("Action 2.2: Entering Siege 1 ("..SIEGE_1..")")
    local args2_2 = {
        SIEGE_1
    }
    Remotes:WaitForChild("EnterCityRaidMap"):FireServer(unpack(args2_2))
    
    -- Wait 50 seconds
    print("Waiting " .. WAIT_50_SEC .. "s...")
    wait(WAIT_50_SEC) 
    
    -- Tp to world 7
    print("Action 2.3: Teleporting to World 7 ("..WORLD_7..")")
    local args2_3 = {
        {
            mapId = WORLD_7
        }
    }
    Remotes:WaitForChild("LocalPlayerTeleport"):FireServer(unpack(args2_3))
    
    -- Wait 5s
    print("Waiting " .. WAIT_5_SEC .. "s...")
    wait(WAIT_5_SEC)
    
    -- Enter seige 2
    print("Action 2.4: Entering Siege 2 ("..SIEGE_2..")")
    local args2_4 = {
        SIEGE_2
    }
    Remotes:WaitForChild("EnterCityRaidMap"):FireServer(unpack(args2_4))
    
    -- Wait 50s
    print("Waiting " .. WAIT_50_SEC .. "s...")
    wait(WAIT_50_SEC)

    -- Tp to world 10
    print("Action 2.5: Teleporting to World 10 ("..WORLD_10..")")
    local args2_5 = {
        {
            mapId = WORLD_10
        }
    }
    Remotes:WaitForChild("LocalPlayerTeleport"):FireServer(unpack(args2_5))


    -- =========================================================
    --                        CYCLE 3
    -- =========================================================
    
    -- 3- WAIT 30 MINUTES
    print("\nCYCLE 3: Waiting " .. WAIT_30_MIN .. "s (30 mins) before starting actions.")
    wait(WAIT_30_MIN)

    -- Tp to world 3
    print("Action 3.1: Teleporting to World 3 ("..WORLD_3..")")
    local args3_1 = {
        {
            mapId = WORLD_3
        }
    }
    Remotes:WaitForChild("LocalPlayerTeleport"):FireServer(unpack(args3_1))
    
    -- Wait 5s
    print("Waiting " .. WAIT_5_SEC .. "s...")
    wait(WAIT_5_SEC)
    
    -- Enter seige 1
    print("Action 3.2: Entering Siege 1 ("..SIEGE_1..")")
    local args3_2 = {
        SIEGE_1
    }
    Remotes:WaitForChild("EnterCityRaidMap"):FireServer(unpack(args3_2))
    
    -- Wait 50s
    print("Waiting " .. WAIT_50_SEC .. "s...")
    wait(WAIT_50_SEC)
    
    -- Tp to world 10
    print("Action 3.3: Teleporting to World 10 ("..WORLD_10..")")
    local args3_3 = {
        {
            mapId = WORLD_10
        }
    }
    Remotes:WaitForChild("LocalPlayerTeleport"):FireServer(unpack(args3_3))
    
    -- Wait 5s
    print("Waiting " .. WAIT_5_SEC .. "s...")
    wait(WAIT_5_SEC)
    
    -- Enter seige 3
    print("Action 3.4: Entering Siege 3 ("..SIEGE_3..")")
    local args3_4 = {
        SIEGE_3
    }
    Remotes:WaitForChild("EnterCityRaidMap"):FireServer(unpack(args3_4))

    -- Final actions before loop restarts
    
    -- wait 20 min 
    print("Final Wait: Waiting " .. WAIT_20_MIN .. "s (20 mins) before restarting.")
    wait(WAIT_20_MIN)
    
    -- rejoin server
    print("Final Action: Attempting to rejoin server.")
    -- This action requires knowing the specific remote function for disconnecting/rejoining
    -- Example placeholder (may need to be adjusted for your game):
    -- Remotes:WaitForChild("DisconnectPlayer"):FireServer() 

    
    print("\n--- FULL SEQUENCE COMPLETED. RESTARTING LOOP. ---")
end
