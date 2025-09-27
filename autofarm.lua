local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("ASH X HUB", "BloodTheme")
local Tab = Window:NewTab("autofarm")
local Section = Tab:NewSection("af")
-- This script provides a toggleable auto-farm that finds, teleports to, and attacks the nearest enemy.
local isEnabled = false

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remotes = ReplicatedStorage:WaitForChild("Remotes")
local VIM = game:GetService("VirtualInputManager")

-- The function to find the nearest enemy
local function findNearestEnemy()
    local nearestEnemy = nil
    local shortestDistance = math.huge
    
    local enemysFolder = game.Workspace:FindFirstChild("Enemys")
    if not enemysFolder then
        print("❌ Could not find 'Enemys' folder in Workspace.")
        return nil
    end

    -- Get a list of all potential targets in the enemys folder
    for _, child in pairs(enemysFolder:GetChildren()) do
        local humanoid = child:FindFirstChild("Humanoid")
        local humanoidRootPart = child:FindFirstChild("HumanoidRootPart")
        
        if humanoid and humanoidRootPart and humanoid.Health > 0 then
            -- Check if the target is an enemy and not the player's own character
            local character = humanoid.Parent
            local isPlayer = Players:GetPlayerFromCharacter(character)
            if not isPlayer and character ~= LocalPlayer.Character then
                local distance = (humanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                if distance < shortestDistance then
                    shortestDistance = distance
                    nearestEnemy = child
                end
            end
        end
    end

    return nearestEnemy
end

-- The function to handle the dash action
local function doDash()
    VIM:SendKeyEvent(true, "Q", false, game)
    VIM:SendKeyEvent(false, "Q", false, game)
end

-- The function to handle the attack action
local function doAttack()
    local args = {
        {}
    }
    Remotes:WaitForChild("PlayerClickAttackSkill"):FireServer(unpack(args))
end

-- The toggle logic, which will be called by the UI.
Section:NewToggle("Auto Farm Nearest Enemy", "Continuously farms the nearest enemy.", function(state)
    isEnabled = state
    if state then
        print("✅ Auto Farm enabled. Searching for the nearest enemy...")
        -- Start the routine in a new thread so it's a non-blocking script
        spawn(function()
            -- Main loop to continuously farm while the toggle is on
            while isEnabled do
                local nearestEnemy = findNearestEnemy()
                if nearestEnemy and nearestEnemy.Humanoid and nearestEnemy.HumanoidRootPart then
                    print("🎯 Found nearest enemy: " .. nearestEnemy.Name .. ". Attacking!")
                    
                    -- Teleport to the enemy to ensure the attack hits
                    local myRootPart = LocalPlayer.Character.HumanoidRootPart
                    local enemyPos = nearestEnemy.HumanoidRootPart.Position
                    local direction = (enemyPos - myRootPart.Position).unit
                    LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(enemyPos - direction * 5)
                    
                    -- Press the 'Q' key right after teleporting
                    doDash()
                    
                    -- Continuously attack this enemy until it is defeated
                    while isEnabled and nearestEnemy and nearestEnemy.Parent do
                        doAttack()
                        task.wait() -- Small delay between attacks
                    end
                else
                    print("❌ No enemies found. Waiting...")
                    task.wait(1) -- Wait a bit longer if no enemies are found
                end
            end
            print("❌ Auto Farm was disabled.")
        end)
    else
        print("❌ Auto Farm disabled.")
    end
end)

-- This script combines an auto-farm loop with a toggle switch.
local isEnabled = false

-- Services and variables
local Players = game:GetService("Players")
local lplr = Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remotes = ReplicatedStorage:WaitForChild("Remotes")

-- Remote event for attacking
local PlayerClickAttackSkill = Remotes:WaitForChild("PlayerClickAttackSkill")

-- The function to find the nearest enemy
local function findNearestEnemy()
    local nearestEnemy = nil
    local shortestDistance = math.huge
    
    local enemysFolder = game.Workspace:FindFirstChild("Enemys")
    if not enemysFolder then
        return nil
    end

    -- Get a list of all potential targets
    for _, child in pairs(enemysFolder:GetChildren()) do
        local humanoid = child:FindFirstChild("Humanoid")
        local humanoidRootPart = child:FindFirstChild("HumanoidRootPart")
        
        if humanoid and humanoidRootPart and humanoid.Health > 0 then
            local character = humanoid.Parent
            local isPlayer = Players:GetPlayerFromCharacter(character)
            if not isPlayer and character ~= lplr.Character then
                local distance = (humanoidRootPart.Position - lplr.Character.HumanoidRootPart.Position).Magnitude
                if distance < shortestDistance then
                    shortestDistance = distance
                    nearestEnemy = child
                end
            end
        end
    end

    return nearestEnemy
end

local isFarming = false

-- This is the code for the UI toggle
Section:NewToggle("Autofarm Fast", "Turns on/off the autofarm.", function(state)
    isFarming = state
    if state then
        print("Autofarm is ON")
    else
        print("Autofarm is OFF")
    end
end)

-- The main script loop
while true do
    -- Only run the farming logic if the toggle is on
    if isFarming then
        -- Your existing autofarm code would go here
        -- ...
        local enemies = workspace.Enemys:GetChildren()
        for _, enemy in ipairs(enemies) do
            if enemy:IsA("Model") and enemy:FindFirstChild("Humanoid") and enemy.Humanoid.Health > 0 and enemy:FindFirstChild("HumanoidRootPart") then
                local teleportPosition = enemy.HumanoidRootPart.Position + (lplr.Character.HumanoidRootPart.Position - enemy.HumanoidRootPart.Position).Unit * 5
                lplr.Character.HumanoidRootPart.CFrame = CFrame.new(teleportPosition)
                task.wait(0.2)
                PlayerClickAttackSkill:FireServer(enemy)
                task.wait(0.1)
            end
        end
        task.wait(1)
    else
        -- Wait a moment to prevent the script from using too much power when the toggle is off
        task.wait(0.5)
    end
end
