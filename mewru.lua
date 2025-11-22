_G.Click = true
_G.Mew = true
_G.Pushup = true
_G.Battle = true
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Mewing Simulator | KaLLoware",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Mewing Simulator",
   LoadingSubtitle = "от KaLLoware",
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
local TabInfo = Window:CreateTab("Инфо", "info")
local Section = TabInfo:CreateSection("Разработчики")
local Label = TabInfo:CreateLabel("Кодер: KaLLoware")
local Label = TabInfo:CreateLabel("Тестер: KaLLoware")
local Divider = TabInfo:CreateDivider()
local Section = TabInfo:CreateSection("Протестировано на")
local Label = TabInfo:CreateLabel("Seliware (ПК)")
local TabFarm = Window:CreateTab("Автофарм", "dollar-sign")
local Section = TabFarm:CreateSection("Автокликер")
local Button = TabFarm:CreateButton({
   Name = "Начать фарм",
   Callback = function()
   _G.Click = true
   while _G.Click == true do
      game:GetService("ReplicatedStorage").Packages.Knit.Services.ToolService.RE.onClick:FireServer()
      wait(0.000000000000000001)
   end
   end,
})
local Button = TabFarm:CreateButton({
   Name = "Остановить фарм",
   Callback = function()
   _G.Click = false
   end,
})
local Divider = TabFarm:CreateDivider()
local Section = TabFarm:CreateSection("Автоотжимания")
local Button = TabFarm:CreateButton({
   Name = "Начать фарм",
   Callback = function()
   _G.Pushup = true
   while _G.Pushup == true do
      game:GetService("ReplicatedStorage").Packages.Knit.Services.MoggingService.RE.onPushupBarComplete:FireServer()
      wait(0.000000000000000001)
   end
   end,
})
local Button = TabFarm:CreateButton({
   Name = "Остановить фарм",
   Callback = function()
   _G.Pushup = false
   end,
})
local Divider = TabFarm:CreateDivider()
local Section = TabFarm:CreateSection("Автомьюнинг")
local Button = TabFarm:CreateButton({
   Name = "Начать фарм",
   Callback = function()
   _G.Mew = true
   while _G.Mew == true do
      game:GetService("ReplicatedStorage").Packages.Knit.Services.ToolService.RE.MewRequest:FireServer()
      wait(0.000000000000000001)
   end
   end,
})
local Button = TabFarm:CreateButton({
   Name = "Остановить фарм",
   Callback = function()
   _G.Mew = false
   end,
})
local Divider = TabFarm:CreateDivider()
local Section = TabFarm:CreateSection("Автобитва")
local Label = TabFarm:CreateLabel("Начните битву, только потом, жмите начать")
local Button = TabFarm:CreateButton({
   Name = "Начать автобитву",
   Callback = function()
   _G.Battle = true
   while _G.Battle == true do
      game:GetService("ReplicatedStorage").Packages.Knit.Services.MoggingService.RE.onClickRequest:FireServer()
      wait(0.000000000000000001)
   end
   end,
})
local Button = TabFarm:CreateButton({
   Name = "Остановить автобитву",
   Callback = function()
   _G.Battle = false
   end,
})
