local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("ASH X HUB", "BloodTheme")
local Tab = Window:NewTab("AUTO")
local Section = Tab:NewSection("RAID")
-- Toggles the script on or off. This is now controlled by the UI toggle.
local isEnabled = false

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remotes = ReplicatedStorage:WaitForChild("Remotes")
local VIM = game:GetService("VirtualInputManager")

-- The function to handle dashing
local function doDash()
	VIM:SendKeyEvent(true, "Q", false, game)
	wait(0.1)
	VIM:SendKeyEvent(false, "Q", false, game)
end

-- ==========================================================
--  YOU MUST EDIT THIS FUNCTION
--  What happens in your game when a raid is successfully joined?
--  Does your character teleport? Does a new UI pop up?
--  You must add the code that checks for that here.
-- ==========================================================
local function isJoinedRaid()
    -- **REPLACE THIS CODE** with your actual check.
    -- EXAMPLE 1: Check if the character has teleported to a specific location
    -- if game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y > 100 then
    --     return true
    -- end

    -- EXAMPLE 2: Check if a specific UI element is visible
    -- if game.Players.LocalPlayer.PlayerGui:FindFirstChild("RaidUI").Frame.Visible == true then
    --     return true
    -- end

    -- The following 'wait' is a default delay. You can adjust it.
    wait(2)
    return false -- By default, it returns false if the check fails after the wait.
end
-- ==========================================================

-- The toggle logic, which will be called by the UI.
Section:NewToggle("autoraid", "autofinishraid", function(state)
    isEnabled = state
    if state then
        print("✅ Raid script enabled.")
        -- Start the raid routine in a new thread so it doesn't block the UI
        spawn(function()
            -- A variable to store the ID of the raid we joined
            local joinedRaidId = nil
            
            -- The sequential raid actions. The script will jump from one to the next
            -- if the previous one fails, and will stop once a raid is confirmed.
            repeat
                if not isEnabled then break end
                
                -- Attempt: Raid ID 930001
                print("Attempting to join raid with ID: 930001")
                local args = {930001}
                Remotes:WaitForChild("CreateRaidTeam"):InvokeServer(unpack(args))
                Remotes:WaitForChild("StartChallengeRaidMap"):FireServer()
                if isJoinedRaid() then
                    joinedRaidId = 930001
                    break
                end
                print("❌ Failed. Trying next raid...")
                
                if not isEnabled then break end
                
                -- Attempt: Raid ID 930011
                print("Attempting to join raid with ID: 930011")
                local args = {930011}
                Remotes:WaitForChild("CreateRaidTeam"):InvokeServer(unpack(args))
                Remotes:WaitForChild("StartChallengeRaidMap"):FireServer()
                if isJoinedRaid() then
                    joinedRaidId = 930011
                    break
                end
                print("❌ Failed. Trying next raid...")
                
                if not isEnabled then break end
                
                -- Attempt: Raid ID 930021
                print("Attempting to join raid with ID: 930021")
                local args = {930021}
                Remotes:WaitForChild("CreateRaidTeam"):InvokeServer(unpack(args))
                Remotes:WaitForChild("StartChallengeRaidMap"):FireServer()
                if isJoinedRaid() then
                    joinedRaidId = 930021
                    break
                end
                print("❌ Failed. Trying next raid...")

                if not isEnabled then break end

                -- Attempt: Raid ID 930031
                print("Attempting to join raid with ID: 930031")
                local args = {930031}
                Remotes:WaitForChild("CreateRaidTeam"):InvokeServer(unpack(args))
                Remotes:WaitForChild("StartChallengeRaidMap"):FireServer()
                if isJoinedRaid() then
                    joinedRaidId = 930031
                    break
                end
                print("❌ Failed. Trying next raid...")

                if not isEnabled then break end

                -- Attempt: Raid ID 930041
                print("Attempting to join raid with ID: 930041")
                local args = {930041}
                Remotes:WaitForChild("CreateRaidTeam"):InvokeServer(unpack(args))
                Remotes:WaitForChild("StartChallengeRaidMap"):FireServer()
                if isJoinedRaid() then
                    joinedRaidId = 930041
                    break
                end
                print("❌ Failed. Trying next raid...")

                if not isEnabled then break end

                -- Attempt: Raid ID 930051
                print("Attempting to join raid with ID: 930051")
                local args = {930051}
                Remotes:WaitForChild("CreateRaidTeam"):InvokeServer(unpack(args))
                Remotes:WaitForChild("StartChallengeRaidMap"):FireServer()
                if isJoinedRaid() then
                    joinedRaidId = 930051
                    break
                end
                print("❌ Failed. Trying next raid...")

                if not isEnabled then break end

                -- Attempt: Raid ID 930002
                print("Attempting to join raid with ID: 930002")
                local args = {930002}
                Remotes:WaitForChild("CreateRaidTeam"):InvokeServer(unpack(args))
                Remotes:WaitForChild("StartChallengeRaidMap"):FireServer()
                if isJoinedRaid() then
                    joinedRaidId = 930002
                    break
                end
                print("❌ Failed. Trying next raid...")

                if not isEnabled then break end

                -- Attempt: Raid ID 930012
                print("Attempting to join raid with ID: 930012")
                local args = {930012}
                Remotes:WaitForChild("CreateRaidTeam"):InvokeServer(unpack(args))
                Remotes:WaitForChild("StartChallengeRaidMap"):FireServer()
                if isJoinedRaid() then
                    joinedRaidId = 930012
                    break
                end
                print("❌ Failed. Trying next raid...")

                if not isEnabled then break end

                -- Attempt: Raid ID 930022
                print("Attempting to join raid with ID: 930022")
                local args = {930022}
                Remotes:WaitForChild("CreateRaidTeam"):InvokeServer(unpack(args))
                Remotes:WaitForChild("StartChallengeRaidMap"):FireServer()
                if isJoinedRaid() then
                    joinedRaidId = 930022
                    break
                end
                print("❌ Failed. Trying next raid...")

                if not isEnabled then break end

                -- Attempt: Raid ID 930032
                print("Attempting to join raid with ID: 930032")
                local args = {930032}
                Remotes:WaitForChild("CreateRaidTeam"):InvokeServer(unpack(args))
                Remotes:WaitForChild("StartChallengeRaidMap"):FireServer()
                if isJoinedRaid() then
                    joinedRaidId = 930032
                    break
                end
                print("❌ Failed. Trying next raid...")

                if not isEnabled then break end

                -- Attempt: Raid ID 930042
                print("Attempting to join raid with ID: 930042")
                local args = {930042}
                Remotes:WaitForChild("CreateRaidTeam"):InvokeServer(unpack(args))
                Remotes:WaitForChild("StartChallengeRaidMap"):FireServer()
                if isJoinedRaid() then
                    joinedRaidId = 930042
                    break
                end
                print("❌ Failed. Trying next raid...")

                if not isEnabled then break end

                -- Attempt: Raid ID 930052
                print("Attempting to join raid with ID: 930052")
                local args = {930052}
                Remotes:WaitForChild("CreateRaidTeam"):InvokeServer(unpack(args))
                Remotes:WaitForChild("StartChallengeRaidMap"):FireServer()
                if isJoinedRaid() then
                    joinedRaidId = 930052
                    break
                end
                print("❌ Failed. Trying next raid...")
                
                if not isEnabled then break end
                
                -- Attempt: Raid ID 930003
                print("Attempting to join raid with ID: 930003")
                local args = {930003}
                Remotes:WaitForChild("CreateRaidTeam"):InvokeServer(unpack(args))
                Remotes:WaitForChild("StartChallengeRaidMap"):FireServer()
                if isJoinedRaid() then
                    joinedRaidId = 930003
                    break
                end
                print("❌ Failed. Trying next raid...")

                if not isEnabled then break end

                -- Attempt: Raid ID 930013
                print("Attempting to join raid with ID: 930013")
                local args = {930013}
                Remotes:WaitForChild("CreateRaidTeam"):InvokeServer(unpack(args))
                Remotes:WaitForChild("StartChallengeRaidMap"):FireServer()
                if isJoinedRaid() then
                    joinedRaidId = 930013
                    break
                end
                print("❌ Failed. Trying next raid...")
                
                if not isEnabled then break end
                
                -- Attempt: Raid ID 930023
                print("Attempting to join raid with ID: 930023")
                local args = {930023}
                Remotes:WaitForChild("CreateRaidTeam"):InvokeServer(unpack(args))
                Remotes:WaitForChild("StartChallengeRaidMap"):FireServer()
                if isJoinedRaid() then
                    joinedRaidId = 930023
                    break
                end
                print("❌ Failed. Trying next raid...")
                
                if not isEnabled then break end
                
                -- Attempt: Raid ID 930033
                print("Attempting to join raid with ID: 930033")
                local args = {930033}
                Remotes:WaitForChild("CreateRaidTeam"):InvokeServer(unpack(args))
                Remotes:WaitForChild("StartChallengeRaidMap"):FireServer()
                if isJoinedRaid() then
                    joinedRaidId = 930033
                    break
                end
                print("❌ Failed. Trying next raid...")
                
                if not isEnabled then break end
                
                -- Attempt: Raid ID 930043
                print("Attempting to join raid with ID: 930043")
                local args = {930043}
                Remotes:WaitForChild("CreateRaidTeam"):InvokeServer(unpack(args))
                Remotes:WaitForChild("StartChallengeRaidMap"):FireServer()
                if isJoinedRaid() then
                    joinedRaidId = 930043
                    break
                end
                print("❌ Failed. Trying next raid...")
                
                if not isEnabled then break end
                
                -- Attempt: Raid ID 930005
                print("Attempting to join raid with ID: 930005")
                local args = {930005}
                Remotes:WaitForChild("CreateRaidTeam"):InvokeServer(unpack(args))
                Remotes:WaitForChild("StartChallengeRaidMap"):FireServer()
                if isJoinedRaid() then
                    joinedRaidId = 930005
                    break
                end
                print("❌ Failed. Trying next raid...")
                
                if not isEnabled then break end
                
                -- Attempt: Raid ID 930015
                print("Attempting to join raid with ID: 930015")
                local args = {930015}
                Remotes:WaitForChild("CreateRaidTeam"):InvokeServer(unpack(args))
                Remotes:WaitForChild("StartChallengeRaidMap"):FireServer()
                if isJoinedRaid() then
                    joinedRaidId = 930015
                    break
                end
                print("❌ Failed. Trying next raid...")
                
                if not isEnabled then break end
                
                -- Attempt: Raid ID 930025
                print("Attempting to join raid with ID: 930025")
                local args = {930025}
                Remotes:WaitForChild("CreateRaidTeam"):InvokeServer(unpack(args))
                Remotes:WaitForChild("StartChallengeRaidMap"):FireServer()
                if isJoinedRaid() then
                    joinedRaidId = 930025
                    break
                end
                print("❌ Failed. Trying next raid...")
                
                if not isEnabled then break end
                
                -- Attempt: Raid ID 930035
                print("Attempting to join raid with ID: 930035")
                local args = {930035}
                Remotes:WaitForChild("CreateRaidTeam"):InvokeServer(unpack(args))
                Remotes:WaitForChild("StartChallengeRaidMap"):FireServer()
                if isJoinedRaid() then
                    joinedRaidId = 930035
                    break
                end
                print("❌ Failed. Trying next raid...")

                if not isEnabled then break end

                -- Attempt: Raid ID 930045
                print("Attempting to join raid with ID: 930045")
                local args = {930045}
                Remotes:WaitForChild("CreateRaidTeam"):InvokeServer(unpack(args))
                Remotes:WaitForChild("StartChallengeRaidMap"):FireServer()
                if isJoinedRaid() then
                    joinedRaidId = 930045
                    break
                end
                print("❌ Failed. Trying next raid...")

                if not isEnabled then break end

                -- Attempt: Raid ID 930006
                print("Attempting to join raid with ID: 930006")
                local args = {930006}
                Remotes:WaitForChild("CreateRaidTeam"):InvokeServer(unpack(args))
                Remotes:WaitForChild("StartChallengeRaidMap"):FireServer()
                if isJoinedRaid() then
                    joinedRaidId = 930006
                    break
                end
                print("❌ Failed. Trying next raid...")
                
                if not isEnabled then break end
                
                -- Attempt: Raid ID 930016
                print("Attempting to join raid with ID: 930016")
                local args = {930016}
                Remotes:WaitForChild("CreateRaidTeam"):InvokeServer(unpack(args))
                Remotes:WaitForChild("StartChallengeRaidMap"):FireServer()
                if isJoinedRaid() then
                    joinedRaidId = 930016
                    break
                end
                print("❌ Failed. Trying next raid...")

                if not isEnabled then break end

                -- Attempt: Raid ID 930026
                print("Attempting to join raid with ID: 930026")
                local args = {930026}
                Remotes:WaitForChild("CreateRaidTeam"):InvokeServer(unpack(args))
                Remotes:WaitForChild("StartChallengeRaidMap"):FireServer()
                if isJoinedRaid() then
                    joinedRaidId = 930026
                    break
                end
                print("❌ Failed. Trying next raid...")
                
                if not isEnabled then break end
                
                -- Attempt: Raid ID 930036
                print("Attempting to join raid with ID: 930036")
                local args = {930036}
                Remotes:WaitForChild("CreateRaidTeam"):InvokeServer(unpack(args))
                Remotes:WaitForChild("StartChallengeRaidMap"):FireServer()
                if isJoinedRaid() then
                    joinedRaidId = 930036
                    break
                end
                print("❌ Failed. Trying next raid...")
                
                if not isEnabled then break end
                
                -- Attempt: Raid ID 930046
                print("Attempting to join raid with ID: 930046")
                local args = {930046}
                Remotes:WaitForChild("CreateRaidTeam"):InvokeServer(unpack(args))
                Remotes:WaitForChild("StartChallengeRaidMap"):FireServer()
                if isJoinedRaid() then
                    joinedRaidId = 930046
                    break
                end
                print("❌ Failed. Trying next raid...")
                
                if not isEnabled then break end
                
                -- Attempt: Raid ID 930008
                print("Attempting to join raid with ID: 930008")
                local args = {930008}
                Remotes:WaitForChild("CreateRaidTeam"):InvokeServer(unpack(args))
                Remotes:WaitForChild("StartChallengeRaidMap"):FireServer()
                if isJoinedRaid() then
                    joinedRaidId = 930008
                    break
                end
                print("❌ Failed. Trying next raid...")
                
                if not isEnabled then break end
                
                -- Attempt: Raid ID 930018
                print("Attempting to join raid with ID: 930018")
                local args = {930018}
                Remotes:WaitForChild("CreateRaidTeam"):InvokeServer(unpack(args))
                Remotes:WaitForChild("StartChallengeRaidMap"):FireServer()
                if isJoinedRaid() then
                    joinedRaidId = 930018
                    break
                end
                print("❌ Failed. Trying next raid...")
                
                if not isEnabled then break end
                
                -- Attempt: Raid ID 930028
                print("Attempting to join raid with ID: 930028")
                local args = {930028}
                Remotes:WaitForChild("CreateRaidTeam"):InvokeServer(unpack(args))
                Remotes:WaitForChild("StartChallengeRaidMap"):FireServer()
                if isJoinedRaid() then
                    joinedRaidId = 930028
                    break
                end
                print("❌ Failed. Trying next raid...")
                
                if not isEnabled then break end
                
                -- Attempt: Raid ID 930038
                print("Attempting to join raid with ID: 930038")
                local args = {930038}
                Remotes:WaitForChild("CreateRaidTeam"):InvokeServer(unpack(args))
                Remotes:WaitForChild("StartChallengeRaidMap"):FireServer()
                if isJoinedRaid() then
                    joinedRaidId = 930038
                    break
                end
                print("❌ Failed. Trying next raid...")
                
                if not isEnabled then break end
                
                -- Attempt: Raid ID 930048
                print("Attempting to join raid with ID: 930048")
                local args = {930048}
                Remotes:WaitForChild("CreateRaidTeam"):InvokeServer(unpack(args))
                Remotes:WaitForChild("StartChallengeRaidMap"):FireServer()
                if isJoinedRaid() then
                    joinedRaidId = 930048
                    break
                end
                print("❌ Failed. Trying next raid...")
                
            until joinedRaidId ~= nil
            
            -- Now, if a raid was joined, start the 5-minute loop
            if joinedRaidId then
                print("✅ Successfully joined raid with ID: " .. joinedRaidId)
                print("Starting the raid routine...")
                local startTime = tick()
                
                -- Run the routine for 5 minutes (300 seconds)
                while tick() - startTime < 300 and isEnabled do
                    local args = {joinedRaidId}
                    Remotes:WaitForChild("CreateRaidTeam"):InvokeServer(unpack(args))
                    Remotes:WaitForChild("StartChallengeRaidMap"):FireServer()
                    wait(6)
                    doDash()
                    wait(30)
                    wait(3)
                    doDash()
                end
                if isEnabled then
                    print("✅ Script ended after 5 minutes.")
                else
                    print("❌ Script was disabled.")
                end
            else
                print("❌ No available raid IDs were found in the list.")
            end
        end)
    else
        print("❌ Raid script disabled.")
    end
end)

-- Toggles the script on or off. This is now controlled by the UI toggle.
local isEnabled = false

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local VIM = game:GetService("VirtualInputManager")

-- The function to handle the dash action
local function doDash()
    -- Simulate a key press for the 'Q' key
    VIM:SendKeyEvent(true, "Q", false, game)
    wait(0.1) -- Wait briefly
    VIM:SendKeyEvent(false, "Q", false, game)
end

-- The toggle logic, which will be called by the UI.
Section:NewToggle("autodash", "autodashforraid", function(state)
    isEnabled = state
    if state then
        print("✅ Script enabled. Monitoring character position for changes.")
        -- Start the routine in a new thread so it doesn't block the UI
        spawn(function()
            -- Wait for the character and its root part to load to prevent errors
            local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
            local humanoidRootPart = character:WaitForChild("HumanoidRootPart", 10)

            -- Check if the part loaded successfully
            if not humanoidRootPart then
                print("❌ Could not find HumanoidRootPart. Script cannot run.")
                return
            end

            -- Get the player's initial position
            local initialPos = humanoidRootPart.Position

            -- Main loop to continuously check for a position change while the toggle is on
            while isEnabled do
                local currentPos = humanoidRootPart.Position
                
                -- Check if the player has moved a significant distance (more than 5 units)
                if (currentPos - initialPos).Magnitude > 5 then
                    print("✅ Position change detected! Waiting 6 seconds before dashing...")
                    wait(6) -- Wait for 6 seconds as requested
                    doDash() -- Perform the dash action
                    
                    print("✅ Dash completed. Resuming position monitoring.")
                    
                    -- Reset the initial position to the current position to prepare for the next change
                    initialPos = currentPos
                end
                
                -- Wait a short time before checking the position again to avoid performance issues
                wait(1)
            end
            print("❌ Script was disabled.")
        end)
    else
        print("❌ Script disabled.")
    end
end)
