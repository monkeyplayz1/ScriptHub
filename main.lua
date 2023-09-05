local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
    Name = "MonkeHub",
    LoadingTitle = "Welcome to MonkeHub",
    LoadingSubtitle = "by Monkeygamer14",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "Big Hub"
    },
    Discord = {
       Enabled = false,
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided",
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })


 local Tab = Window:CreateTab("Speed", 4483362458) -- Title, Image

 Rayfield:Notify({
    Title = "MonkeHub",
    Content = "Successfully Loaded.",
    Duration = 6.5,
    Image = 4483362458,
    Actions = { -- Notification Buttons
       Ignore = {
          Name = "Okay!",
          Callback = function()
          print("The user tapped Okay!")
       end
    },
 },
 })


 local Section = Tab:CreateSection("Universal scripts")

 local Slider = Tab:CreateSlider({
    Name = "Set speed",
    Range = {0, 250 },
    Increment = 1,
    Suffix = "Speed",
    CurrentValue = 10,
    Flag = "Slider1", -- A flag is the ide
    Callback = function(Value)
    game.Players.LocalPlayer.character.Humanoid.WalkSpeed = Value
    end,
 })
 
 local Slider = Tab:CreateSlider({
    Name = "Set speed",
    Range = {0, 250 },
    Increment = 1,
    Suffix = "Jumppower",
    CurrentValue = 10,
    Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
    game.Players.LocalPlayer.character.Humanoid.JumpPower = Value
    end,
 })

 local Button = Tab:CreateButton({
    Name = "Infinite Yield ",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end,
 })
 

 local Section = Tab:CreateSection("South London 2 ")

 local Button = Tab:CreateButton({
   Name = "Solar Hub for SL2",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/rip2point/Solar-Hub/main/Other%20Stuff/SOLARHUB", true))()
   end,
})
