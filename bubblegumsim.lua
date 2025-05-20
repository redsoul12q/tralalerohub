local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "tralaleroHub | BGSI",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "tralaleroHub",
   LoadingSubtitle = "by utinder",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
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

local MainTab = Window:CreateTab("Main", nil) -- Title, Image
local TpTab = Window:CreateTab("Teleports", nil) -- Title, Image
local ShopTab = Window:CreateTab("Shop", nil) -- Title, Image
local MiscTab = Window:CreateTab("Misc", nil) -- Title, Image

local Section = MiscTab:CreateSection("Links")

local Button = MiscTab:CreateButton({
   Name = "Copy Official Site Link",
   Callback = function()
      setclipboard("https://redsoul12q.github.io/tralalerohubv2/")
      Rayfield:Notify({
         Title = "Copied",
         Content = "Successfully copied",
         Duration = 3,
         Image = "check",
      })
   end,
})

local Paragraph = MainTab:CreateParagraph({Title = "Thanks for using tralaleroHub", Content = "Please support the script by visiting some of the links in misc"})

local Section = MainTab:CreateSection("Exploits")
local Slider = MainTab:CreateSlider({
   Name = "Jump Power",
   Range = {1, 1000000},
   Increment = 1000,
   Suffix = "Jump Power",
   CurrentValue = 50,
   Flag = "JumpPowerSlider", -- A flag that can be used to call the slider
   Callback = function(Value)
      game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
   end,
})
local Section = MainTab:CreateSection("Farm")

local Toggle = MainTab:CreateToggle({
   Name = "Auto Bubble",
   CurrentValue = false,
   Flag = "AutoBubbleToggle", -- A flag that can be used to call the toggle
   Callback = function(Value)
      _G.autobubble = Value
      if _G.autobubble then
         while _G.autobubble do 
            wait(0.001)
            local args = {
               "BlowBubble"
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("Framework"):WaitForChild("Network"):WaitForChild("Remote"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
         end
      end
   end,
})

local Toggle = MainTab:CreateToggle({
   Name = "Auto Sell",
   CurrentValue = false,
   Flag = "AutoSellToggle", -- A flag that can be used to call the toggle
   Callback = function(Value)
      _G.autosell = Value
      if _G.autosell then
         local TweenService = game:GetService("TweenService")
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- Target position as a Vector3
local targetPosition = Vector3.new(78, 9, -113)

-- Tween settings
local tweenInfo = TweenInfo.new(
    5, -- Time in seconds
    Enum.EasingStyle.Linear,
    Enum.EasingDirection.Out
)

-- Goal: move to the target position
local goal = {CFrame = CFrame.new(targetPosition)}

-- Create and play the tween
local tween = TweenService:Create(humanoidRootPart, tweenInfo, goal)
tween:Play()
         while _G.autosell do 
            wait(0.001)
            local args = {
               "SellBubble"
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("Framework"):WaitForChild("Network"):WaitForChild("Remote"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
         end
      end
   end,
})

local Section = MainTab:CreateSection("Claim")

local Button = MainTab:CreateButton({

   Name = "Claim Giant Chest",
   Callback = function()
         local TweenService = game:GetService("TweenService")
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- Target position as a Vector3
local targetPosition = Vector3.new(10, 428, 153)

-- Tween settings
local tweenInfo = TweenInfo.new(
    10, -- Time in seconds
    Enum.EasingStyle.Linear,
    Enum.EasingDirection.Out
)

-- Goal: move to the target position
local goal = {CFrame = CFrame.new(targetPosition)}

-- Create and play the tween
local tween = TweenService:Create(humanoidRootPart, tweenInfo, goal)
tween:Play()
wait(0.5)
      local args = {
	      "ClaimChest",
	      "Giant Chest"
      }
      game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("Framework"):WaitForChild("Network"):WaitForChild("Remote"):WaitForChild("RemoteEvent"):FireServer(unpack(args))

   end,
})

local Button = MainTab:CreateButton({

   Name = "Claim Void Chest",
   Callback = function()
         local TweenService = game:GetService("TweenService")
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- Target position as a Vector3
local targetPosition = Vector3.new(73, 10149, 54)

-- Tween settings
local tweenInfo = TweenInfo.new(
    10, -- Time in seconds
    Enum.EasingStyle.Linear,
    Enum.EasingDirection.Out
)

-- Goal: move to the target position
local goal = {CFrame = CFrame.new(targetPosition)}

-- Create and play the tween
local tween = TweenService:Create(humanoidRootPart, tweenInfo, goal)
tween:Play()
wait(0.5)
      local args = {
	      "ClaimChest",
	      "Giant Chest"
      }
      game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("Framework"):WaitForChild("Network"):WaitForChild("Remote"):WaitForChild("RemoteEvent"):FireServer(unpack(args))

   end,
})


local Button = TpTab:CreateButton({
   Name = "Unlock All Islands",
   Callback = function()
      local TweenService = game:GetService("TweenService")
      local player = game.Players.LocalPlayer
      local character = player.Character or player.CharacterAdded:Wait()
      local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- Target position as a Vector3
local targetPosition = Vector3.new(36, 15972, 42)

-- Tween settings
local tweenInfo = TweenInfo.new(
    10, -- Time in seconds
    Enum.EasingStyle.Linear,
    Enum.EasingDirection.Out
)

-- Goal: move to the target position
local goal = {CFrame = CFrame.new(targetPosition)}

-- Create and play the tween
local tween = TweenService:Create(humanoidRootPart, tweenInfo, goal)
tween:Play()
   end,
})

local Paragraph = TpTab:CreateParagraph({Title = "Notice", Content = "Must have all the islands unlocked to teleport"})

local Button = TpTab:CreateButton({
   Name = "Teleport to Home",
   Callback = function()
local Event = game:GetService("ReplicatedStorage").Shared.Framework.Network.Remote.RemoteEvent
Event:FireServer(table.unpack({
    "Teleport",
    "Workspace.Worlds.The Overworld.PortalSpawn"
}))
   end,
})

local Button = TpTab:CreateButton({
   Name = "Teleport to Floating Island",
   Callback = function()
local Event = game:GetService("ReplicatedStorage").Shared.Framework.Network.Remote.RemoteEvent
Event:FireServer(table.unpack({
    "Teleport",
    "Workspace.Worlds.The Overworld.Islands.Floating Island.Island.Portal.Spawn"
}))
   end,
})

local Button = TpTab:CreateButton({
   Name = "Teleport to Outer Space",
   Callback = function()
local Event = game:GetService("ReplicatedStorage").Shared.Framework.Network.Remote.RemoteEvent
Event:FireServer(table.unpack({
    "Teleport",
    "Workspace.Worlds.The Overworld.Islands.Outer Space.Island.Portal.Spawn"
}))
   end,
})

local Button = TpTab:CreateButton({
   Name = "Teleport to Twilight",
   Callback = function()
local Event = game:GetService("ReplicatedStorage").Shared.Framework.Network.Remote.RemoteEvent
Event:FireServer(table.unpack({
    "Teleport",
    "Workspace.Worlds.The Overworld.Islands.Twilight.Island.Portal.Spawn"
}))
   end,
})

local Button = TpTab:CreateButton({
   Name = "Teleport to The Void",
   Callback = function()
local Event = game:GetService("ReplicatedStorage").Shared.Framework.Network.Remote.RemoteEvent
Event:FireServer(table.unpack({
    "Teleport",
    "Workspace.Worlds.The Overworld.Islands.The Void.Island.Portal.Spawn"
}))
   end,
})

local Button = TpTab:CreateButton({
   Name = "Teleport to Zen",
   Callback = function()
local Event = game:GetService("ReplicatedStorage").Shared.Framework.Network.Remote.RemoteEvent
Event:FireServer(table.unpack({
    "Teleport",
    "Workspace.Worlds.The Overworld.Islands.Zen.Island.Portal.Spawn"
}))
   end,
})

local Section = ShopTab:CreateSection("Flavors")

local Button = ShopTab:CreateButton({
   Name = "Purchase Blueberry",
   Callback = function()
      local args = {
	   "GumShopPurchase",
	   "Blueberry"
   }
   game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("Framework"):WaitForChild("Network"):WaitForChild("Remote"):WaitForChild("RemoteEvent"):FireServer(unpack(args))

   Rayfield:Notify({
   Title = "Purchased",
   Content = "Purchased Blueberry",
   Duration = nil,
   Image = "check",
})
   end,
}) 



