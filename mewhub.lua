local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Mewing Simulator | KaLLoware",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Mewing Simulator",
   LoadingSubtitle = "KaLLoware",
   ShowText = "Hub", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K",

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,

   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil,
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true
   },

   KeySystem = false,
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})
local Tab = Window:CreateTab("Hub", "info")
local Label = Tab:CreateLabel("Choose language | Выберите язык")
local Divider = Tab:CreateDivider()
local Button = Tab:CreateButton({
   Name = "Русский",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Hujibuji/NFT-Battle-roblox-script/refs/heads/main/mewru.lua"))()
   end,
})
local Button = Tab:CreateButton({
   Name = "English",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Hujibuji/NFT-Battle-roblox-script/refs/heads/main/meweng.lua"))()
   end,
})
