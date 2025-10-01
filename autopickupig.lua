-- Configuration
-- The range in studs where the script will detect items for collection.
local MAX_PICKUP_DISTANCE = 500 

-- Services and References
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Define the exact remote function, which is now confirmed to be InvokeServer.
local CollectFunction = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("CollectItem")

-- Function to check if a part is collectible
local function isCollectible(part)
    -- Check 1: Must be a BasePart, not anchored, and not part of the player character.
    if not part:IsA("BasePart") or part.Anchored or part.Parent == LocalPlayer.Character then
        return false
    end
    
    -- Check 2: Filter out large map parts. Assume the unique ID is the Name and is a long string.
    -- This filter checks if the name looks like a UUID (long, contains hyphens).
    if not part.Name:match("[-]") then
        return false
    end
    
    return true -- If it's a part and its name has a hyphen (UUID), we treat it as collectible.
end

-- Main Pickup Function
local function runPickup()
    local character = LocalPlayer.Character
    local hrp = character and character:FindFirstChild("HumanoidRootPart")
    
    if not hrp then return end
    
    local playerPosition = hrp.Position
    
    -- Loop through all items in the world
    for _, object in ipairs(Workspace:GetDescendants()) do
        
        if isCollectible(object) then
            local distance = (playerPosition - object.Position).Magnitude
            
            if distance < MAX_PICKUP_DISTANCE then
                
                -- CRITICAL STEP 1: Invoke the server using the item's Name (the UUID string).
                -- The server expects this string to process the collection.
                local success, result = pcall(function()
                    return CollectFunction:InvokeServer(object.Name)
                end)
                
                if success then
                    -- CRITICAL STEP 2: Destroy the item locally upon successful call.
                    -- This prevents lag and re-runs on the same item.
                    object:Destroy()
                end
            end
        end
    end
end

-- Run the pickup function rapidly every frame for the smoothest effect
RunService.Heartbeat:Connect(runPickup)
