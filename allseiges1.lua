local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remotes = ReplicatedStorage:WaitForChild("Remotes")

-- The main loop that will run the sequence infinitely
while true do
    print("--- STARTING NEW FULL SEQUENCE ---")
    
    -- Action 0: INITIAL TELEPORT
    print("Action 0: Initial Teleporting to World 10 (50010)")
    local args0 = {
        {
            mapId = 50010
        }
    }
    Remotes:WaitForChild("LocalPlayerTeleport"):FireServer(unpack(args0))

    -- =========================================================
    --                        CYCLE 1
    -- =========================================================
    
    -- 1- WAIT 30 MINUTES (1800s)
    print("\nCYCLE 1: Waiting 1800s (30 mins) before starting actions.")
    wait(1800)

    -- Tp to world 3 (50003)
    print("Action 1.1: Teleporting to World 3 (50003)")
    local args1_1 = {
        {
            mapId = 50003
        }
    }
    Remotes:WaitForChild("LocalPlayerTeleport"):FireServer(unpack(args1_1))
    
    -- Wait 5s
    print("Waiting 5s...")
    wait(5)
    
    -- Enter Seige 1 (1000001)
    print("Action 1.2: Entering Siege 1 (1000001)")
    local args1_2 = {
        1000001
    }
    Remotes:WaitForChild("EnterCityRaidMap"):FireServer(unpack(args1_2))
    
    -- Wait 50 seconds
    print("Waiting 50s...")
    wait(50)

    -- Tp to world 10 (50010)
    print("Action 1.3: Teleporting to World 10 (50010)")
    local args1_3 = {
        {
            mapId = 50010
        }
    }
    Remotes:WaitForChild("LocalPlayerTeleport"):FireServer(unpack(args1_3))

    -- =========================================================
    --                        CYCLE 2
    -- =========================================================
    
    -- 2- WAIT 30 MINUTES (1800s)
    print("\nCYCLE 2: Waiting 1800s (30 mins) before starting actions.")
    wait(1800)

    -- Tp to world 3 (50003)
    print("Action 2.1: Teleporting to World 3 (50003)")
    local args2_1 = {
        {
            mapId = 50003
        }
    }
    Remotes:WaitForChild("LocalPlayerTeleport"):FireServer(unpack(args2_1))
    
    -- Wait 5s
    print("Waiting 5s...")
    wait(5)
    
    -- Enter Seige 1 (1000001)
    print("Action 2.2: Entering Siege 1 (1000001)")
    local args2_2 = {
        1000001
    }
    Remotes:WaitForChild("EnterCityRaidMap"):FireServer(unpack(args2_2))
    
    -- Wait 50 seconds
    print("Waiting 50s...")
    wait(50) 
    
    -- Tp to world 7 (50007)
    print("Action 2.3: Teleporting to World 7 (50007)")
    local args2_3 = {
        {
            mapId = 50007
        }
    }
    Remotes:WaitForChild("LocalPlayerTeleport"):FireServer(unpack(args2_3))
    
    -- Wait 5s
    print("Waiting 5s...")
    wait(5)
    
    -- Enter seige 2 (1000002)
    print("Action 2.4: Entering Siege 2 (1000002)")
    local args2_4 = {
        1000002
    }
    Remotes:WaitForChild("EnterCityRaidMap"):FireServer(unpack(args2_4))
    
    -- Wait 50s
    print("Waiting 50s...")
    wait(50)

    -- Tp to world 10 (50010)
    print("Action 2.5: Teleporting to World 10 (50010)")
    local args2_5 = {
        {
            mapId = 50010
        }
    }
    Remotes:WaitForChild("LocalPlayerTeleport"):FireServer(unpack(args2_5))


    -- =========================================================
    --                        CYCLE 3
    -- =========================================================
    
    -- 3- WAIT 30 MINUTES (1800s)
    print("\nCYCLE 3: Waiting 1800s (30 mins) before starting actions.")
    wait(1800)

    -- Tp to world 3 (50003)
    print("Action 3.1: Teleporting to World 3 (50003)")
    local args3_1 = {
        {
            mapId = 50003
        }
    }
    Remotes:WaitForChild("LocalPlayerTeleport"):FireServer(unpack(args3_1))
    
    -- Wait 5s
    print("Waiting 5s...")
    wait(5)
    
    -- Enter seige 1 (1000001)
    print("Action 3.2: Entering Siege 1 (1000001)")
    local args3_2 = {
        1000001
    }
    Remotes:WaitForChild("EnterCityRaidMap"):FireServer(unpack(args3_2))
    
    -- Wait 50s
    print("Waiting 50s...")
    wait(50)
    
    -- Tp to world 10 (50010)
    print("Action 3.3: Teleporting to World 10 (50010)")
    local args3_3 = {
        {
            mapId = 50010
        }
    }
    Remotes:WaitForChild("LocalPlayerTeleport"):FireServer(unpack(args3_3))
    
    -- Wait 5s
    print("Waiting 5s...")
    wait(5)
    
    -- Enter seige 3 (1000003)
    print("Action 3.4: Entering Siege 3 (1000003)")
    local args3_4 = {
        1000003
    }
    Remotes:WaitForChild("EnterCityRaidMap"):FireServer(unpack(args3_4))

    -- Final actions before loop restarts
    
    -- wait 20 min (1200s)
    print("Final Wait: Waiting 1200s (20 mins) before restarting the full sequence.")
    wait(1200)
    
    -- rejoin server (Action for loop restart)
    print("\n--- FULL SEQUENCE COMPLETED. RESTARTING LOOP. ---")
end
