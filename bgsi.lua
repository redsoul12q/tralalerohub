local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()        
print("tralaleroHub loaded!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! pls join my discord... wait i don't have one.")

            local Window = Rayfield:CreateWindow({
               Name = "tralaleroHub - Bubble Gum Simulator Infinity",
               Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
               LoadingTitle = "tralaleroHub",
               LoadingSubtitle = "by Utinder",
               Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes
            
               DisableRayfieldPrompts = false,
               DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
            
               ConfigurationSaving = {
                  Enabled = false,
                  FolderName = nil, -- Create a custom folder for your hub/game
                  FileName = "Big Hub"
               },
            
               Discord = {
                  Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
                  Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
                  RememberJoins = true -- Set this to false to make them join the discord every time they load it up
               },
            
               KeySystem = false, -- Set this to true to use our key system
               KeySettings = {
                  Title = "Untitled",
                  Subtitle = "Key System",
                  Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
                  FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                  SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                  GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                  Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
               }
            })
            local HomeTab = Window:CreateTab("Main", nil)
            local MainTab = Window:CreateTab("Home", "warehouse")
            local Section = MainTab:CreateSection("Main")
            local TeleportTab = Window:CreateTab("Teleport", "fast-forward") -- Title, Image
            local ShopTab = Window:CreateTab("Quick Shop", "shopping-cart") -- Title, Image
            local Section = ShopTab:CreateSection("Flavors")
            local MiscTab = Window:CreateTab("Misc", "settings") -- Title, Image
            
            getgenv().autofarmtoggle = false
            getgenv().autoselltoggle = false
            
    
            local Slider = MainTab:CreateSlider({
               Name = "Jump Power",
               Range = {0, 1000000},
               Increment = 1000,
               Suffix = "Power",
               CurrentValue = 50,
               Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
               Callback = function(Value)
               game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
               end,
            })
    
                    local Section = MainTab:CreateSection("Farm")
    
            
                    local Toggle = MainTab:CreateToggle({
               Name = "Auto Bubble",
               CurrentValue = getgenv().autofarmtoggle,
               Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
               Callback = function(Value)
                    getgenv().autofarmtoggle = value
            
                        if Value then
                            _G.auto = true
                             Rayfield:Notify({
                               Title = "Enabled",
                               Content = "Enabled Auto Bubble",
                               Duration = 3,
                               Image = "check",
                                })
                            while _G.auto do 
                                local ohString1 = "BlowBubble"
                                game:GetService("ReplicatedStorage").Shared.Framework.Network.Remote.Event:FireServer(ohString1)
                                wait(0.1)
                                
                            end
                        else 
                            _G.auto = false
                            Rayfield:Notify({
                               Title = "Disabled",
                               Content = "Disabled Auto Bubble",
                               Duration = 3,
                               Image = "x",
            })
                        end
               end,
             })
            
            local Toggle = MainTab:CreateToggle({
               Name = "Fast Sell",
               CurrentValue = getgenv().autoselltoggle,
               Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
               Callback = function(Value)
                        getgenv().autoselltoggle = Value
            
                        if Value then
                            Rayfield:Notify({
                               Title = "Enabled",
                               Content = "Enabled Fast Sell",
                               Duration = 3,
                               Image = "check",
                            })
                            _G.sell = true
                            while _G.sell do
                                local ohString1 = "SellBubble"
                                game:GetService("ReplicatedStorage").Shared.Framework.Network.Remote.Event:FireServer(ohString1)
                                wait(0.01)
                            end
                        else
                            Rayfield:Notify({
                               Title = "Disabled",
                               Content = "Disabled Fast Sell",
                               Duration = 3,
                               Image = "x",
                            })
                            _G.sell = false
                        end
               end,
            })
    
            local Button = MiscTab:CreateButton({
                Name = "Redeem all codes",
                Callback = function()
                local args = {
        [1] = "RedeemCode",
        [2] = "throwback"
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("Framework"):WaitForChild("Network"):WaitForChild("Remote"):WaitForChild("Function"):InvokeServer(unpack(args))
    
    local args = {
        [1] = "RedeemCode",
        [2] = "Easter"
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("Framework"):WaitForChild("Network"):WaitForChild("Remote"):WaitForChild("Function"):InvokeServer(unpack(args))
    
    local args = {
        [1] = "RedeemCode",
        [2] = "Release"
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("Framework"):WaitForChild("Network"):WaitForChild("Remote"):WaitForChild("Function"):InvokeServer(unpack(args))
                
    local args = {
        [1] = "RedeemCode",
        [2] = "Lucky"
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("Framework"):WaitForChild("Network"):WaitForChild("Remote"):WaitForChild("Function"):InvokeServer(unpack(args))
                end,
    })
    
    local Button = MiscTab:CreateButton({
       Name = "Enable Low Detail Mode",
       Callback = function()
    local args = {
        [1] = "SetSetting",
        [2] = "Low Detail Mode",
        [3] = true
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("Framework"):WaitForChild("Network"):WaitForChild("Remote"):WaitForChild("Event"):FireServer(unpack(args))
       end,
    })
    local Button = MiscTab:CreateButton({
       Name = "Enable High Detail Mode",
       Callback = function()
    local args = {
        [1] = "SetSetting",
        [2] = "Low Detail Mode",
        [3] = false
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("Framework"):WaitForChild("Network"):WaitForChild("Remote"):WaitForChild("Event"):FireServer(unpack(args))
       end,
    })
    
    local Button = TeleportTab:CreateButton({
       Name = "Teleport to Home",
       Callback = function()
        local args = {
        [1] = "Teleport",
        [2] = "Workspace.Worlds.The Overworld.PortalSpawn"
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("Framework"):WaitForChild("Network"):WaitForChild("Remote"):WaitForChild("Event"):FireServer(unpack(args))
        end,
    })
    
    local Button = TeleportTab:CreateButton({
       Name = "Teleport to Floating Island",
       Callback = function()
        local args = {
        [1] = "Teleport",
        [2] = "Workspace.Worlds.The Overworld.Islands.Floating Island.Island.Portal.Spawn"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("Framework"):WaitForChild("Network"):WaitForChild("Remote"):WaitForChild("Event"):FireServer(unpack(args))
       end,
    })
    
    local Button = TeleportTab:CreateButton({
       Name = "Teleport to Outer Space",
       Callback = function()
        local args = {
        [1] = "Teleport",
        [2] = "Workspace.Worlds.The Overworld.Islands.Outer Space.Island.Portal.Spawn"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("Framework"):WaitForChild("Network"):WaitForChild("Remote"):WaitForChild("Event"):FireServer(unpack(args))
       end,
    })
    
    
    local Button = TeleportTab:CreateButton({
       Name = "Teleport to Twilight",
       Callback = function()
        local args = {
        [1] = "Teleport",
        [2] = "Workspace.Worlds.The Overworld.Islands.Twilight.Island.Portal.Spawn"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("Framework"):WaitForChild("Network"):WaitForChild("Remote"):WaitForChild("Event"):FireServer(unpack(args))
       end,
    })
    
    local Button = TeleportTab:CreateButton({
       Name = "Teleport to The Void",
       Callback = function()
        local args = {
        [1] = "Teleport",
        [2] = "Workspace.Worlds.The Overworld.Islands.The Void.Island.Portal.Spawn"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("Framework"):WaitForChild("Network"):WaitForChild("Remote"):WaitForChild("Event"):FireServer(unpack(args))
       end,
    })
    
    local Button = TeleportTab:CreateButton({
       Name = "Teleport to Zen",
       Callback = function()
        local args = {
        [1] = "Teleport",
        [2] = "Workspace.Worlds.The Overworld.Islands.Zen.Island.Portal.Spawn"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("Framework"):WaitForChild("Network"):WaitForChild("Remote"):WaitForChild("Event"):FireServer(unpack(args))
          end,
    })
    local Button = MiscTab:CreateButton({
   Name = "Spin Wheel",
   Callback = function()
local args = {
    [1] = "WheelSpin"
}

game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("Framework"):WaitForChild("Network"):WaitForChild("Remote"):WaitForChild("Function"):InvokeServer(unpack(args))

   end,
})

local Section = MainTab:CreateSection("Chest")

local Dropdown = MainTab:CreateDropdown({
   Name = "Select chest",
   Options = {"Giant Chest", "Royal Chest", "Rift Chest"},
   CurrentOption = {"Giant Chest"},
   MultipleOptions = false,
   Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Options)
        selectedChest = Options
   end,
})

local Toggle = MainTab:CreateToggle({
   Name = "Auto Claim Chest",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    local args = {
        [1] = "ClaimChest",
        [2] = selectedChest
    }
if Value then 
    Rayfield:Notify({
   Title = "Enabled",
   Content = "Enabled Auto Claim Chest | DISCLAIMER: This might not work",
   Duration = 3,
   Image = "check",
})
        else
                
Rayfield:Notify({
Title = "Disabled",
Content = "Disabled Auto Claim Chest",
Duration = 3,
Image = "x",
})
                    

        end
        end,
})

local Paragraph = MiscTab:CreateParagraph({Title = "thanks!", Content = "This script is in beta, I am just working on it, I have only worked on it for a few days so expect some bugs and stuff to not work. Thanks for using!"})
local Paragraph = TeleportTab:CreateParagraph({Title = "Notice", Content = "You must have the islands unlocked. You can unlock them by going to the main tab and scrolling down and pressing unlock all islands."})

local section = MainTab:CreateSection("Unlock")
local button = MainTab:CreateButton({
   Name = "Auto Unlock All Islands",
   Callback = function()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local targetPosition = Vector3.new(-16, 423, 143) -- Replace with your desired coordinates
humanoidRootPart.CFrame = CFrame.new(targetPosition)
wait(0.1)
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local targetPosition = Vector3.new(42, 2663, -6) -- Replace with your desired coordinates
humanoidRootPart.CFrame = CFrame.new(targetPosition)
wait(0.1)
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local targetPosition = Vector3.new(-78, 6882, 88) -- Replace with your desired coordinates
humanoidRootPart.CFrame = CFrame.new(targetPosition)
wait(0.1)
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local targetPosition = Vector3.new(16, 10146, 152) -- Replace with your desired coordinates
humanoidRootPart.CFrame = CFrame.new(targetPosition)
wait(0.1)
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local targetPosition = Vector3.new(36, 15972, 42) -- Replace with your desired coordinates
humanoidRootPart.CFrame = CFrame.new(targetPosition)
wait(0.1)
   Rayfield:Notify({
      Title = "Unlocked",
      Content = "Successfully unlocked all islands",
      Duration = 3,
      Image = "check",
      })
   end,
})
local paragraph = HomeTab:CreateParagraph({Title = "Stuff", Content = "Thanks for using tralaleroHub. If you wanna see some links look below."})
local button = HomeTab:CreateButton({
   Name = "Copy official tralaleroHub site link",
   Callback = function()
    setclipboard("https://sites.google.com/view/trallalerohub/home")
    Rayfield:Notify({
      Title = "Copied",
      Content = "Copied site link",
      Duration = 3,
      Image = "check",
      })
   end,
})
    


    

    
    
    
    
    
    
    
    
    
    
    
    
    
