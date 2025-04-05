game.StarterGui:SetCore("SendNotification", {Title="Script Loaded"; Text="Version Latest"; Duration=2;})

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "RbxMagic 2.0 Open Beta",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Loading",
   LoadingSubtitle = "by AimstarDev",
   Theme = "Dark Blue", -- Check https://docs.sirius.menu/rayfield/configuration/themes

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
      Title = "BetaKey",
      Subtitle = "Key System",
      Note = "Type A Beta Key !", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"BetaKey"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

Rayfield:Notify({
   Title = "BetaVersion",
   Content = "Load Success !",
   Duration = 10,
   Image = 4483362458,
})

local Tab = Window:CreateTab("ALL", 4483362458) -- Title, Image

local Section = Tab:CreateSection("Fov")

local Slider = Tab:CreateSlider({
   Name = "FovChanger",
   Range = {0, 120},
   Increment = 1,
   Suffix = "FovChange",
   CurrentValue = 80,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      game.Workspace.Camera.FieldOfView = (Value)
   end,
})

local Section2 = Tab:CreateSection("LocalPlayer")

local Button = Tab:CreateButton({
   Name = "AllCARS",
   Callback = function()
      for _, vehicle in
      { "Renault Master", "Volvo S60R", "Kia Ceed SW I", "Bmw e60", "Toyota Prius", "Bmw e39", "Ford Transit", "Audi A4" }
      do
      local args = {
          [1] = "BuyCar",
          [2] = vehicle,
      }
      
      game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("MainEvent"):FireServer(unpack(args))
      end
   end,
})

local Button = Tab:CreateButton({
   Name = "InfCash",
   Callback = function()
game.Players.LocalPlayer.leaderstats.Cash.Value = math.huge
   end,
})

local Button = Tab:CreateButton({
   Name = "DeleteAllSpeedCameras",
   Callback = function()
      game.Workspace.Other.SpeedCameras:Destroy()
   end,
})

local Button = Tab:CreateButton({
   Name = "FullBright",
   Callback = function()
      game.Lighting.Brightness.Value = 100
   end,
})
